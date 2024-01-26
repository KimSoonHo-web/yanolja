package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.UserVo;

@Mapper
public interface UserMapper {

	// 유저정보 상세
	public UserVo selectById(String loginId);

	// 유저삭제
	public void deleteUser(String userNo);

	// 유저수정
	public void updateUser(UserVo userVo);
	
	//비밀번호 변경
	public void updatePassword(String userEmail, String userPw);

}
