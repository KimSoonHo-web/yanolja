package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.UserVo;

@Mapper
public interface JoinMapper {
	
	// 회원가입
		public void join(UserVo userVo);

		// 아이디 중복확인
		public int checkId(String userEmail);

}
