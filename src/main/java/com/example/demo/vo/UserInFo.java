package com.example.demo.vo;

public class UserInFo {

	private Integer userNo;
	private String userEmail;
	private String userName;
	private String phoneNo;

	public UserInFo() {
		// TODO Auto-generated constructor stub
	}

	public Integer getUserNo() {
		return userNo;
	}

	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	@Override
	public String toString() {
		return "UserInFo [userNo=" + userNo + ", userEmail=" + userEmail + ", userName=" + userName + ", phoneNo="
				+ phoneNo + "]";
	}

	
}
