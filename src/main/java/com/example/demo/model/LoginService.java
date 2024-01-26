package com.example.demo.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.LoginMapper;
import com.example.demo.vo.UserVo;

@Service
public class LoginService {

	@Autowired
	LoginMapper loginMapper;

	// 로그인
	public String login(String userEmail) {
		return loginMapper.login(userEmail);
	}

	// 유저정보
	public UserVo userInfo(String userEmail) {
		return loginMapper.userInfo(userEmail);
	}
	
	
	public UserVo findUserByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertUser(UserVo userVo) {
		// TODO Auto-generated method stub

	}
}