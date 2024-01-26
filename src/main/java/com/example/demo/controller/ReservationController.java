package com.example.demo.controller;

import java.text.ParseException;

import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.example.demo.model.ReservationService;
import com.example.demo.vo.KakaoPayReadyVo;
import com.example.demo.vo.RoomVo;
import com.example.demo.vo.UserInFo;

import jakarta.servlet.http.HttpSession;

@Controller
public class ReservationController {

	@Autowired
	ReservationService reservationService;

	@Autowired
	HttpSession session;

	@GetMapping("/reservation.do")
	public String reservationForm(@SessionAttribute(name = "UserNoSession", required = false) Integer userNo,
			Model model) {
		String checkIn = (String) session.getAttribute("checkIn");
		String checkOut = (String) session.getAttribute("checkOut");
		String checkInDay = (String) session.getAttribute("checkInDay");
		String checkOutDay = (String) session.getAttribute("checkOutDay");
		Integer totalDays = (Integer) session.getAttribute("totalDays");

		RoomVo roomDetails = (RoomVo) session.getAttribute("roomDetails");

		// 유저 번호로 유저 정보 조회
		UserInFo userInfo = reservationService.userInfo(userNo);
		System.out.println(userInfo);
		System.out.println("세션 체크인: " + checkIn);
		System.out.println("세션 체크아웃: " + checkOut);
		System.out.println("세션 총 일수: " + totalDays);
		System.out.println("체크인 요일: " + checkInDay);
		System.out.println("체크아웃 요일: " + checkOutDay);
		System.out.println("roomDetails : " + roomDetails);
		System.out.println("로그인 된 유져 번호 : " + userNo);

		NumberFormat format = NumberFormat.getInstance();
		String formattedPrice = format.format(roomDetails.getPrice());

		System.out.println(formattedPrice);

		model.addAttribute("formattedPrice", formattedPrice); // 포맷한 값
		model.addAttribute("roomDetails", roomDetails);
		model.addAttribute("userInfo", userInfo);
		model.addAttribute("checkIn", checkIn);
		model.addAttribute("checkOut", checkOut);
		model.addAttribute("totalDays", totalDays);
		model.addAttribute("checkInDay", checkInDay);
		model.addAttribute("roomDetails", roomDetails);

		return "/reservation/reservation_page";
	}

	@PostMapping("/kakaoPay")
	public ResponseEntity<?> kakaoPay(KakaoPayReadyVo vo) {

		// VO 객체를 세션에 저장
		session.setAttribute("kakaoPayReadyVo", vo);

		// 서비스를 호출하여 로직을 처리
		System.out.println("kakaoPayReadyVo 11111 : " + vo);

		//일단 해결 -> 근본적인 원인은 함 찾아보셈
		if (vo.getPhoneNo() != null) {
			// 예약 정보를 데이터베이스에 저장
			reservationService.createReservation(vo);
			System.out.println("vo 있음");
		}

		return reservationService.kakaoPayReady(vo);
	}

	// 결제 성공 페이지
	@GetMapping("/kakaoPaySuccess")
	public String kakaoPaySuccess(@RequestParam("pg_token") String pgToken, Model model, HttpSession session) {
		// 세션에서 필요한 정보를 가져옵니다.
		String checkIn = (String) session.getAttribute("checkIn");
		String checkOut = (String) session.getAttribute("checkOut");
		Integer totalDays = (Integer) session.getAttribute("totalDays");
		KakaoPayReadyVo kakaoPayReadyVo = (KakaoPayReadyVo) session.getAttribute("kakaoPayReadyVo");

		System.out.println("totalDays : " + totalDays);

		// 문자열을 날짜 객체로 파싱하기 위한 날짜 형식을 정의합니다.
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy.MM.dd");
		Date checkInDate = null;
		Date checkOutDate = null;

			try {
			// checkIn과 checkOut 문자열을 Date 객체로 파싱합니다.
			if (checkIn != null) {
				checkInDate = formatter.parse(checkIn);
			}
			if (checkOut != null) {
				checkOutDate = formatter.parse(checkOut);
			}
		} catch (ParseException e) {
			e.printStackTrace(); // 문자열 파싱 실패 시 오류를 로그에 기록합니다.
		}

		// 'yyyy-MM-dd' 형식으로 날짜를 문자열로 변환합니다.
		SimpleDateFormat dbDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedCheckInDate = (checkInDate != null) ? dbDateFormat.format(checkInDate) : null;
		String formattedCheckOutDate = (checkOutDate != null) ? dbDateFormat.format(checkOutDate) : null;

		// 결제가 성공적으로 확인되면, 객실 수량을 줄이는 서비스 메서드를 호출합니다.
		if (pgToken != null && kakaoPayReadyVo != null) {
			try {
				// roomNo을 int로 파싱합니다.
				Integer roomNo = Integer.parseInt(kakaoPayReadyVo.getRoomNo());
				// 예약된 객실 수량을 감소시키는 로직을 실행합니다.
				reservationService.decreaseRoomCount(roomNo, formattedCheckInDate, formattedCheckOutDate);
			} catch (NumberFormatException e) {
				e.printStackTrace(); // 숫자 포맷 오류 시 오류를 로그에 기록합니다.
			}
		}
		
		// 로깅을 위한 정보 출력
		System.out.println("Formatted Check-In Date: " + formattedCheckInDate);
		System.out.println("Formatted Check-Out Date: " + formattedCheckOutDate);
		System.out.println("kakaoPayReadyVo: " + kakaoPayReadyVo);
		System.out.println("Payment is successful.");
		System.out.println("pgToken: " + pgToken);

		// 모델에 결제 성공 정보를 추가합니다.
		model.addAttribute("info", "결제가 성공적으로 처리되었습니다.");
		model.addAttribute("pgToken", pgToken);
		model.addAttribute("kakaoPayInfo", kakaoPayReadyVo);
		model.addAttribute("totalDays", totalDays);

		return "/reservation/kakaoPaySuccess"; // kakaoPaySuccess.html 뷰를 반환합니다.
	}

	// 결제 취소 페이지
	@GetMapping("/kakaoPayCancel")
	public String kakaoPayCancel(Model model) {
		System.out.println("결제가 취소 처리되었습니다.");

		return "/reservation/kakaoPayCancelPage";
	}

}
