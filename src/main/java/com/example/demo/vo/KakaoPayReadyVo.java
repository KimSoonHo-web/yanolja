package com.example.demo.vo;

import java.time.LocalDateTime;

public class KakaoPayReadyVo {
	private String price;
	private String phoneNo;
	private String userName;
	private String userNo;
	private String accommodationNo;
	private String roomNo;
	private String userEmail;
	private String checkInDate;
	private String checkOutDate;
	private String totalPeople;
	private String accommodationName;
	private LocalDateTime createdAt;
	private LocalDateTime updatedAt;

	public KakaoPayReadyVo() {
		// TODO Auto-generated constructor stub
	}

	public KakaoPayReadyVo(String price, String phoneNo, String userName, String userNo, String accommodationNo,
			String roomNo, String userEmail, String checkInDate, String checkOutDate, String totalPeople,
			String accommodationName, LocalDateTime createdAt, LocalDateTime updatedAt) {
		super();
		this.price = price;
		this.phoneNo = phoneNo;
		this.userName = userName;
		this.userNo = userNo;
		this.accommodationNo = accommodationNo;
		this.roomNo = roomNo;
		this.userEmail = userEmail;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.totalPeople = totalPeople;
		this.accommodationName = accommodationName;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getAccommodationNo() {
		return accommodationNo;
	}

	public void setAccommodationNo(String accommodationNo) {
		this.accommodationNo = accommodationNo;
	}

	public String getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}

	public String getCheckOutDate() {
		return checkOutDate;
	}

	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}

	public String getTotalPeople() {
		return totalPeople;
	}

	public void setTotalPeople(String totalPeople) {
		this.totalPeople = totalPeople;
	}

	public String getAccommodationName() {
		return accommodationName;
	}

	public void setAccommodationName(String accommodationName) {
		this.accommodationName = accommodationName;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}

	public LocalDateTime getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(LocalDateTime updatedAt) {
		this.updatedAt = updatedAt;
	}

	@Override
	public String toString() {
		return "KakaoPayReadyVo [price=" + price + ", phoneNo=" + phoneNo + ", userName=" + userName + ", userNo="
				+ userNo + ", accommodationNo=" + accommodationNo + ", roomNo=" + roomNo + ", userEmail=" + userEmail
				+ ", checkInDate=" + checkInDate + ", checkOutDate=" + checkOutDate + ", totalPeople=" + totalPeople
				+ ", accommodationName=" + accommodationName + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt
				+ "]";
	}

	
	
	

}
