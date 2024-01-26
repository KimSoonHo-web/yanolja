package com.example.demo.vo;

import java.sql.Date;

public class ReviewVo {
	
	    private Integer reviewNo;
	    private Integer accommodationNo;
	    private Integer roomNo;
	    private Integer userNo;
	    private Double rating1;
	    private Double rating2;
	    private Double rating3;
	    private Double rating4; 
	    private String reviewComment; // 리뷰 내용
	    private Date reviewDate; // 리뷰 날짜
	    private double avgRating; // 리뷰 평균
	    private String roomName; // 리뷰 숙소 이름
	    private String userName; //리뷰 이름
	    private String reviewImages; // 리뷰 이미지

	    
	    public ReviewVo() {
			// TODO Auto-generated constructor stub
		}


		public ReviewVo(Integer reviewNo, Integer accommodationNo, Integer roomNo, Integer userNo, Double rating1,
				Double rating2, Double rating3, Double rating4, String reviewComment, Date reviewDate, double avgRating,
				String roomName, String userName, String reviewImages) {
			super();
			this.reviewNo = reviewNo;
			this.accommodationNo = accommodationNo;
			this.roomNo = roomNo;
			this.userNo = userNo;
			this.rating1 = rating1;
			this.rating2 = rating2;
			this.rating3 = rating3;
			this.rating4 = rating4;
			this.reviewComment = reviewComment;
			this.reviewDate = reviewDate;
			this.avgRating = avgRating;
			this.roomName = roomName;
			this.userName = userName;
			this.reviewImages = reviewImages;
		}


		public ReviewVo(Integer accommodationNo, String roomName) {
			super();
			this.accommodationNo = accommodationNo;
			this.roomName = roomName;
		}


		public Integer getReviewNo() {
			return reviewNo;
		}


		public void setReviewNo(Integer reviewNo) {
			this.reviewNo = reviewNo;
		}


		public Integer getAccommodationNo() {
			return accommodationNo;
		}


		public void setAccommodationNo(Integer accommodationNo) {
			this.accommodationNo = accommodationNo;
		}


		public Integer getRoomNo() {
			return roomNo;
		}


		public void setRoomNo(Integer roomNo) {
			this.roomNo = roomNo;
		}


		public Integer getUserNo() {
			return userNo;
		}


		public void setUserNo(Integer userNo) {
			this.userNo = userNo;
		}


		public Double getRating1() {
			return rating1;
		}


		public void setRating1(Double rating1) {
			this.rating1 = rating1;
		}


		public Double getRating2() {
			return rating2;
		}


		public void setRating2(Double rating2) {
			this.rating2 = rating2;
		}


		public Double getRating3() {
			return rating3;
		}


		public void setRating3(Double rating3) {
			this.rating3 = rating3;
		}


		public Double getRating4() {
			return rating4;
		}


		public void setRating4(Double rating4) {
			this.rating4 = rating4;
		}


		public String getReviewComment() {
			return reviewComment;
		}


		public void setReviewComment(String reviewComment) {
			this.reviewComment = reviewComment;
		}


		public Date getReviewDate() {
			return reviewDate;
		}


		public void setReviewDate(Date reviewDate) {
			this.reviewDate = reviewDate;
		}


		public double getAvgRating() {
			return avgRating;
		}


		public void setAvgRating(double avgRating) {
			this.avgRating = avgRating;
		}


		public String getRoomName() {
			return roomName;
		}


		public void setRoomName(String roomName) {
			this.roomName = roomName;
		}


		public String getUserName() {
			return userName;
		}


		public void setUserName(String userName) {
			this.userName = userName;
		}


		public String getReviewImages() {
			return reviewImages;
		}


		public void setReviewImages(String reviewImages) {
			this.reviewImages = reviewImages;
		}


		@Override
		public String toString() {
			return "ReviewVo [reviewNo=" + reviewNo + ", accommodationNo=" + accommodationNo + ", roomNo=" + roomNo
					+ ", userNo=" + userNo + ", rating1=" + rating1 + ", rating2=" + rating2 + ", rating3=" + rating3
					+ ", rating4=" + rating4 + ", reviewComment=" + reviewComment + ", reviewDate=" + reviewDate
					+ ", avgRating=" + avgRating + ", roomName=" + roomName + ", userName=" + userName
					+ ", reviewImages=" + reviewImages + "]";
		}
	    
	    
		
		
		
	    
	    
}
