package com.example.demo.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.mapper.ReservationMapper;
import com.example.demo.vo.KakaoPayReadyVo;
import com.example.demo.vo.UserInFo;

import org.springframework.web.client.RestTemplate;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.Map;
import java.util.Random;

import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import com.example.demo.model.ReservationService;

@Service
public class ReservationService {
	@Autowired
	ReservationMapper reservationMapper;
	private static final String KAKAO_PAY_READY_API = "/v1/payment/ready";
	private static final String HOST = "https://kapi.kakao.com";

	// 여기에 카카오 관리자 키를 입력하세요.
	private static final String ADMIN_KEY = "085b69f06c039454d5fd4c71cf76ff20";

	// 유저 정보 조회
	public UserInFo userInfo(Integer userNo) {

		return reservationMapper.userInfo(userNo);
	}

	// 카카오 결제 승인 요청
	public ResponseEntity<?> kakaoPayReady(KakaoPayReadyVo vo) {

		// VO 객체로부터 값 추출
		String price = vo.getPrice();
		String phoneNo = vo.getPhoneNo();
		String userNo = vo.getUserNo();
		String accommodationNo = vo.getAccommodationNo();
		String roomNo = vo.getRoomNo();

		System.out.println("phoneNo : " + phoneNo);
		System.out.println("userNo : " + userNo);
		System.out.println("accommodationNo : " + accommodationNo);
		System.out.println("roomNo : " + roomNo);
		System.out.println("price : " + price);
		// partner_order_id를 생성하기 위해 userNo, accommodationNo, roomNo, 랜덤 숫자 4자리를 결합
		Random rand = new Random();
		int randomNumber = rand.nextInt(9000) + 1000; // 1000 ~ 9999 사이의 랜덤 숫자
		String partnerOrderId = userNo + accommodationNo + roomNo + randomNumber;
		System.out.println("partnerOrderId : " + partnerOrderId);
		RestTemplate restTemplate = new RestTemplate();
		// 서버로 요청할 Header
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK " + ADMIN_KEY);
		headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");

		if (userNo == null || userNo.trim().isEmpty()) {
			return ResponseEntity.badRequest().body("Error: User number (partner_user_id) cannot be null or empty.");
		}

		// 서버로 요청할 Body
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("cid", "TC0ONETIME");
		params.add("partner_order_id", partnerOrderId);
		params.add("partner_user_id", userNo);
		params.add("item_name", roomNo);
		params.add("quantity", "1");
		params.add("total_amount", price);
		params.add("tax_free_amount", "0");
		params.add("approval_url", "http://localhost:8000/kakaoPaySuccess");
		params.add("cancel_url", "http://localhost:8000/kakaoPayCancel");
		params.add("fail_url", "http://localhost:8000/kakaoPayFail");

		HttpEntity<MultiValueMap<String, String>> entity = new HttpEntity<>(params, headers);

		// 카카오 페이 결제 준비 API 요청
		ResponseEntity<Map> response = restTemplate.postForEntity(HOST + KAKAO_PAY_READY_API, entity, Map.class);

		// 카카오 페이 결제 준비 응답 처리
		if (response.getStatusCode().is2xxSuccessful()) {
			Map<String, Object> responseBody = response.getBody();
			if (responseBody != null && responseBody.containsKey("next_redirect_pc_url")) {
				String redirectUrl = (String) responseBody.get("next_redirect_pc_url");
				// 클라이언트에게 리다이렉트 응답 전달
				HttpHeaders redirectHeaders = new HttpHeaders();
				redirectHeaders.add("Location", redirectUrl);
				return new ResponseEntity<>(redirectHeaders, HttpStatus.SEE_OTHER);
			} else {
				// 필요한 응답 값이 없는 경우 에러 처리
				return ResponseEntity.status(500).body("Error: Invalid response from Kakao Pay API");
			}
		} else {
			// API 요청 실패 처리
			return ResponseEntity.status(response.getStatusCode()).body("Error: Kakao Pay API request failed");
		}

	}
	
	//예약 정보 디비에 저장
	public void createReservation(KakaoPayReadyVo vo) {
        reservationMapper.insertReservation(vo);

		
	}

	// 객실 수량 감소 서비스 메서드
    @Transactional // 객실 수량 감소는 트랜잭션 안에서 수행되어야 합니다.
    public void decreaseRoomCount(int roomNo, String formattedCheckInDate, String formattedCheckOutDate) {
        reservationMapper.decreaseRoomCount(roomNo,formattedCheckInDate,formattedCheckOutDate);
    }
	
	

}
