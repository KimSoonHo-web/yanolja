package com.example.demo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.UserService;
import com.example.demo.vo.UserVo;

import org.springframework.ui.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@Autowired
	HttpSession session;

	@Autowired
	PasswordEncoder passwordEncoder;

	@Autowired
	JavaMailSender javaMailSender;

	// 비밀번호 찾기
	@GetMapping("/find.do")
	public String findPwGET() throws Exception {
		System.out.println("비밀번호 찾기 호출!!!!");

		return "/member/find/findPw";
	}

	// 비밀번호 링크 보내기
	@RequestMapping("/sendResetLink.do")
	@ResponseBody
	public String sendResetLink(@RequestParam("userEmail") String userEmail) {
		String result = "N";

		// DB에서 이메일 확인(이미 확인한 것으로 가정)
        String resetLink = "http://localhost:8000/newPw.do?userEmail=" + userEmail;
		userService.sendPasswordResetEmail(userEmail, resetLink);

		result = "Y";
		return result;
	}
	// 새 비밀번호 입력
	@GetMapping("/newPw.do")
	public String newPw(@RequestParam("userEmail") String userEmail, Model model) {
	    System.out.println("비밀번호 찾기 호출!!!!");
	    System.out.println("User email: " + userEmail);
	    
	    model.addAttribute("userEmail", userEmail); // userEmail 값을 뷰에 전달합니다.

	    
	    return "/member/find/newPw";
	}

	// 비밀번호 변경
	@PostMapping("/updatePw")
	public ResponseEntity<?> updatePassword(@RequestBody Map<String, String> request) {
	    try {
	        String newPassword = request.get("newPassword");
	        String userEmail = request.get("userEmail");
	        
	        userService.changePassword(userEmail, newPassword);
	        return ResponseEntity.ok("비밀번호가 성공적으로 변경되었습니다.");
	    } catch (Exception e) {
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("비밀번호 변경에 실패했습니다. 다시 시도해주세요.");
	    }
	}

	// 마이페이지
	@RequestMapping("/mypage.do")
	public ModelAndView myPage() {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("/member/mypage/mypage");

		return mv;
	}

	// 내정보 관리
	@GetMapping("/userDet.do")
	public ModelAndView userDet() {

		System.out.println("회원상세 페이지 호출 !!!!!!!");

		String loginId = (String) session.getAttribute("UserEmailSession");
		System.out.println("로그인한 회원 아이디 호출 : " + loginId);

		UserVo userInfo = userService.Info(loginId);
		System.out.println("로그인한 회원 정보 : " + userInfo);

		// 사용자 정보에서 휴대폰 번호를 가져와 세션에 저장합니다.
		String phoneNo = userInfo.getPhoneNo();
		session.setAttribute("PhoneNoSession", phoneNo);
		ModelAndView mv = new ModelAndView();

		mv.setViewName("/member/detail/userDet");
		mv.addObject("userInfo", userInfo);

		return mv;
	}

	// 회원정보 수정
	@PostMapping("/updateUser")
	public ResponseEntity<?> updateUserName(@RequestBody Map<String, String> payload, HttpServletRequest request) {
		// 세션 가져오기
		session = request.getSession();
		String userNo = (String) session.getAttribute("UserNoSession");

		// 사용자가 로그인하지 않은 경우
		if (userNo == null) {
			return new ResponseEntity<>("User is not logged in", HttpStatus.FORBIDDEN);
		}

		try {
			// payload에서 필요한 데이터 추출
			String newUserName = payload.get("userName");
			String newPhoneNumber = payload.get("newPhonNo"); // 휴대폰 번호 추가
			String newPassword = payload.get("newPassword");
			String userPw = payload.get("userPw");
			String sessionPw = (String) session.getAttribute("UserPwSession");

			// 입력한 현재 비밀번호가 세션에 저장된 비밀번호와 일치하지 않는 경우
			if (userPw != null && !passwordEncoder.matches(userPw, sessionPw)) {
				return new ResponseEntity<>("현재 비밀번호가 일치하지 않습니다.", HttpStatus.BAD_REQUEST);
			}

			// 새 비밀번호 처리
			if (newPassword != null) {
				if (newPassword.equals(userPw)) {
					return new ResponseEntity<>("새 비밀번호가 기존 비밀번호와 같습니다.", HttpStatus.BAD_REQUEST);
				}

				if (newPassword.trim().isEmpty()) {
					newPassword = sessionPw; // 새 비밀번호가 제공되지 않은 경우 현재 비밀번호를 유지
				} else {
					newPassword = passwordEncoder.encode(newPassword); // 비밀번호를 암호화
				}
			} else {
				newPassword = sessionPw;
			}

			// 사용자 정보 업데이트
			UserVo userVo = new UserVo();
			userVo.setUserNo(userNo);

			// 사용자 이름 업데이트
			if (newUserName != null && !newUserName.trim().isEmpty()) {
				userVo.setUserName(newUserName); // 사용자 이름이 비어있지 않은 경우에만 업데이트
			}
			userVo.setUserPw(newPassword); // 암호화된 비밀번호를 UserVo에 설정

			// 사용자 이름 세션 업데이트
			if (newUserName != null && !newUserName.trim().isEmpty()) {
				session.setAttribute("UserNameSession", newUserName); // 사용자 이름이 비어있지 않은 경우에만 세션 업데이트
			}

			// 휴대폰 번호 세션 업데이트
			if (newPhoneNumber != null && !newPhoneNumber.trim().isEmpty()) {
				session.setAttribute("PhoneNoSession", newPhoneNumber);
				userVo.setPhoneNo(newPhoneNumber); // 휴대폰 번호를 UserVo에 설정
			}

			// 사용자 정보 업데이트
			userService.updateUser(userVo);

			// 비밀번호 세션 업데이트
			session.setAttribute("UserPwSession", newPassword);

			return new ResponseEntity<>(true, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>("Server error occurred", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	// 휴대폰 번호 비교
	@GetMapping("/comparePhoneNo")
	public ResponseEntity<String> comparePhoneNo(@RequestParam String newPhoneNo, HttpSession session) {
		String storedPhoneNo = (String) session.getAttribute("PhoneNoSession");

		if (newPhoneNo.equals(storedPhoneNo)) {
			return ResponseEntity.ok("현재의 핸드폰번호와 동일합니다.");
		}
		return ResponseEntity.ok("");
	}

	// 회원 삭제 뷰
	@GetMapping("/userDel.do")
	public ModelAndView userDelView() {

		// 객체 생성
		ModelAndView mv = new ModelAndView();

		mv.setViewName("/member/delete/delete");
		return mv;
	}

	// 회원 삭제
	@PostMapping("/userDel.dox")
	public ResponseEntity<String> userDel(UserVo userVo, HttpServletRequest request) {
		System.out.println("UserVo: " + userVo);

		HttpSession session = request.getSession();
		String userNo = (String) session.getAttribute("UserNoSession");
		System.out.println("가져온 유저 번호 : " + userNo);

		String userPw = (String) session.getAttribute("UserPwSession");
		System.out.println("가져온 비밀번호 : " + userPw);

		String inputPw = userVo.getUserPw();
		System.out.println("입력한 비밀번호 : " + inputPw);

		if (passwordEncoder.matches(inputPw, userPw)) {
			System.out.println("일치");
			userService.deleteUser(userNo);
			System.out.println("User No: " + userNo);
			session.invalidate();
			return ResponseEntity.ok("true");
		} else {
			System.out.println("불일치");
			return ResponseEntity.ok("false");
		}
	}

	// 설정
	@GetMapping("/settings.do")
	public ModelAndView setting() {

		System.out.println("설정 페이지 호출 !!!!");
		ModelAndView mv = new ModelAndView();

		mv.setViewName("/member/mypage/settings");

		return mv;
	}

	// 로그아웃
	@GetMapping("/logout")

	public ModelAndView logout() throws Exception {

		// 객체생성
		ModelAndView mv = new ModelAndView();

		// 세션종료
		session.invalidate();

		// 페이지 이동
		mv.setViewName("/member/mypage/mypage");
		return mv;
	}

	
	}
