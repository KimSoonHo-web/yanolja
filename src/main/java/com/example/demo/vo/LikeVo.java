package com.example.demo.vo;

import java.sql.Date;

	public class LikeVo {
	    private int likeId;
	    private int userNo;
	    private int accommodationNo;
	    private Date likeDate;
	    
	    public LikeVo() {
			// TODO Auto-generated constructor stub
		}
	    
		public LikeVo(int likeId, int userNo, int accommodationNo, Date likeDate) {
			super();
			this.likeId = likeId;
			this.userNo = userNo;
			this.accommodationNo = accommodationNo;
			this.likeDate = likeDate;
		}
		@Override
		public String toString() {
			return "LikeVo [likeId=" + likeId + ", userNo=" + userNo + ", accommodationNo=" + accommodationNo
					+ ", likeDate=" + likeDate + "]";
		}
		public int getLikeId() {
			return likeId;
		}
		public void setLikeId(int likeId) {
			this.likeId = likeId;
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
		public Date getLikeDate() {
			return likeDate;
		}
		public void setLikeDate(Date likeDate) {
			this.likeDate = likeDate;
		}
	    
	    
	    
		
		
}
