package com.example.demo.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.vo.AccommodationInfoVo;
import com.example.demo.vo.AccommodationVo;
import com.example.demo.vo.LocalHotelVo;
import com.example.demo.vo.LocalVo;
import com.example.demo.vo.ReviewVo;
import com.example.demo.vo.RoomVo;
import com.example.demo.vo.ThemeVo;
import com.example.demo.vo.WishListVo;

@Mapper
public interface MainMapper {

	// 테마 조회
	String getThemeNameById(int themeId);

	// 최근 본 숙소 리스트
	List<AccommodationVo> getRecentlyViewedForUser(int userNo);

	// 인기 숙소 조회
	List<AccommodationVo> getTopRatedAccommodations();

	// 테마별 숙소 조회
	// List<RecentlyViewedAccommodationVo> getAccommodationsByThemeName(String
	// themeName);

	// 최근본 숙소 업데이트
	void addRecentlyViewed(Map<String, Object> params);

	// 전체지역 조회
//	List<Map<String, Object>> selectAccommodationByRegion(String value);

	// 숙소 상세
	AccommodationVo getHotelDetail(String hotelId);

	// 후기 리스트
	List<ReviewVo> getReviewsByAccommodationNoAndRoomName(@Param("accommodationNo") int accommodationNo,
			@Param("roomName") String roomName);

	// 숙소 안내 정책
	List<AccommodationInfoVo> getHotelInfoById(String hotelId);
	
	// 예약 가능한 객실 목록 
    List<RoomVo> selectAvailableRooms(Integer totalDays, String hotelId, String checkIn, String checkOut, int totalPeople);

    /**
     * 사용자 ID와 숙소 ID로 좋아요 ID를 조회합니다.
     *
     * @param userNo 사용자 ID
     * @param accommodationNo 숙소 ID
     * @return 좋아요 ID (존재하지 않으면 null)
     */
    Integer findLikeIdByUserIdAndAccommodationId(int userNo, int accommodationNo);

    /**
     * 주어진 좋아요 ID를 사용하여 좋아요를 삭제합니다.
     *
     * @param likeId 좋아요 ID
     */
    void deleteLikeById(int likeId);

    /**
     * 사용자 ID와 숙소 ID를 사용하여 좋아요를 추가합니다.
     *
     * @param userNo 사용자 ID
     * @param accommodationNo 숙소 ID
     */
    void insertLike(int userNo, int accommodationNo);
    
    RoomVo getRoomDetails( @Param("totalDays") Integer totalDays, @Param("roomNo") String roomNo, 
            @Param("hotelId") String hotelId, 
            @Param("totalPeople") Integer totalPeople, 
            @Param("checkIn") String checkIn, 
            @Param("checkOut") String checkOut);
    
    
    List<String> getRoomImages(String roomNo,  String hotelId);

    
    /**
     * 
     * @param entireRegion 지역 값 보내기 
     * @return 지역으로 조회된 리스트 가져오기
     */
	List<LocalHotelVo> LocalHotelSearch(String entireRegion);
	
	/**
	 *  
	 * @param userNo 유저 번호 값 DB에 저장
	 * @param regionName 선택 지역 DB 에 저장
	 */
	void recordRegionSelection(Integer userNo, String regionName);
	
	/**
	 * 
	 * @param userNo 유저 번호로 내가 죄회한 지역 검색
	 * @return 내가 검색한 지역 리스트 조회
	 */
	List<LocalVo> localselected(Integer userNo);
	/**
	 * 
	 * @param userNo 유저 번호로 내가 디비에 저장한 지역정보 삭제 
	 * @param entireRegion  지역 이름으로  내가 디비에 저장한 지역정보 삭제
	 */
	void deleteSelectedRegion(int userNo, String entireRegion);
	
	/**
	 * 
	 * @param userNo 유저 번호로 내가 좋아요 찜한 객실 목록 조회
	 * @return 내가 찜한 객실 목록 가져오기
	 */
	List<WishListVo> wishListSelected(Integer userNo);
	
	/**
	 * 
	 * @param themeId 태마 번호로 테마 이름 조회
	 * @return
	 */
	ThemeVo themeSelected(int themeId);


}
