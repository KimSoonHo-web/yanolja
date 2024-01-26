<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/css/mypage/userDet/delete/delete1.css">
<link rel="stylesheet" href="/css/mypage/userDet/delete/delete2.css">
<link rel="stylesheet" href="/css/mypage/userDet/delete/delete3.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- javascript -->
<script type="text/javascript" src="/js/mypage/delete/delete.js?ver=20230913"></script>
<body>
<!-- 헤더 부분  -->
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	
	<div class="MemberWithdrawAuth_container__1HEkS">
		<div class="MemberWithdrawAuth_wrap__3T3te">
			"회원탈퇴를 하시려면 "
			<strong>안내 및 동의</strong>
			"가 필요합니다."
			<div class="MemberWithdrawAuth_confirmMessage__11JzB">정말로 회원탈퇴를 진행하시겠습니까?</div>
			<section class="MemberConfirmPassword_container__24LQW">
				<form>
					<!-- 비밀번호 입력 -->
				<div class="TextField_wrap__28cox">
					<div class="TextField_container__eyq2I">
						<input id="userPw" class="TextField_input__DJM1A" type="password" autocomplete="new-password" >
						<label style="width: 11%" for="lavel_pw" class="TextField_la1belWaiting__2PNTp">비밀번호</label>
						<div id="userPw_errorLine" class="TextField_underlineNormal__1l119 " ></div>
					</div>
						<span id="userPw_errorMessage" class="TextField_messageError__3PGqK" ></span>
				</div>
				</form>
			</section>
		</div>
	</div>
	 <jsp:include page="/WEB-INF/views/common/next_button.jsp" />	
	
</body>
			
			
		

</html>