<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="/js/mypage/userDet/userPhoneNoSection.js?ver=20230915"></script>

<body>

	<section id="phN" class="MemberProfileCommon_contentsRow__3lizv">
		<div class="MemberProfileCommon_contentsLeft__49mfn">휴대혼번호</div>
		<div class="MemberProfileCommon_contentsRight___FPH3">${PhoneNoSession}
			<button class="MemberProfileCommon_contentsEdit__1h3JX" id="editButton">수정하기</button>
		</div>
	</section>


	<!-- 바뀔부분 -->
	<section style="display: none;" id="ph" class="MemberProfileCommon_contentsRow__3lizv">
		<div class="MemberProfileCommon_contentsLeft__49mfn">휴대혼번호</div>
		<div class="MemberProfileCommon_contentsRight___FPH3">
		<div class="Phone_phoneNum__1km1x">
			<div class="InputDefault_wrapper__1szeZ Phone_phoneInput__foTIF">
				<input type="text" id="newPhon" placeholder="휴대폰번호 입력" class="InputDefault_inputValid__102ly">
					<div class="input-error-message InputDefault_error__1uKhU" id="phErrorMessage"></div>
			</div>
		</div>
		<button disabled class="Phone_sendCodeButton__1UTdL" id="sendCodeButton">인증번호 전송</button>
		<div class="Phone_codeInputs__3OkMZ">
			<div class="InputDefault_wrapper__1szeZ Phone_phoneInput__foTIF"></div>
			<input disabled id="code" placeholder="인증번호 4자리 입력" type="text" class="InputDefault_inputValid__102ly">
			<div class="input-error-message InputDefault_error__1uKhU" id="codeErrorMessage"></div>
			<button disabled class="MemberProfileCommon_submitButton__1g9tX" id="saveButton">저장</button>
			<button class="MemberProfileCommon_cancelButton__AXcvv" id="cancelButton">취소</button>
		</div>
		</div>
	</section>

</body>
</html>