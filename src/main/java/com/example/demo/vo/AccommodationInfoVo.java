package com.example.demo.vo;

public class AccommodationInfoVo {

	private Integer infoId;	//정보 아이디
	private Integer accommodationNo;	//숙박시설 번호
	private String category;//정보 카테고리
	private String content; //정보 내용
	
	public AccommodationInfoVo() {
		// TODO Auto-generated constructor stub
	}

	public AccommodationInfoVo(Integer infoId, Integer accommodationNo, String category, String content) {
		super();
		this.infoId = infoId;
		this.accommodationNo = accommodationNo;
		this.category = category;
		this.content = content;
	}

	public Integer getInfoId() {
		return infoId;
	}

	public void setInfoId(Integer infoId) {
		this.infoId = infoId;
	}

	public Integer getAccommodationNo() {
		return accommodationNo;
	}

	public void setAccommodationNo(Integer accommodationNo) {
		this.accommodationNo = accommodationNo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "AccommodationInfoVo [infoId=" + infoId + ", accommodationNo=" + accommodationNo + ", category="
				+ category + ", content=" + content + "]";
	}

	
	
	
	
	
	
}
