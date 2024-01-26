package com.example.demo.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.LoginService;
import com.example.demo.vo.UserVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;
	@Autowired
	HttpSession session;
	@Autowired
	PasswordEncoder passwordEncoder;

	// 로그인 폼
	@GetMapping("/login.do")
	public ModelAndView loginForm() {

		// 객체생성
		ModelAndView mv = new ModelAndView();

		System.out.println("로그인폼 화면");

		// 페이지 이동
		mv.setViewName("/member/login/login");
		return mv;
	}
	
	
	// 로그인 실행
	@PostMapping("/login.dox")
	public ResponseEntity<Map<String, Object>> login(@RequestBody UserVo userVo, HttpServletRequest request) {
		Map<String, Object> response = new HashMap<>();
		session = request.getSession(true);
		String dbPw = loginService.login(userVo.getUserEmail());
		String inputPw = userVo.getUserPw();

		if (passwordEncoder.matches(inputPw, dbPw)) {
			UserVo info = loginService.userInfo(userVo.getUserEmail());
			System.out.println("로그인 정보: " + info);

			session.setAttribute("UserEmailSession", info.getUserEmail());
			//System.out.println("세션 이메일 값: " + info.getUserEmail() );
			session.setAttribute("UserNoSession", info.getUserNo());
			session.setAttribute("UserImageSession", info.getUserImage());
			session.setAttribute("UserStatusSession", info.getUserAuth());
			session.setAttribute("UserNameSession", info.getUserName());
			session.setAttribute("UserPwSession", info.getUserPw());
			session.setAttribute("PhoneNoSession", info.getPhoneNo());
			response.put("redirectUrl", "/mypage.do"); // 로그인 성공 시 My Page로 리다이렉트
		} else {
			response.put("errorMessage", "입력한 회원 정보를 다시 확인해주세요.");
		}

		return ResponseEntity.ok(response);
	}
	
	//소셜로그인
		@GetMapping("/socialLogin.do")
		public String socialLogin() throws Exception {
			System.out.println("소셜로그인 호출!!!!");

			return "/member/login/socialLogin";
		}
		
		 @PostMapping("/login/kakao")
		    public ResponseEntity<String> loginWithKakao(@RequestBody Map<String, Object> request) {
		        // Kakao API로부터 받은 사용자 정보
		        String email = (String) request.get("email");
		        String name = (String) request.get("nickname");
		        
		        
		        // DB에서 사용자를 검색합니다.
		        UserVo userVo = loginService.findUserByEmail(email);
		        if (userVo == null) {
		            // 사용자가 DB에 없으면, 새 사용자를 생성하여 DB에 저장합니다.
		            userVo = new UserVo();
		            userVo.setUserEmail(email);
		            userVo.setUserName(name);
		            loginService.insertUser(userVo);
		        }
		        System.out.println("카카오 로그인 정보 : " +  userVo);
		        // 로그인 처리 (세션에 사용자 정보 저장 등)
		        // ...

		        return ResponseEntity.ok("로그인에 성공했습니다.");
		    }
}
