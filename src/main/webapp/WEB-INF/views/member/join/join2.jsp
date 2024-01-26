<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="/js/join/join2.js?ver=20230911"></script>
<body>
			<!-- 메인 -->
			<div class="Body_container__3T03v" id="body2" >
				<div class="Body_contents__nnPWr">

			
				<div class="Body_contents__nnPWr">
				<form>
				
				<input type="hidden" id="userEmail" value="${userEmail}" name="userEmail"  /> <!-- Replace with the actual email value -->
				
				<!-- 비밀번호 입력 -->
				<div class="TextField_wrap__28cox">
					<div class="TextField_container__eyq2I">
						<input id="userPw" class="TextField_input__DJM1A" type="password" autocomplete="new-password" >
						<label for="lavel_pw" class="TextField_labelWaiting__2PNTp">비밀번호</label>
						<div id="userPw_errorLine" class="TextField_underlineNormal__1l119" ></div>
					</div>
						<span id="userPw_errorMessage" class="TextField_messageError__3PGqK" ></span>
				</div>
				<!-- 비밀번호 입력 끝 -->
					<!-- 비밀번호 확인 -->
				<div class="TextField_wrap__28cox">
					<div class="TextField_container__eyq2I">
						<input id="userPw_check" autocomplete="new-password" type="password" class="TextField_input__DJM1A">
						<label for="userPw_check" class="TextField_labelWaiting__2PNTp">비밀번호 확인</label>
						<div id="check_errorLine" class="TextField_underlineNormal__1l119"></div>
					</div>
						<span id="check_errorMessage" class="TextField_messageError__3PGqK"></span>
				</div>
				<!-- 비밀번호 확인 끝-->
				</form>	
				</div>
					
			</div>
		</div>
</body>
</html>
