package com.example.demo.vo;

public class LocalVo {
	
	private int id;
	private int userNo;
	private String regionName;
	
	
	public LocalVo(int id, int userNo, String regionName) {
		super();
		this.id = id;
		this.userNo = userNo;
		this.regionName = regionName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getRegionName() {
		return regionName;
	}
	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}
	
	
	public LocalVo() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "LocalVo [id=" + id + ", userNo=" + userNo + ", regionName=" + regionName + "]";
	}

	
	
}
