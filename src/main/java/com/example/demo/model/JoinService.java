package com.example.demo.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.mapper.JoinMapper;
import com.example.demo.vo.UserVo;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class JoinService {
	
	@Autowired
	JoinMapper joinMapper;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	// 회원가입 시 저장시간을 넣어줄 DateTime형
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:sss");
	Date time = new Date();
	String localTime = format.format(time);

	// 회원가입
	@Transactional
	public void join(UserVo userVo) {

		userVo.setUserPw(passwordEncoder.encode(userVo.getUserPw()));
		// 무작위 닉네임 생성
		String randomNickname = generateRandomNickname();
		userVo.setUserName(randomNickname);
		// 이미지 URL을 무작위로 선택
		String randomImageUrl = generateRandomImageUrl();
		userVo.setUserImage(randomImageUrl);

		userVo.setUserAuth("USER");

		userVo.setAppendDate(localTime);
		System.out.println("회원가입한 시간 : " + localTime);
		userVo.getUpdateDate();

		System.out.println("회원가입 정보 : " + userVo);

		joinMapper.join(userVo);
	}

	private String generateRandomNickname() {
		String[] nicknames = { "집에가고싶다", "왜안되냐", "에러좀그만나라", };
		Random random = new Random();
		int index = random.nextInt(nicknames.length);
		return nicknames[index];
	}

	private String generateRandomImageUrl() {
		String[] imageUrls = { "https://yaimg.yanolja.com/joy/sunny/static/images/icon_profile_default_01.png",
				"https://yaimg.yanolja.com/joy/sunny/static/images/icon_profile_default_02.png", };
		Random random = new Random();
		int index = random.nextInt(imageUrls.length);
		return imageUrls[index];
	}
//	---------------------------------------------------------------------

	// 아이디 중복확인
	public int checkId(String userEmail) {

		int result = 0;

		result = joinMapper.checkId(userEmail);
		return result;
	}

	// 휴대폰 인증
	public void certifiedPhoneNumber(String phoneNo, String cerNum) {

		String api_key = "NCS5A6B7M9WDC6RT";
		String api_secret = "YW943QDUWRVTNLZMUQ5VV1HSQW1M7ZYK";
		Message coolsms = new Message(api_key, api_secret);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phoneNo); // 수신전화번호
		params.put("from", phoneNo); // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
		params.put("type", "SMS");
		params.put("text", "야놀자 휴대폰인증 테스트 메시지 : 인증번호는" + "[" + cerNum + "]" + "입니다.");
		params.put("app_version", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}

	}
}
