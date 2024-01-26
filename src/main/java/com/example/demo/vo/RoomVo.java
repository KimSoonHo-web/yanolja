package com.example.demo.vo;

public class RoomVo {

	private int roomNo; // 객실 번호
	private int accommodationNo; // 숙소 번호
	private String roomType; // 객실 유형
	private int price; // 가격
	private int maxOccupancy; // 최대 수용 인원
	private int roomCount; // 객실 개수
	private String imageUrl; // 이미지 URL
	private String badge1; // 뱃지 정보 1
	private String badge2; // 뱃지 정보 2
	private String badge3; // 뱃지 정보 3
	private String description1; // 설명 1
	private String description2; // 설명 2
	private String description3; // 설명 3
	private String checkInTime; // 체크인 시간
	private String checkOutTime; // 체크 아웃 시간
	private String accommodationName; // 숙소이름
	private String roomOption; // 룸 옵션
	private int totalPeople; // 총 인원 수
	
	
	
	
	@Override
	public String toString() {
		return "RoomVo [roomNo=" + roomNo + ", accommodationNo=" + accommodationNo + ", roomType=" + roomType
				+ ", price=" + price + ", maxOccupancy=" + maxOccupancy + ", roomCount=" + roomCount + ", imageUrl="
				+ imageUrl + ", badge1=" + badge1 + ", badge2=" + badge2 + ", badge3=" + badge3 + ", description1="
				+ description1 + ", description2=" + description2 + ", description3=" + description3 + ", checkInTime="
				+ checkInTime + ", checkOutTime=" + checkOutTime + ", accommodationName=" + accommodationName
				+ ", roomOption=" + roomOption + ", totalPeople=" + totalPeople + "]";
	}


	public RoomVo() {
		// TODO Auto-generated constructor stub
	}


	public RoomVo(int roomNo, int accommodationNo, String roomType, int price, int maxOccupancy, int roomCount,
			String imageUrl, String badge1, String badge2, String badge3, String description1, String description2,
			String description3, String checkInTime, String checkOutTime, String accommodationName, String roomOption,
			int totalPeople) {
		super();
		this.roomNo = roomNo;
		this.accommodationNo = accommodationNo;
		this.roomType = roomType;
		this.price = price;
		this.maxOccupancy = maxOccupancy;
		this.roomCount = roomCount;
		this.imageUrl = imageUrl;
		this.badge1 = badge1;
		this.badge2 = badge2;
		this.badge3 = badge3;
		this.description1 = description1;
		this.description2 = description2;
		this.description3 = description3;
		this.checkInTime = checkInTime;
		this.checkOutTime = checkOutTime;
		this.accommodationName = accommodationName;
		this.roomOption = roomOption;
		this.totalPeople = totalPeople;
	}


	public int getRoomNo() {
		return roomNo;
	}


	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}


	public int getAccommodationNo() {
		return accommodationNo;
	}


	public void setAccommodationNo(int accommodationNo) {
		this.accommodationNo = accommodationNo;
	}


	public String getRoomType() {
		return roomType;
	}


	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getMaxOccupancy() {
		return maxOccupancy;
	}


	public void setMaxOccupancy(int maxOccupancy) {
		this.maxOccupancy = maxOccupancy;
	}


	public int getRoomCount() {
		return roomCount;
	}


	public void setRoomCount(int roomCount) {
		this.roomCount = roomCount;
	}


	public String getImageUrl() {
		return imageUrl;
	}


	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
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


	public String getDescription1() {
		return description1;
	}


	public void setDescription1(String description1) {
		this.description1 = description1;
	}


	public String getDescription2() {
		return description2;
	}


	public void setDescription2(String description2) {
		this.description2 = description2;
	}


	public String getDescription3() {
		return description3;
	}


	public void setDescription3(String description3) {
		this.description3 = description3;
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


	public String getAccommodationName() {
		return accommodationName;
	}


	public void setAccommodationName(String accommodationName) {
		this.accommodationName = accommodationName;
	}


	public String getRoomOption() {
		return roomOption;
	}


	public void setRoomOption(String roomOption) {
		this.roomOption = roomOption;
	}


	public int getTotalPeople() {
		return totalPeople;
	}


	public void setTotalPeople(int totalPeople) {
		this.totalPeople = totalPeople;
	}
	
	
	 
}