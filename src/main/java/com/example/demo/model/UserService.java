package com.example.demo.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.UserMapper;
import com.example.demo.vo.UserVo;


@Service
public class UserService {

	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	UserMapper userMapper;
	@Autowired
	JavaMailSender javaMailSender;

//	---------------------------------------------------------------------	

//	--------------------------------------------------------------------------

	// 유저정보 상세
	public UserVo Info(String loginId) {
		return userMapper.selectById(loginId);
	}

	// 회원탈퇴
	public void deleteUser(String userNo) {
		userMapper.deleteUser(userNo);

	}

	// 회원정보 수정
	public void updateUser(UserVo userVo) {
		userMapper.updateUser(userVo);

	}

	// 비밀번호 링크
	public void sendPasswordResetEmail(String userEmail, String resetLink) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(userEmail);
        message.setFrom("rlatnsgh25@naver.com"); // 여러분의 네이버 이메일 주소
        message.setSubject("비밀번호 재설정");
        message.setText("비밀번호를 재설정하려면 다음 링크를 클릭하세요: " + resetLink);
        javaMailSender.send(message);
    }
	//비밀번호 변경
	public void changePassword(String userEmail, String newPassword) {
        String userPw = passwordEncoder.encode(newPassword);
        System.out.println("암호화한 비밀번호 : " + userPw);
        userMapper.updatePassword(userEmail, userPw);
    }


}

