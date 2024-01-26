package com.example.demo.vo;

public class PaymentDetails {
	private String tid;
	private String nextRedirectPcUrl;
	private String nextRedirectMobileUrl;
	private String nextRedirectAppUrl;
	private String androidAppScheme;
	private String iosAppScheme;
	private String createdAt;
	
	
	public PaymentDetails() {
		// TODO Auto-generated constructor stub
	}


	public PaymentDetails(String tid, String nextRedirectPcUrl, String nextRedirectMobileUrl, String nextRedirectAppUrl,
			String androidAppScheme, String iosAppScheme, String createdAt) {
		super();
		this.tid = tid;
		this.nextRedirectPcUrl = nextRedirectPcUrl;
		this.nextRedirectMobileUrl = nextRedirectMobileUrl;
		this.nextRedirectAppUrl = nextRedirectAppUrl;
		this.androidAppScheme = androidAppScheme;
		this.iosAppScheme = iosAppScheme;
		this.createdAt = createdAt;
	}


	public String getTid() {
		return tid;
	}


	public void setTid(String tid) {
		this.tid = tid;
	}


	public String getNextRedirectPcUrl() {
		return nextRedirectPcUrl;
	}


	public void setNextRedirectPcUrl(String nextRedirectPcUrl) {
		this.nextRedirectPcUrl = nextRedirectPcUrl;
	}


	public String getNextRedirectMobileUrl() {
		return nextRedirectMobileUrl;
	}


	public void setNextRedirectMobileUrl(String nextRedirectMobileUrl) {
		this.nextRedirectMobileUrl = nextRedirectMobileUrl;
	}


	public String getNextRedirectAppUrl() {
		return nextRedirectAppUrl;
	}


	public void setNextRedirectAppUrl(String nextRedirectAppUrl) {
		this.nextRedirectAppUrl = nextRedirectAppUrl;
	}


	public String getAndroidAppScheme() {
		return androidAppScheme;
	}


	public void setAndroidAppScheme(String androidAppScheme) {
		this.androidAppScheme = androidAppScheme;
	}


	public String getIosAppScheme() {
		return iosAppScheme;
	}


	public void setIosAppScheme(String iosAppScheme) {
		this.iosAppScheme = iosAppScheme;
	}


	public String getCreatedAt() {
		return createdAt;
	}


	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}


	@Override
	public String toString() {
		return "PaymentDetails [tid=" + tid + ", nextRedirectPcUrl=" + nextRedirectPcUrl + ", nextRedirectMobileUrl="
				+ nextRedirectMobileUrl + ", nextRedirectAppUrl=" + nextRedirectAppUrl + ", androidAppScheme="
				+ androidAppScheme + ", iosAppScheme=" + iosAppScheme + ", createdAt=" + createdAt + "]";
	}
	
	
	
	
	

}
