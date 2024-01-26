package com.example.demo.vo;

public class WishListVo {
	
	private int like_id;
	private int userNo;
	private int accommodationNo;
	private String likeDate;
	private String accommodationName;
	private String paccommodationDescription;
	private String accommodationType;
	private String accommodationRating;
	private String addressDescription;
	private double avgRating;
	private int reviewCount;
	private int minRoomPrice;
	private String checkInTime;
	private String checkOutTime;
	private String badge1;
	private String badge2;
	private String badge3;
	private String roomOptions;
	private String imageUrl;

	
	public WishListVo() {
		// TODO Auto-generated constructor stub
	}


	public WishListVo(int like_id, int userNo, int accommodationNo, String likeDate, String accommodationName,
			String paccommodationDescription, String accommodationType, String accommodationRating,
			String addressDescription, double avgRating, int reviewCount, int minRoomPrice, String checkInTime,
			String checkOutTime, String badge1, String badge2, String badge3, String roomOptions, String imageUrl) {
		super();
		this.like_id = like_id;
		this.userNo = userNo;
		this.accommodationNo = accommodationNo;
		this.likeDate = likeDate;
		this.accommodationName = accommodationName;
		this.paccommodationDescription = paccommodationDescription;
		this.accommodationType = accommodationType;
		this.accommodationRating = accommodationRating;
		this.addressDescription = addressDescription;
		this.avgRating = avgRating;
		this.reviewCount = reviewCount;
		this.minRoomPrice = minRoomPrice;
		this.checkInTime = checkInTime;
		this.checkOutTime = checkOutTime;
		this.badge1 = badge1;
		this.badge2 = badge2;
		this.badge3 = badge3;
		this.roomOptions = roomOptions;
		this.imageUrl = imageUrl;
	}


	public int getLike_id() {
		return like_id;
	}


	public void setLike_id(int like_id) {
		this.like_id = like_id;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public int getAccommodationNo() {
		return accommodationNo;
	}


	public void setAccommodationNo(int accommodationNo) {
		this.accommodationNo = accommodationNo;
	}


	public String getLikeDate() {
		return likeDate;
	}


	public void setLikeDate(String likeDate) {
		this.likeDate = likeDate;
	}


	public String getAccommodationName() {
		return accommodationName;
	}


	public void setAccommodationName(String accommodationName) {
		this.accommodationName = accommodationName;
	}


	public String getPaccommodationDescription() {
		return paccommodationDescription;
	}


	public void setPaccommodationDescription(String paccommodationDescription) {
		this.paccommodationDescription = paccommodationDescription;
	}


	public String getAccommodationType() {
		return accommodationType;
	}


	public void setAccommodationType(String accommodationType) {
		this.accommodationType = accommodationType;
	}


	public String getAccommodationRating() {
		return accommodationRating;
	}


	public void setAccommodationRating(String accommodationRating) {
		this.accommodationRating = accommodationRating;
	}


	public String getAddressDescription() {
		return addressDescription;
	}


	public void setAddressDescription(String addressDescription) {
		this.addressDescription = addressDescription;
	}


	public double getAvgRating() {
		return avgRating;
	}


	public void setAvgRating(double avgRating) {
		this.avgRating = avgRating;
	}


	public int getReviewCount() {
		return reviewCount;
	}


	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}


	public int getMinRoomPrice() {
		return minRoomPrice;
	}


	public void setMinRoomPrice(int minRoomPrice) {
		this.minRoomPrice = minRoomPrice;
	}


	public String getCheckInTime() {
		return checkInTime;
	}


	public void setCheckInTime(String checkInTime) {
		this.checkInTime = checkInTime;
	}


	public String getCheckOutTime() {
		return checkOutTime;
	}


	public void setCheckOutTime(String checkOutTime) {
		this.checkOutTime = checkOutTime;
	}


	public String getBadge1() {
		return badge1;
	}


	public void setBadge1(String badge1) {
		this.badge1 = badge1;
	}


	public String getBadge2() {
		return badge2;
	}


	public void setBadge2(String badge2) {
		this.badge2 = badge2;
	}


	public String getBadge3() {
		return badge3;
	}


	public void setBadge3(String badge3) {
		this.badge3 = badge3;
	}


	public String getRoomOptions() {
		return roomOptions;
	}


	public void setRoomOptions(String roomOptions) {
		this.roomOptions = roomOptions;
	}


	public String getImageUrl() {
		return imageUrl;
	}


	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}


	@Override
	public String toString() {
		return "WishListVo [like_id=" + like_id + ", userNo=" + userNo + ", accommodationNo=" + accommodationNo
				+ ", likeDate=" + likeDate + ", accommodationName=" + accommodationName + ", paccommodationDescription="
				+ paccommodationDescription + ", accommodationType=" + accommodationType + ", accommodationRating="
				+ accommodationRating + ", addressDescription=" + addressDescription + ", avgRating=" + avgRating
				+ ", reviewCount=" + reviewCount + ", minRoomPrice=" + minRoomPrice + ", checkInTime=" + checkInTime
				+ ", checkOutTime=" + checkOutTime + ", badge1=" + badge1 + ", badge2=" + badge2 + ", badge3=" + badge3
				+ ", roomOptions=" + roomOptions + ", imageUrl=" + imageUrl + "]";
	}


	
	



	
	
	
}
