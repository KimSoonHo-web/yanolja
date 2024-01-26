<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<script type="text/javascript" src="/js/mypage/userDet/userPwSection.js?ver=20230914"></script>

<body>
				<h2 class="MemberProfileCommon_heading__232_g">개인정보</h2>
				
				<div class="MemberProfileCommon_contentsRow__3lizv">
				    <div class="MemberProfileCommon_contentsLeft__49mfn">아이디</div>
				    <div class="MemberProfileCommon_contentsRight___FPH3">${UserEmailSession}</div>
				</div>
				
				<section class="MemberProfileCommon_contentsRow__3lizv">
					<div class="MemberProfileCommon_contentsLeft__49mfn">이메일</div>
					<div class="MemberProfileCommon_contentsRight___FPH3">${UserEmailSession}</div>
				</section>
				<!-- 여기부터 시작  -->
				<section id="pw" class="MemberProfileCommon_contentsRow__3lizv">
					<div class="MemberProfileCommon_contentsLeft__49mfn">비밀번호</div>
				
					<!-- 바뀔 부분  -->
					<div class="MemberProfileCommon_contentsRight___FPH3" id="pw">●●●●●●●●●●●
						<button id="correction" class="MemberProfileCommon_contentsEdit__1h3JX">수정하기</button>
					<!-- 바뀔 부분 끝 -->
					
					</div>
				</section>
				
				
				<!-- 수정 클릭 시 변경 될 부분  -->
					<!-- 여기부터 시작  -->
				<!-- 여기부터 시작  -->
					<section id="newPw" style="display: none;" class="MemberProfileCommon_contentsRow__3lizv">
					<div class="MemberProfileCommon_contentsLeft__49mfn" >비밀번호</div>
						<div class="MemberProfileCommon_contentsRight___FPH3">
						
					<form>
					    <!-- old Password  -->
					    <div class="InputDefault_wrapper__1szeZ Password_passwordInput__3zeBX">
					        <input id="userPw" type="password" class="InputDefault_inputValid__102ly" placeholder="현재 비밀번호를 입력"> 
					        <div class="input-error-message InputDefault_error__1uKhU"></div>
					        <i style="display: none;" class="InputDefault_clear__OQcsb" id="clearIconUserPw"></i>
					    </div>
					    <!-- New Password -->
					    <div class="InputDefault_wrapper__1szeZ Password_passwordInput__3zeBX">
					        <input id="newUserPw" autocomplete="new-password" placeholder="새 비밀번호 - 영문+숫자+특문 8~20자" type="password" class="InputDefault_inputValid__102ly ">
					        <div class="input-error-message InputDefault_error__1uKhU"></div>
					        <i style="display: none;" class="InputDefault_clear__OQcsb" id="clearIconNewUserPw"></i>
					    </div>
					    <!-- New PassWord Check -->
					    <div class="InputDefault_wrapper__1szeZ Password_passwordInput__3zeBX">
					        <input id="userPwCheck" placeholder="새 비밀번호 확인" type="password" class="InputDefault_inputValid__102ly ">
					        <div class="input-error-message InputDefault_error__1uKhU"></div>
					        <i style="display: none;" class="InputDefault_clear__OQcsb" id="clearIconUserPwCheck"></i>
					    </div>
					
					    <button id="save" disabled class="MemberProfileCommon_submitButton__1g9tX">저장</button>
					    <button id="esc"  class="MemberProfileCommon_submitButton__1g9tX">취소</button>
					</form>

						
						</div>
				</section>
					

</body>
</html>