package com.example.demo.controller;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.example.demo.model.MainService;
import com.example.demo.vo.AccommodationInfoVo;
import com.example.demo.vo.AccommodationVo;
import com.example.demo.vo.LocalHotelVo;
import com.example.demo.vo.LocalVo;
import com.example.demo.vo.ReviewVo;
import com.example.demo.vo.RoomVo;
import com.example.demo.vo.ThemeVo;
import com.example.demo.vo.WishListVo;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {

	@Autowired
	MainService mainService;
	@Autowired
	HttpSession session;

//	---------------------------------------------------------------------------------------------
	// 메인 페이지
	@RequestMapping("/yanolja")
	public String mainForm() {
		System.out.println();
		return "/main/yanolja";
	}

//	---------------------------------------------------------------------------------------------

	@GetMapping("/hotel.do")
	public String hotelForm(@RequestParam int themeId,
	        @SessionAttribute(name = "UserNoSession", required = false) Integer userNo, Model model) {
	    
	    // 테마 정보 가져오기
	    ThemeVo themeVo = mainService.themeSelected(themeId);
	    model.addAttribute("themeVo", themeVo);

	    // 사용자가 로그인하지 않았을 경우 userNo는 null일 것입니다.
	    // 최근 본 숙박 시설이나 인기 숙박 시설 등 사용자 기반 정보를 가져오는 로직은 로그인 여부를 체크 후 실행합니다.
	    if (userNo != null) {
	        List<AccommodationVo> recentlyViewedAccommodations = mainService.getRecentlyViewedForUser(userNo);
	        // 최근 본 숙박 시설 리스트를 모델에 추가
	        model.addAttribute("recentlyViewed", recentlyViewedAccommodations	);
	        
	        // 내가 선택한 지역 정보 가져오기
	        List<LocalVo> localselected = mainService.localselected(userNo);
	        model.addAttribute("localselected", localselected);
	    } else {
	        model.addAttribute("recentlyViewed", new ArrayList<>());
	        model.addAttribute("localselected", new ArrayList<>());
	    }

	    // 인기 숙박 시설 정보 가져오기
	    List<AccommodationVo> topPopularAccommodations = mainService.getTopRatedAccommodations();
	    model.addAttribute("topPopular", topPopularAccommodations);

	    // 테마 ID를 모델에 추가
	    model.addAttribute("themeId", themeId);

	    // 사용자 번호를 모델에 추가(로그인하지 않았을 경우 null로 설정될 수 있음)
	    model.addAttribute("userNo", userNo);

	    return "/main/theme_home/hotel";
	}

	
	// 내가 조회한 지역 삭제
	@PostMapping("/deleteRegion.do")
	@ResponseBody
	public void deleteSelectedRegion(@RequestParam("userNo") int userNo,
			@RequestParam("regionName") String regionName) {
		mainService.deleteSelectedRegion(userNo, regionName);
	}
	
	// 내가 찜한 목록
	@GetMapping("/wishlist.do")
	public String wishListForm(@SessionAttribute(name = "UserNoSession", required = false) Integer userNo, Model model ) {
		
		if (userNo == null ) {
			
			return "redirect:login.do";
		}
		
		
		List<WishListVo> wishList = mainService.wishListSelected(userNo);
		
		System.out.println("wishList : " + wishList);
		
		
		
		model.addAttribute("wishList" , wishList);
		
		return "/main/theme_home/wishList";
			
	}
	
//	---------------------------------------------------------------------------------------------

	// 지역별 숙소 목록
	@GetMapping("/localHotel.do")
	public String getLocalHotel(@SessionAttribute(name = "UserNoSession", required = false) Integer userNo,
			@RequestParam String entireRegion, Model model) {
		System.out.println("선택 지역 : " + entireRegion);
		if (userNo != null) {
			mainService.recordRegionSelection(userNo, entireRegion);
		}

		// 지역별 숙소 리스트 불오기
		List<LocalHotelVo> localhotelList = mainService.LocalHotelSearch(entireRegion);
		System.out.println("localhotelList : " + localhotelList);

		// 지역별 숙소 리스트 모델에 저장
		model.addAttribute("localhotelList", localhotelList);
		// 선택한 지역
		model.addAttribute("entireRegion", entireRegion);

		return "/main/sub_home/local_hotel";
	}

//	---------------------------------------------------------------------------------------------
//	// 달력 필터
//	@GetMapping("/calendar.do")
//	public String calendarForm(String checkIn, String checkOut, Model model) {
//
//		System.out.println("체크인  : " + checkIn);
//		System.out.println("체크 아웃 : " + checkOut);
//		session.setAttribute("checkIn", checkIn);
//		session.setAttribute("checkOut", checkOut);
//		model.addAttribute("checkIn", checkIn);
//		model.addAttribute("checkOut", checkOut);
//		System.out.println("세션에 저장된 checkIn 값 : " + session.getAttribute("checkIn"));
//		System.out.println("세션에 저장된 checkOut 값 : " + session.getAttribute("checkOut"));
//
//		return "/main/sub_home/local_calendar";
//
//	 }
//
//	// 인원수 필터
//	@GetMapping("/people.do")
//	public String peopleNo(String adultCount, String childCount, Model model) {
//		session.setAttribute("adultCount", adultCount);
//		session.setAttribute("childCount", childCount);
//		model.addAttribute("adultCount", adultCount);
//		model.addAttribute("childCount", childCount);
//
//		System.out.println("세션에 저장된 어른 수 :  " + session.getAttribute("adultCount"));
//		System.out.println("세션에 저장된 아이 수 :  " + session.getAttribute("childCount"));
//
//		return "/main/sub_home/local_people_no";
//	}
	// 호텔 상세
	@GetMapping("/hotelDetail.do")
	public String hotelDetailForm(@RequestParam("hotelid") String hotelId,
			@RequestParam(value = "adultCount", required = false) Integer adultCount,
			@RequestParam(value = "childCount", required = false) Integer childCount,
			@RequestParam(value = "totalPeople", required = false, defaultValue = "0") int totalPeople,
			@RequestParam(value = "checkInDay", required = false) String checkInDay,
			@RequestParam(value = "checkOutDay", required = false) String checkOutDay,
			@RequestParam(value = "totalDays", required = false) Integer totalDays,
			@RequestParam(value = "selectedRoom", defaultValue = "객실 전체") String selectedRoomName,
			@RequestParam(required = false) String checkIn, @RequestParam(required = false) String checkOut,
			@SessionAttribute(name = "UserNoSession", required = false) Integer userNo, Model model) {

		System.out.println("totalDays : " + totalDays);
		// 모델에 totalDays 추가
		model.addAttribute("totalDays", totalDays);

		// 사용자가 체크인/체크아웃 날짜를 제공한 경우 이 값을 세션에 저장하는 로직을 추가합니다.
		if (checkIn != null && checkOut != null) {
			// 사용자가 제공한 날짜를 세션에 저장합니다.
			session.setAttribute("checkIn", checkIn);
			session.setAttribute("checkOut", checkOut);
		} else if (session.getAttribute("checkIn") != null && session.getAttribute("checkOut") != null) {
			// 세션에 저장된 값이 있을 경우 해당 값을 사용합니다.
			checkIn = (String) session.getAttribute("checkIn");
			checkOut = (String) session.getAttribute("checkOut");
		} else {
			// 세션에도 없고 사용자가 제공하지도 않았을 경우 오늘과 내일 날짜를 기본 값으로 사용합니다.
			LocalDate today = LocalDate.now(); // 오늘의 날짜를 얻습니다.
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd"); // 날짜 포맷 지정

			checkIn = today.format(formatter); // 체크인을 오늘 날짜로 설정
			checkOut = today.plusDays(1).format(formatter); // 체크아웃을 다음 날로 설정

			DayOfWeek checkInDayOfWeek = today.getDayOfWeek();
			DayOfWeek checkOutDayOfWeek = today.plusDays(1).getDayOfWeek();

			String[] dayNames = { "월", "화", "수", "목", "금", "토", "일" };

			checkInDay = dayNames[checkInDayOfWeek.getValue() - 1];
			checkOutDay = dayNames[checkOutDayOfWeek.getValue() - 1];

			// 세션에 기본 날짜 저장
			session.setAttribute("checkIn", checkIn);
			session.setAttribute("checkOut", checkOut);
			session.setAttribute("checkInDay", checkInDay);
			session.setAttribute("checkOutDay", checkOutDay);
		}

		// 모델에 날짜와 요일 추가
		model.addAttribute("checkInDay", checkInDay);
		model.addAttribute("checkOutDay", checkOutDay);
		model.addAttribute("checkIn", checkIn);
		model.addAttribute("checkOut", checkOut);

		// 이후의 코드에서 세션에 저장된 날짜 또는 새로 설정된 기본 날짜를 사용합니다.

		session.setAttribute("hotelId", hotelId);

		System.out.println("체크인 : " + checkIn);
		System.out.println("체크아웃 : " + checkOut);

		// 선택된 객실명을 모델에 추가
		model.addAttribute("selectedRoomName", selectedRoomName);
		System.out.println("선택된 객실 타입 : " + selectedRoomName);

		// 특정 호텔의 상세 정보를 조회
		AccommodationVo hotelDetail = mainService.getHotelDetail(hotelId);
		// System.out.println("조회된 숙소 정보 : " + hotelDetail);

		// 선택된 방 타입에 따른 리뷰를 조회
		List<ReviewVo> reviews = mainService.getReviewsByAccommodationNoAndRoomName(Integer.parseInt(hotelId),
				selectedRoomName);

		// 리뷰에서 객실 이름만을 추출하여 중복 제거
		List<String> roomNames = reviews.stream().map(ReviewVo::getRoomName).distinct().collect(Collectors.toList());
		Map<String, List<String>> roomNameMap = new HashMap<>();
		roomNameMap.put("roomname", roomNames);

		// 특정 호텔에 대한 정보를 중복 없이 리스트로 받아옴
		List<AccommodationInfoVo> hotelInfoList = mainService.getHotelInfoById(hotelId);

		// 카테고리별 컨텐트를 저장할 맵 생성
		Map<String, String> categoryContentMap = new HashMap<>();

		// 각 숙박 시설 정보를 순회하면서 카테고리별 컨텐트를 맵에 저장
		for (AccommodationInfoVo info : hotelInfoList) {
			String category = info.getCategory();
			String content = info.getContent();

			// 해당 카테고리의 컨텐트가 맵에 이미 있으면 건너뜀
			if (!categoryContentMap.containsKey(category)) {
				categoryContentMap.put(category, content);
			}
		}

		// 세션에서 인원 수 가져오기
		Integer sessionAdultCount = (Integer) session.getAttribute("adultCount");
		Integer sessionChildCount = (Integer) session.getAttribute("childCount");

		// 요청 매개변수가 null이 아닐 때 세션 값을 업데이트
		if (adultCount != null) {
			session.setAttribute("adultCount", adultCount);
		} else if (sessionAdultCount != null) {
			// 요청 매개변수가 null이고 세션 값이 존재할 때 세션에서 값을 사용
			adultCount = sessionAdultCount;
		} else {
			// 세션 값도 null일 때 기본값 설정
			adultCount = 2;
		}

		// 위와 동일한 로직을 아동 수에 대해서도 적용
		if (childCount != null) {
			session.setAttribute("childCount", childCount);
		} else if (sessionChildCount != null) {
			childCount = sessionChildCount;
		} else {
			childCount = 0;
		}

		// 총 인원 계산
		totalPeople = (adultCount + childCount);
		session.setAttribute("totalPeople", totalPeople); // 세션에 총 인원 수 업데이트
		System.out.println("totalPeople : " + totalPeople);

		// totalDays-> o /totalDay->x ,totalDays-> o /totalDay->o ,totalDays-> x
		// /totalDay->x
		Integer totalDay = (Integer) session.getAttribute("totalDays");

		if (totalDays != null) {
			session.setAttribute("totalDays", totalDays);
		} else {
			totalDays = 1;
		}
		// 요청 매개변수로부터 totalDays 값을 얻지 못했을 경우 세션에서 이 값을 시도합니다.
		if (totalDay != null) {
			totalDays = totalDay;
			System.out.println("totalDays : " + totalDays);
		}

		// 예약 가능한 객실 목록
		List<RoomVo> availableRooms = mainService.getAvailableRooms(totalDays, hotelId, checkIn, checkOut, totalPeople);
		System.out.println("성인 수 : " + adultCount + "," + "유/아동 수 : " + childCount + "," + "총 인원 수 : " + totalPeople);

		session.setAttribute("adultCount", adultCount);
		session.setAttribute("childCount", childCount);
		session.setAttribute("totalPeople", totalPeople);

		// 결과들을 모델에 추가
		// 지도
		model.addAttribute("categoryContentMap", categoryContentMap);
		// 리뷰
		model.addAttribute("hotelDetail", hotelDetail);
		model.addAttribute("reviews", reviews);
		model.addAttribute("totalDays", totalDays);
		// 객실 이름 모달창
		model.addAttribute("roomNameMap", roomNameMap);
		// 날짜
		model.addAttribute("checkIn", checkIn);
		model.addAttribute("checkOut", checkOut);
		// 방 목록 보기
		model.addAttribute("adultCount", adultCount);
		model.addAttribute("childCount", childCount);
		model.addAttribute("totalPeople", totalPeople);

		model.addAttribute("availableRooms", availableRooms);
		System.out.println("예약 가능한 객실 목록 : availableRooms : " + availableRooms);

		model.addAttribute("userNo", userNo);
		System.out.println("유저 번호 : " + userNo);
		// System.out.println("조회된 리뷰 리스트 : " + reviews);

		// 사용자가 로그인했을 경우, 최근 조회한 호텔로 기록 추가
		if (userNo != null) {
			mainService.addRecentlyViewed(userNo, Integer.parseInt(hotelId));
		}

		// 상세 페이지 뷰 리턴 -> 호텔 디테일 뷰 반환
		return "/main/sub_home/hotel_detail";
	}

//	// 좋아요 상태 확인
	@GetMapping("/checkLikeStatus")
	@ResponseBody
	public boolean checkLikeStatus(@RequestParam int userNo, @RequestParam int accommodationNo) {
		System.out.println("userNo : " + userNo);
		System.out.println("accommodationNo : " + accommodationNo);
		Integer existingLikeId = mainService.findLikeIdByUserIdAndAccommodationId(userNo, accommodationNo);
		return existingLikeId != null && existingLikeId > 0;

	}

	// 좋아요 체크
	@PostMapping("/toggleLike")
	@ResponseBody
	public boolean toggleLikeAccommodation(@RequestParam int userNo, @RequestParam int accommodationNo) {
		Integer existingLikeId = mainService.findLikeIdByUserIdAndAccommodationId(userNo, accommodationNo);

		System.out.println("existingLikeId : " + existingLikeId);
		
		if (existingLikeId != null) {
			mainService.deleteLikeById(existingLikeId);
			System.out.println("취소");
			return false; // 좋아요 취소
		} else {
			mainService.insertLike(userNo, accommodationNo);
			System.out.println("추가");
			return true; // 좋아요 추가
		}
	}

	// 리뷰 정책
	@GetMapping("reviewPolicy.do")
	public String reviewPolicyForm() {
		System.out.println("호출");

		return "/main/sub_home/review_policy";
	}

	// 객실 상세
	@GetMapping("roomDetail.do")
	public String roomDetail(@SessionAttribute(name = "UserNoSession", required = false) Integer userNo,
			@RequestParam("roomNo") String roomNo, @RequestParam("hotelId") String hotelId, Model model) {

		System.out.println("유저 번호 : " + userNo);
		System.out.println("숙소 번호 : " + roomNo);
		String checkIn = (String) session.getAttribute("checkIn");
		String checkOut = (String) session.getAttribute("checkOut");
		String checkInDay = (String) session.getAttribute("checkInDay");
		String checkOutDay = (String) session.getAttribute("checkOutDay");
		Integer adultCount = (Integer) session.getAttribute("adultCount");
		Integer childCount = (Integer) session.getAttribute("childCount");
		Integer totalPeople = (Integer) session.getAttribute("totalPeople");
		Integer totalDays = (Integer) session.getAttribute("totalDays");

		// 요청 매개변수로부터 totalDays 값을 얻지 못했을 경우 세션에서 이 값을 시도합니다.
		if (totalDays == null) {
			totalDays = 1;
		}

		System.out.println("세션 체크인 일: " + checkInDay);
		System.out.println("세션 체크아웃 일: " + checkOutDay);
		System.out.println("세션 체크인아웃 일 박: " + totalDays);
		// 룸 이미지 리스트 가져오기
		List<String> roomImages = mainService.getRoomImages(roomNo, hotelId);
		System.out.println("조회한 객실 이미지 : " + roomImages);
		System.out.println("roomNo : " + roomNo);
		System.out.println("hotelId : " + hotelId);
		// 룸 상세
		RoomVo roomDetails = mainService.getRoomDetails(totalDays, roomNo, hotelId, totalPeople, checkIn, checkOut);
		System.out.println("roomDetails :" + roomDetails);
		System.out.println("세션 체크인: " + checkIn);
		System.out.println("세션 체크아웃: " + checkOut);
		System.out.println("세션 총 일수: " + totalDays);
		System.out.println("세션 성인 수: " + adultCount);
		System.out.println("세션 아동 수: " + childCount);
		System.out.println("세션 총 인원 수: " + totalPeople);
		System.out.println("세션 호텔 아이디: " + hotelId);
		System.out.println("조회된 객실 디테일 :" + roomDetails);
		model.addAttribute("userNo", userNo);
		model.addAttribute("roomNo", roomNo);
		model.addAttribute("checkInDay", checkInDay);
		model.addAttribute("checkOutDay", checkOutDay);
		model.addAttribute("checkIn", checkIn);
		model.addAttribute("checkOut", checkOut);
		model.addAttribute("totalDays", totalDays);
		model.addAttribute("adultCount", adultCount);
		model.addAttribute("childCount", childCount);
		model.addAttribute("totalPeople", totalPeople);
		model.addAttribute("hotelId", hotelId);
		model.addAttribute("roomImages", roomImages);

		// roomDetails를 세션에 저장
		session.setAttribute("roomDetails", roomDetails);

		System.out.println("호출");
		System.out.println("Room No: " + roomNo);
		return "/main/sub_home/hotel_room_detail";
	}

	/*
	 * // 모달 테스트용
	 * 
	 * @GetMapping("/people.do2") public String calenarForm() {
	 * System.out.println("호출");
	 * 
	 * return "/main/sub_home/number_of_people_modal"; }
	 */

}
