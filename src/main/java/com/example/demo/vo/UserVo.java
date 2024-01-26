package com.example.demo.vo;


public class UserVo {
	private String userNo;
    private String userEmail;
    private String userPw;
    private String userName;
    private String phoneNo;
    private String userImage;
    private String userAuth;
    private String appendDate;
    private String updateDate;
	public UserVo(String userNo, String userEmail, String userPw, String userName, String phoneNo, String userImage,
			String userAuth, String appendDate, String updateDate) {
		super();
		this.userNo = userNo;
		this.userEmail = userEmail;
		this.userPw = userPw;
		this.userName = userName;
		this.phoneNo = phoneNo;
		this.userImage = userImage;
		this.userAuth = userAuth;
		this.appendDate = appendDate;
		this.updateDate = updateDate;
	}
	@Override
	public String toString() {
		return "UserVo [userNo=" + userNo + ", userEmail=" + userEmail + ", userPw=" + userPw + ", userName=" + userName
				+ ", phoneNo=" + phoneNo + ", userImage=" + userImage + ", userAuth=" + userAuth + ", appendDate="
				+ appendDate + ", updateDate=" + updateDate + "]";
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
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
	public String getUserImage() {
		return userImage;
	}
	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
	public String getUserAuth() {
		return userAuth;
	}
	public void setUserAuth(String userAuth) {
		this.userAuth = userAuth;
	}
	public String getAppendDate() {
		return appendDate;
	}
	public void setAppendDate(String appendDate) {
		this.appendDate = appendDate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

    public UserVo() {
		// TODO Auto-generated constructor stub
	}
    
    
}