package com.example.demo.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.MainMapper;
import com.example.demo.vo.AccommodationInfoVo;
import com.example.demo.vo.AccommodationVo;
import com.example.demo.vo.LocalHotelVo;
import com.example.demo.vo.LocalVo;
import com.example.demo.vo.ReviewVo;
import com.example.demo.vo.RoomVo;
import com.example.demo.vo.ThemeVo;
import com.example.demo.vo.WishListVo;

@Service
public class MainService {

	@Autowired
	MainMapper mainMapper;

	// 테마 조회
	public String getThemeNameById(int themeId) {
		return mainMapper.getThemeNameById(themeId);
	}

	// 최근 본 숙박
	public List<AccommodationVo> getRecentlyViewedForUser(int userNo) {
		return mainMapper.getRecentlyViewedForUser(userNo);
	}

	// 인기 숙박
	public List<AccommodationVo> getTopRatedAccommodations() {
		return mainMapper.getTopRatedAccommodations();
	}

	// 테마별 숙소 조회
//	public List<RecentlyViewedAccommodationVo> getAccommodationsByThemeName(String themeName) {
//	    return mainMapper.getAccommodationsByThemeName(themeName);
//	}

	// 전체지역 조회
//	public List<Map<String, Object>> getLocalHotels(String entireRegion) {
//		return mainMapper.selectAccommodationByRegion(entireRegion);
//	}

	// 숙박 상세
	public AccommodationVo getHotelDetail(String hotelId) {

		return mainMapper.getHotelDetail(hotelId);
	}

	// 최근 본 숙소 업데이트
	public void addRecentlyViewed(Integer userNo, Integer hotelId) {
		Map<String, Object> params = new HashMap<>();
		params.put("userNo", userNo);
		params.put("hotelId", hotelId);

		//System.out.println("조회한 호텔 저장:" + params);

		mainMapper.addRecentlyViewed(params);
	}

	// 후기 리스트
	public List<ReviewVo> getReviewsByAccommodationNoAndRoomName(int accommodationNo, String roomName) {
		
		return mainMapper.getReviewsByAccommodationNoAndRoomName(accommodationNo, roomName);
	}

	// 숙소 안내 정책
	public List<AccommodationInfoVo> getHotelInfoById(String hotelId) {
		return mainMapper.getHotelInfoById(hotelId);
	}

	   // 예약 가능한 객실 목록
    public List<RoomVo> getAvailableRooms(Integer totalDays, String hotelId, String checkIn, String checkOut, int totalPeople) {
    	
        return  mainMapper.selectAvailableRooms(totalDays, hotelId, checkIn, checkOut, totalPeople);
    }
    
    // 사용자가 누른 좋아요 조회
    public Integer findLikeIdByUserIdAndAccommodationId(int userNo, int accommodationNo) {
        return mainMapper.findLikeIdByUserIdAndAccommodationId(userNo, accommodationNo);
    }
    //좋아요 취소 
    public void deleteLikeById(int likeId) {
        mainMapper.deleteLikeById(likeId);
    }
    //좋아요 축가
    public void insertLike(int userNo, int accommodationNo) {
        mainMapper.insertLike(userNo, accommodationNo);
    }
    //객실 상세 조회
    public RoomVo getRoomDetails(Integer totalDays, String roomNo, String hotelId, Integer totalPeople, String checkIn, String checkOut) {
        return mainMapper.getRoomDetails(totalDays,roomNo, hotelId, totalPeople, checkIn, checkOut);
    }

    //객실 이미지 
	public List<String> getRoomImages(String roomNo, String hotelId) {
		System.out.println("?" + roomNo+hotelId);
		return mainMapper.getRoomImages(roomNo,hotelId);
	}

	//지역별 숙소 조회
	public List<LocalHotelVo> LocalHotelSearch(String entireRegion) {
		return mainMapper.LocalHotelSearch(entireRegion) ;
	}
	
	//최근 검색한 지역 정보 저장
	 public void recordRegionSelection(Integer userNo, String regionName) {
	        if (userNo != null) {
	            mainMapper.recordRegionSelection(userNo, regionName);
	        }
	    }
	 
	//최근 검색한 지역 정보 조회
	public List<LocalVo> localselected(Integer userNo) {
		return mainMapper.localselected(userNo);
	}
	
	//최근 검색한 지역 정보 삭제
	public void deleteSelectedRegion(int userNo, String entireRegion) {
		mainMapper.deleteSelectedRegion(userNo,entireRegion);
	}
	
	// 내가 찜한 호텔 리스트
	public List<WishListVo> wishListSelected(Integer userNo) {
		return mainMapper.wishListSelected(userNo);
	}
	
	// 테마 검색
	public ThemeVo themeSelected(int themeId) {
		// TODO Auto-generated method stub
		return mainMapper.themeSelected(themeId);
	}
	
	}

    


