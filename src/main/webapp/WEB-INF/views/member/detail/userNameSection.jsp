<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="/js/mypage/userDet/userNameSection.js?ver=20230912"></script>

<body>
<section class="Nickname_container__3CsMD">
	    <img class="Nickname_profileImage__30Iky" alt="프로필 이미지" src="<%= session.getAttribute("UserImageSession") %>">
	    
	    <!-- 클릭 시 바뀔 부분 -->
	    <a id="a">
	      <div class="Nickname_nickname__3ffy2">
	        <span>${UserNameSession}</span>
	      </div>
	      <div class="Nickname_memberID__3MMXU">${UserEmailSession}</div>
	    </a>

	<!-- 수정 클릭 시 바뀔 부분  -->
	<div style="display: none;"class="Nickname_nicknameEditor__1VjQ3"  id="userNameForm">
	  <div class="Nickname_nicknameEditorLeft__38CCg">닉네임</div>
	  <div class="Nickname_nicknameEditorRight__2-zkI">
	    <div class="InputDefault_wrapper__1szeZ Nickname_nicknameInput__LkKaw">
	      <input id="userName" class="InputDefault_inputValid__102ly" type="text" value="${UserNameSession}">
	      <!-- 에러 메세지  -->
	      <div class="input-error-message InputDefault_error__1uKhU" id="userName_errorMessege"></div>
	      <i class="InputDefault_clear__OQcsb" id="clear"></i>
	    </div>
	    </div>
	   <div class="Nickname_nicknameEditorLeft__38CCg"></div>
	  <div class="Nickname_nicknameEditorButtons__2Qh_7">
	    <button disabled class="MemberProfileCommon_submitButton__1g9tX" id="userName_button">확인</button>
	    <button class="MemberProfileCommon_cancelButton__AXcvv" id="cancellation">취소</button>
	  </div>
	  </div>
</section>	  

</body>
</html>