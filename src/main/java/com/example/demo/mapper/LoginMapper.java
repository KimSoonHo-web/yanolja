package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.UserVo;

@Mapper
public interface LoginMapper {

	// 로그인
	public String login(String userEmail);

	// 유저정보
	public UserVo userInfo(String userEmail);

}
