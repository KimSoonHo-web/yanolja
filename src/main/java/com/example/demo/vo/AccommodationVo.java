package com.example.demo.vo;

public class AccommodationVo {

	 private int accommodationNo;		//수소 번호
	    private String name;			//숙소 이름
	    private int addressNo;			//주소 번호	
	    private String type;			//숙소 타입
	    private String rating;			//성급 
	    private String description;		//설명
	    private String imageUrl;		//숙소 이미지
	    private String roomImageUrl;	//객실 이미지
	    private double avgRating;		//평점 평균
	    private double avgRating1;		//친절도 점수
	    private double avgRating2;		//쳥결도 점수
	    private double avgRating3;		//편의성 점수
	    private double avgRating4;		//위치만족도 점수
	    private int reviewCount;		//리뷰 작성 수
	    private int minPrice;			//최소 가격
	    private String badge1;			//배찌1
	    private String badge2;			//배찌2
	    private String badge3;			//배찌3
	    private int totalRooms;		//객실 총 개수
	    private String addressDescription; 	//주소 설명
	    private String streetAddress; 	//도로명 주소
		
	    
	    
	    
	    
	    public AccommodationVo() {
			// TODO Auto-generated constructor stub
		}





		public AccommodationVo(int accommodationNo, String name, int addressNo, String type, String rating,
				String description, String imageUrl, String roomImageUrl, double avgRating, double avgRating1,
				double avgRating2, double avgRating3, double avgRating4, int reviewCount, int minPrice, String badge1,
				String badge2, String badge3, int totalRooms, String addressDescription, String streetAddress) {
			super();
			this.accommodationNo = accommodationNo;
			this.name = name;
			this.addressNo = addressNo;
			this.type = type;
			this.rating = rating;
			this.description = description;
			this.imageUrl = imageUrl;
			this.roomImageUrl = roomImageUrl;
			this.avgRating = avgRating;
			this.avgRating1 = avgRating1;
			this.avgRating2 = avgRating2;
			this.avgRating3 = avgRating3;
			this.avgRating4 = avgRating4;
			this.reviewCount = reviewCount;
			this.minPrice = minPrice;
			this.badge1 = badge1;
			this.badge2 = badge2;
			this.badge3 = badge3;
			this.totalRooms = totalRooms;
			this.addressDescription = addressDescription;
			this.streetAddress = streetAddress;
		}





		public int getAccommodationNo() {
			return accommodationNo;
		}





		public void setAccommodationNo(int accommodationNo) {
			this.accommodationNo = accommodationNo;
		}





		public String getName() {
			return name;
		}





		public void setName(String name) {
			this.name = name;
		}





		public int getAddressNo() {
			return addressNo;
		}





		public void setAddressNo(int addressNo) {
			this.addressNo = addressNo;
		}





		public String getType() {
			return type;
		}





		public void setType(String type) {
			this.type = type;
		}





		public String getRating() {
			return rating;
		}





		public void setRating(String rating) {
			this.rating = rating;
		}





		public String getDescription() {
			return description;
		}





		public void setDescription(String description) {
			this.description = description;
		}





		public String getImageUrl() {
			return imageUrl;
		}





		public void setImageUrl(String imageUrl) {
			this.imageUrl = imageUrl;
		}





		public String getRoomImageUrl() {
			return roomImageUrl;
		}





		public void setRoomImageUrl(String roomImageUrl) {
			this.roomImageUrl = roomImageUrl;
		}





		public double getAvgRating() {
			return avgRating;
		}





		public void setAvgRating(double avgRating) {
			this.avgRating = avgRating;
		}





		public double getAvgRating1() {
			return avgRating1;
		}





		public void setAvgRating1(double avgRating1) {
			this.avgRating1 = avgRating1;
		}





		public double getAvgRating2() {
			return avgRating2;
		}





		public void setAvgRating2(double avgRating2) {
			this.avgRating2 = avgRating2;
		}





		public double getAvgRating3() {
			return avgRating3;
		}





		public void setAvgRating3(double avgRating3) {
			this.avgRating3 = avgRating3;
		}





		public double getAvgRating4() {
			return avgRating4;
		}





		public void setAvgRating4(double avgRating4) {
			this.avgRating4 = avgRating4;
		}





		public int getReviewCount() {
			return reviewCount;
		}





		public void setReviewCount(int reviewCount) {
			this.reviewCount = reviewCount;
		}





		public int getMinPrice() {
			return minPrice;
		}





		public void setMinPrice(int minPrice) {
			this.minPrice = minPrice;
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





		public int getTotalRooms() {
			return totalRooms;
		}





		public void setTotalRooms(int totalRooms) {
			this.totalRooms = totalRooms;
		}





		public String getAddressDescription() {
			return addressDescription;
		}





		public void setAddressDescription(String addressDescription) {
			this.addressDescription = addressDescription;
		}





		public String getStreetAddress() {
			return streetAddress;
		}





		public void setStreetAddress(String streetAddress) {
			this.streetAddress = streetAddress;
		}





		@Override
		public String toString() {
			return "AccommodationVo [accommodationNo=" + accommodationNo + ", name=" + name + ", addressNo=" + addressNo
					+ ", type=" + type + ", rating=" + rating + ", description=" + description + ", imageUrl="
					+ imageUrl + ", roomImageUrl=" + roomImageUrl + ", avgRating=" + avgRating + ", avgRating1="
					+ avgRating1 + ", avgRating2=" + avgRating2 + ", avgRating3=" + avgRating3 + ", avgRating4="
					+ avgRating4 + ", reviewCount=" + reviewCount + ", minPrice=" + minPrice + ", badge1=" + badge1
					+ ", badge2=" + badge2 + ", badge3=" + badge3 + ", totalRooms=" + totalRooms
					+ ", addressDescription=" + addressDescription + ", streetAddress=" + streetAddress + "]";
		}


	    
		


		
}
