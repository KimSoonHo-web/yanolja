package com.example.demo.controller;

import java.util.Properties;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.JoinService;
import com.example.demo.vo.UserVo;

import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.AddressException;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

@Controller
public class JoinControlller {

	
	@Autowired
	JoinService joinService;
	
	// 회원가입

		@GetMapping("join1.do")
		public ModelAndView newjoin() {

			ModelAndView mv = new ModelAndView();

			mv.setViewName("/member/join/join1");
			return mv;

		}
	// --------------------------------------------------------------

		// 아이디 중복체크
		@RequestMapping("/checkId.do")
		@ResponseBody // ajax 값을 바로jsp 로 보내기위해 사용
		public String checkId(@RequestParam("userEmail") String userEmail) {
			String result = "N";

			int flag = joinService.checkId(userEmail);

			if (flag == 1)
				result = "Y";
			// 아이디가 있을시 Y 없을시 N 으로jsp view 로 보냄
			System.out.println("아이디 중복값 : " + flag);
			return result;
		}
	// --------------------------------------------------------------

		// 메일 인증
		@RequestMapping("/sendMail.dox")
		@ResponseBody
		public String mailCheck(String userEmail) {

			// 랜덤숫자 생성
			int ran = ThreadLocalRandom.current().nextInt(100000, 1000000);
			System.out.println("input 이메일 -----> " + userEmail);
			System.out.println("난수 6자리 -----> " + ran);

			System.out.println("입력한 이메일 : " + userEmail);
			// 네이버
			String username = "rlatnsgh25@naver.com";
			String password = "dw50214263!";

			// 프로퍼티 설정
			Properties prop = new Properties();

			// 네이버
			prop.put("mail.smtp.host", "smtp.naver.com"); // 이메일 발송을 처리해줄 SMTP 서버
			prop.put("mail.smtp.port", "587"); // SMTP 서버와 통신하는 포트 (TLS 통신을 할 포트)
			prop.put("mail.smtp.auth", "true"); // 사용자 인증 사용여부
			prop.put("mail.smtp.starttls.enable", "true"); // TLS 라는 보안인증 활성화(SSL)

			// 세션 생성
			Session sec = Session.getInstance(prop, new jakarta.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					// 발신자 아이디 패스워드 확인
					return new PasswordAuthentication(username, password);
				}
			});

			// 메세지 생성
			try {
				MimeMessage message = new MimeMessage(sec);
				message.setFrom(new InternetAddress(username));

				// 수신자메일주소
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));

				// Subject
				message.setSubject("회원가입을 위한 인증번호 입니다."); // 메일 제목을 입력

				// Text
				message.setText("인증번호: " + ran); // 메일 내용을 입력

				// send the message
				Transport.send(message); // 전송
				System.out.println("전송된 이메일 번호 : " + ran);

			} catch (AddressException e) {
				e.printStackTrace();

			} catch (MessagingException e) {
				e.printStackTrace();
			}

			return String.valueOf(ran);

		}
	// --------------------------------------------------------------

		// 회원가입 페이지 2 비밀번호
		@RequestMapping("/join2.do")
		public ModelAndView join2(String userEmail) {
			System.out.println("회원가입 2 : ");
			System.out.println("Entered email2: " + userEmail);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/member/join/join2");
			mv.addObject("userEmail", userEmail);

			return mv;
		}

	// --------------------------------------------------------------
		// 회원가입 페이지 3
		@GetMapping("/join3.do")
		public ModelAndView join3(String userPw, String userEmail) {
			System.out.println("회원가입 3 : ");
			System.out.println("입력한 비밀번호 : " + userPw);
			System.out.println("입력한 이메일 : " + userEmail);

			ModelAndView mv = new ModelAndView();

			mv.addObject("userEmail", userEmail);
			mv.addObject("userPw", userPw);

			mv.setViewName("/member/join/join3");

			return mv;
		}
	// --------------------------------------------------------------

		// 휴대폰 인증
		@GetMapping("/sendSMS.dox")
		@ResponseBody
		public String sendSMS(String phoneNo) {

			System.out.println("핸드폰 번호 : " + phoneNo);

			Random rand = new Random();
			String numStr = "";
			for (int i = 0; i < 4; i++) {
				String ran = Integer.toString(rand.nextInt(10));
				numStr += ran;
			}

			System.out.println("수신자 번호 : " + phoneNo);
			System.out.println("인증번호 : " + numStr);
			joinService.certifiedPhoneNumber(phoneNo, numStr);
			return numStr;
		}
	// --------------------------------------------------------------

		// 회원가입 실행
		@PostMapping("/join.dex")
		public ModelAndView join(UserVo userVo) {

			System.out.println("JoinPost 호출");

			String userPw = userVo.getUserPw();
			String userEmail = userVo.getUserEmail();
			String phoneNo = userVo.getPhoneNo();

			System.out.println("Entered password: " + userPw);
			System.out.println("Entered email: " + userEmail);
			System.out.println("Entered mobile phone number: " + phoneNo);

			// 객체생성
			ModelAndView mv = new ModelAndView();

			joinService.join(userVo);

			// 페이지 이동
			mv.setViewName("redirect:/login.do");

			return mv;
		}
}
