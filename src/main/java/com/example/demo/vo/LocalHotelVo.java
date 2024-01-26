package com.example.demo.vo;

public class LocalHotelVo {
	
	private int accommodationNo;
	private String accommodationName; 
	private String type;
	private String accommodationRating;
	private String accommodationDescription;
	private String country;
	private String city;
	private String streetAddress;
	private String dong;
	private String addressDescription;
	private double averageRating;  // 리뷰 평점
	private int totalReviews;  //총 리뷰 수
	private String accommodationImageUrl;  // 숙소 이미지 URL
	private String minRoomPrice;  // 숙소 객실의 최소 가격 표시
	private String badge1;  // 배찌 1
	private String badge2;  // 배찌 2
	private String badge3;  // 배찌 3
	private String checkInTime;  // 숙소별 체크 3
	private String checkOutTime;  // 배찌 3
	private String roomOption;  // 룸 옵션(숙박/대실)
	
	
	public LocalHotelVo() {
		// TODO Auto-generated constructor stub
	}


	public LocalHotelVo(int accommodationNo, String accommodationName, String type, String accommodationRating,
			String accommodationDescription, String country, String city, String streetAddress, String dong,
			String addressDescription, double averageRating, int totalReviews, String accommodationImageUrl,
			String minRoomPrice, String badge1, String badge2, String badge3, String checkInTime, String checkOutTime,
			String roomOption) {
		super();
		this.accommodationNo = accommodationNo;
		this.accommodationName = accommodationName;
		this.type = type;
		this.accommodationRating = accommodationRating;
		this.accommodationDescription = accommodationDescription;
		this.country = country;
		this.city = city;
		this.streetAddress = streetAddress;
		this.dong = dong;
		this.addressDescription = addressDescription;
		this.averageRating = averageRating;
		this.totalReviews = totalReviews;
		this.accommodationImageUrl = accommodationImageUrl;
		this.minRoomPrice = minRoomPrice;
		this.badge1 = badge1;
		this.badge2 = badge2;
		this.badge3 = badge3;
		this.checkInTime = checkInTime;
		this.checkOutTime = checkOutTime;
		this.roomOption = roomOption;
	}


	public int getAccommodationNo() {
		return accommodationNo;
	}


	public void setAccommodationNo(int accommodationNo) {
		this.accommodationNo = accommodationNo;
	}


	public String getAccommodationName() {
		return accommodationName;
	}


	public void setAccommodationName(String accommodationName) {
		this.accommodationName = accommodationName;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getAccommodationRating() {
		return accommodationRating;
	}


	public void setAccommodationRating(String accommodationRating) {
		this.accommodationRating = accommodationRating;
	}


	public String getAccommodationDescription() {
		return accommodationDescription;
	}


	public void setAccommodationDescription(String accommodationDescription) {
		this.accommodationDescription = accommodationDescription;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getStreetAddress() {
		return streetAddress;
	}


	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}


	public String getDong() {
		return dong;
	}


	public void setDong(String dong) {
		this.dong = dong;
	}


	public String getAddressDescription() {
		return addressDescription;
	}


	public void setAddressDescription(String addressDescription) {
		this.addressDescription = addressDescription;
	}


	public double getAverageRating() {
		return averageRating;
	}


	public void setAverageRating(double averageRating) {
		this.averageRating = averageRating;
	}


	public int getTotalReviews() {
		return totalReviews;
	}


	public void setTotalReviews(int totalReviews) {
		this.totalReviews = totalReviews;
	}


	public String getAccommodationImageUrl() {
		return accommodationImageUrl;
	}


	public void setAccommodationImageUrl(String accommodationImageUrl) {
		this.accommodationImageUrl = accommodationImageUrl;
	}


	public String getMinRoomPrice() {
		return minRoomPrice;
	}


	public void setMinRoomPrice(String minRoomPrice) {
		this.minRoomPrice = minRoomPrice;
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


	public String getRoomOption() {
		return roomOption;
	}


	public void setRoomOption(String roomOption) {
		this.roomOption = roomOption;
	}


	@Override
	public String toString() {
		return "LocalHotelVo [accommodationNo=" + accommodationNo + ", accommodationName=" + accommodationName
				+ ", type=" + type + ", accommodationRating=" + accommodationRating + ", accommodationDescription="
				+ accommodationDescription + ", country=" + country + ", city=" + city + ", streetAddress="
				+ streetAddress + ", dong=" + dong + ", addressDescription=" + addressDescription + ", averageRating="
				+ averageRating + ", totalReviews=" + totalReviews + ", accommodationImageUrl=" + accommodationImageUrl
				+ ", minRoomPrice=" + minRoomPrice + ", badge1=" + badge1 + ", badge2=" + badge2 + ", badge3=" + badge3
				+ ", checkInTime=" + checkInTime + ", checkOutTime=" + checkOutTime + ", roomOption=" + roomOption
				+ "]";
	}


	
	
	
	
}
