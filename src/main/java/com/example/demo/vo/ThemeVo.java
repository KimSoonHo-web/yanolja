package com.example.demo.vo;

public class ThemeVo {
	private int themeId;
	private String themeName;
	
	public ThemeVo() {
		// TODO Auto-generated constructor stub
	}

	public ThemeVo(int themeId, String themeName) {
		super();
		this.themeId = themeId;
		this.themeName = themeName;
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

	@Override
	public String toString() {
		return "ThemeVo [themeId=" + themeId + ", themeName=" + themeName + "]";
	}
	
	
	
	
}
