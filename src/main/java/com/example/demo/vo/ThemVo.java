package com.example.demo.vo;

public class ThemVo {
	
	private int themeId;
	private String themeName;
	public ThemVo(int themeId, String themeName) {
		super();
		this.themeId = themeId;
		this.themeName = themeName;
	}
	@Override
	public String toString() {
		return "ThemVo [themeId=" + themeId + ", themeName=" + themeName + "]";
	}
	public int getThemeId() {
		return themeId;
	}
	public void setThemeId(int themeId) {
		this.themeId = themeId;
	}
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	
	public ThemVo() {
		// TODO Auto-generated constructor stub
	}
}
