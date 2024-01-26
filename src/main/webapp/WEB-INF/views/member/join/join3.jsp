<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- CSS 연결 -->
 <link rel="stylesheet" href="/css/join/join1.css">
<link rel="stylesheet" href="/css/join/join2.css">
<link rel="stylesheet" href="/css/join/join3.css">
<!-- 자바스크립트  -->
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/join/join3.js?ver=20230906"></script>

<body>

	<div id="__next">
		<div class="SunnyLayout_container__3PLag">
			
				<div class="Body_container__3T03v">
					<div class="Body_contents__nnPWr">
						<div>
							<form>
							<input type="hidden" id="userEmail" name="userEmail" value=${userEmail} /> <!-- Replace with the actual email value -->
							<input type="hidden" id="userPw" name="userPw" value=${userPw} /> <!-- Replace with the actual email value -->
							
							<!-- 이벤트 리스너 -->
								<div class="CodeSentToast_wrap__2jRrv">
									<div class="CodeSentToast_body__wY_8C">인증번호가 발송되었습니다.</div>
								</div>
								
								<div class="TextField_wrap__28cox PhoneVerification_phoneNumber__1dcsp">
									<!-- flex  -->
									<div class="TextField_container__eyq2I">
										<input id="phoneNo" class="TextField_input__DJM1A" type="tel"  >
										<label for="lavel_pN" class="TextField_labelWaiting__2PNTp ">휴대폰 번호</label>
										<!-- x 아이콘 -->
										<div class="TextFileldAdornment_container__2W2nY"></div>
										<!-- 틀릴 시 빨간줄  -->
										<div class="TextField_underlineNormal__1l119 " id="phoneNo_errorLine"></div>
									</div>
									<span class="TextField_messageError__3PGqK" id="phoneNo_errorMessage"></span>
								</div>
								<!--인증번호 전송  -->
								<button  id="phoneButton" disabled class="BaseButton_button__tzyL8 RectButton_blue__20p3Q RectButton_disabled__14E3B PhoneVerification_sendCode__zqC9I" type="submit" as="button">
									<span class="RectButton_label__WcAp7">인증번호 전송</span>
								</button>
							</form>
							<!-- 전송 시 나오는 인증 창 -->
							<jsp:include page="join3_code.jsp" />
						</div>
					</div>
				</div>
			
		</div>
	</div>
	
	<!-- 모달 띄우기 -->
	<jsp:include page="join3_modal.jsp" />
	
</body>
</html>