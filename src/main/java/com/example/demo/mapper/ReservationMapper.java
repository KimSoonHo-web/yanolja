package com.example.demo.mapper;


import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.KakaoPayReadyVo;
import com.example.demo.vo.UserInFo;

@Mapper
public interface ReservationMapper {

	// 유저 정보 조회
	UserInFo userInfo(Integer userNo);
	
	// 예약정보 저장
	void insertReservation(KakaoPayReadyVo vo);
	
	// 객실 수량 감소
	void decreaseRoomCount(int roomNo, String formattedCheckInDate, String formattedCheckOutDate);

}
