<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- css 시작 -->
<link rel="stylesheet" href="/css/login/login1.css">
<link rel="stylesheet" href="/css/login/login2.css">
<link rel="stylesheet" href="/css/login/login3.css">
</head>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript" src="/js/login/login.js?ver=123"></script>
<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	<!-- 내용 -->
	<div class="SunnyLayout_container__3PLag">
		<main class="SunnyLayout_bodyContainer__1wWjV">
			<div class="EmailBody_container__98nDk">
				<form>
					<div class="TextFieldEmail_container__EWzHQ">
						<div class="TextField_wrap__28cox EmailBody_emailFiled__-UwAQ">

							<div class="TextField_container__eyq2I">
								<input type="email" autofocus="autofocus" class="TextField_input__DJM1A" id="userEmail"/>
								<label class="TextField_labelWaiting__2PNTp" for="lavel_email">이메일</label>
								<div class="TextField_underlineNormal__1l119" id="email_errorLine"></div>
							</div>
								<span class="TextField_messageError__3PGqK" id="email_errorMessage"></span>
						</div>
					</div>
					<div class="TextField_wrap__28cox">
						<div class="TextField_container__eyq2I">
							<input type="password" name="password" class="TextField_input__DJM1A" id="userPw" /> 
							<label class="TextField_labelWaiting__2PNTp" for="lavel_pw">비밀번호</label>
							<div class="TextField_underlineNormal__1l119" id="userPw_errorLine" ></div>
						</div>
					</div>

					<button type="button" class="BaseButton_button__tzyL8 RectButton_primary__3O9TH RectButton_disabled__14E3B EmailBody_largeButton__1D7al" id="loginButton">
						<span class="RectButton_label__WcAp7">로그인</span>
					</button>
				</form>
				<div class="EmailBody_bottomContainer__3X7lW">
					<label class="BaseButton_pseudo__2cnN7 TextButton_basic__120EN EmailBody_textButton__3-QLE" id="forgotPassword">비밀번호 찾기 
						<svg class="TextButton_arrow__1AB9J" xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
							<path d="M3.245 10.065L4.13 10.95 9.08 6 4.13 1.05 3.245 1.935 7.31 6 3.245 10.065z"></path>
						</svg>
					</label>
						<div class="EmailBody_bar__1rM8B"></div>
					<label class="BaseButton_pseudo__2cnN7 TextButton_basic__120EN EmailBody_textButton__3-QLE" id="signupWithEmail"> 이메일로 회원가입 
						<svg class="TextButton_arrow__1AB9J" xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
							<path d="M3.245 10.065L4.13 10.95 9.08 6 4.13 1.05 3.245 1.935 7.31 6 3.245 10.065z"></path>
						</svg>
					</label>
				</div>
			</div>
		</main>
	</div>
</body>
</html>



