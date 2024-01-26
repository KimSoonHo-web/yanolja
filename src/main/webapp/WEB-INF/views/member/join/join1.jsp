<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 변수에 동적으로 설정할 헤더 텍스트를 설정합니다. --%>

<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<!-- CSS 연결 -->
<link rel="stylesheet" href="/css/join/join1.css">
<link rel="stylesheet" href="/css/join/join2.css">
<link rel="stylesheet" href="/css/join/join3.css">
<!-- 자바스크립트  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/join/join1.js?ver=20230904"></script>



</head>

	
<body >
	<div id="__next">
		<div class="SunnyLayout_container__3PLag">
			<!-- 상단  -->
			 <jsp:include page="/WEB-INF/views/common/header.jsp" />
			<!-- 상단 끝 -->

			<!-- 메인 -->
			<div class="Body_container__3T03v" id="body" >
				<div class="Body_contents__nnPWr">

					<!-- 이메일 -->
					<form>
						<div class="TextField_wrap__28cox">
							<div class="TextField_container__eyq2I">
								<input type="email" class="TextField_input__DJM1A" id="userEmail">
								 <label class="TextField_labelWaiting__2PNTp" for="email">이메일</label>
								<div class="TextField_underlineNormal__1l119" id="email_errorLine"></div>
								
							</div>
								<span class="TextField_messageError__3PGqK" id="email_errorMessage"></span>
						</div>
					<!-- 이메일 끝  -->	

				<!--안내 문구  -->
				<div class="EmailVerification_emailNoticeContainer__2VLkd">
					<span
						class="Icon_icon__2BP_o EmailVerification_emailNoticeIcon__2Zycy" aria-hidden="true">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
						<path d="M11.99 2C6.47 2 2 6.48 2 12s4.47 10 9.99 10C17.52 22 22 17.52 22 12S17.52 2 11.99 2zm-.49 14h1v1h-1v-1zM11 7h2l-.5 7h-1L11 7z" />
  					</svg>
					</span>
					<p class="EmailVerification_emailNotice__3s-JE">회원 가입시 ID는 반드시
						본인 소유의 연락 가능한 이메일 주소를 사용하여야 합니다.</p>
				</div>
				<!-- 안내문구 끝 -->
						<!-- 이메일 전송 버튼  -->
						<button id="emailButton" type="submit" class="BaseButton_button__tzyL8 RectButton_blue__20p3Q RectButton_disabled__14E3B EmailVerification_sendCode__26Pdr">인증번호 전송</button>
					</form>
				
				<!-- 이메일 인증번호 -->
				<form style="display:none;" id="code_form">
					<div class="TextField_container__eyq2I">
						<input class="TextField_input__DJM1A" id="code" type="tel"> 
						<label class="TextField_labelWaiting__2PNTp" for="code">인증번호 6자리</label>
						<div class="TextField_underlineNormal__1l119 " id="code_errorLine"></div>
					</div>
					<span class="TextField_messageError__3PGqK" id="code_errorMessage"></span>
				</form>
				<!-- 이메일 인증번호 끝 -->
				<!-- 안내문구 -->
				<p class="EmailVerification_note__3xma6">
					"인증번호 발송에는 시간이 소요되며 하루 최대 5회까지 전송할 수 있습니다."
					</br>
					"인증번호는"
					<strong>입력한 이메일 주소</strong>
					"로 발송됩니다. 수신하지 못했다면 스팸함 또는 해당 이메일 서비스의 설정을 확인해주세요."
				</p>
				<!--안내문구 끝  -->	
			</div>
		</div>

		<!-- 메인 끝  -->
	</div>
	
	</div>
	<!-- 하단 -->
	 <jsp:include page="/WEB-INF/views/common/next_button.jsp" />	
	<!-- 하단 끝 -->
</body>
</html>
