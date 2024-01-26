<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>

<!--css -->
<link rel="stylesheet" href="/css/mypage/userDet/userDet1.css">
<link rel="stylesheet" href="/css/mypage/userDet/userDet2.css">
<link rel="stylesheet" href="/css/mypage/userDet/userDet3.css">

<!-- javascript -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/mypage/userDet/userDet.js?ver=20230912"></script>

<body>
<div id="__next">
<div class="SunnyLayout_container__3PLag member_layout__3xgYi">
	<!-- 헤더 부분  -->
	<jsp:include page="/WEB-INF/views/common/header.jsp" />	
<main class="SunnyLayout_bodyContainer__1wWjV">
	<div class="member_body___SzbA">			
		<section class="MemberProfile_container__1W8xH">
		  <!-- 유저 이름 세션  -->
		  <jsp:include page="userNameSection.jsp" />		
			<div class="MemberProfileCommon_divider__jZii9"></div>
			
		<section class="MemberProfileCommon_container__2iksG">
		   <!-- 유저 비밀번호 세션  -->	
		   <jsp:include page="userPwSection.jsp" />	
		   <!-- 유저 휴대폰번호 세션  -->
		   <jsp:include page="userPhoneNoSection.jsp" />
		</section>
		<!-- 공통 모달 -->
		<div style="display: none;" id="modal">		
			<jsp:include page="/WEB-INF/views/common/modal.jsp" />	
		</div>		
	<hr class="MemberProfileCommon_divider__jZii9">

	<section class="MemberProfileCommon_container__2iksG">
		<h2 class="MemberProfileCommon_heading__232_g">광고성 정보 수신동의</h2>
		<div class="Agreements_row__3-cUa">
			<label class="MemberCheckbox_checkbox__1F0dA Agreements_item__1Qrmo">
				<input class="MemberCheckbox_real__3aOwJ" type="checkbox" name="isAgreeEmail"> 
				<i></i> 
				<span class="Agreements_label__33xbo">E-mail</span>
			</label> 
			<label class="MemberCheckbox_checkbox__1F0dA Agreements_item__1Qrmo">
				<input class="MemberCheckbox_real__3aOwJ" type="checkbox" name="isAgreeSMS">
				<i></i>
				<span class="Agreements_label__33xbo">문자</span>
			</label>
			
		</div>
	</section>
	<hr class="MemberProfileCommon_divider__jZii9">
	
	<section class="MemberProfileCommon_container__2iksG" >
		<a href="/userDel.do" class="MemberProfile_withdrawButton__3J6hM" href="로그아웃"> <span>회원탈퇴</span>
			<i></i>
		</a>
	</section>
	</section>
</div>
</main>
</div>
</div>
</body>
</html>