<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- CSS 연결 -->
<link rel="stylesheet" href="/css/find/newPw1.css">
<link rel="stylesheet" href="/css/find/newPw2.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/find/newPw.js?ver=20230916"></script>
<body>


<jsp:include page="/WEB-INF/views/common/header.jsp" />

<div style="padding-top:4.4rem;padding-bottom:5rem;height:100%" class="StyleComponent_container__1jS9A">
	<section>
		<section class="MemberContainer_container__36bYI">
		<form>
			<div class="ValidatableInput_wrapper__9obPX">
				<input id="newPw" aria-autocomplete="list" placeholder="새 비밀번호" autocomplete="new-password" class="ValidatableInput_inputValid__3g_86" type="password">
				<div id="newPW_errorMessage" class="ValidatableInput_error__34JJB"></div>
				<i style="display: none;"id="clear1" class="ValidatableInput_clear__3llN4"></i>
			</div>
			
			<div class="ValidatableInput_wrapper__9obPX">
				<input id="newPwCheck" aria-autocomplete="list" placeholder="새 비밀번호 확인" autocomplete="new-password" class="ValidatableInput_inputValid__3g_86" type="password">
				<div id="newPwcheck_errorMessage" class="ValidatableInput_error__34JJB"></div>
				<i style="display: none;" id="clear2"class="ValidatableInput_clear__3llN4"></i>
			</div>
			<p class="MemberPasswordResetBody_caption__R1Smk">
			'*비밀번호는 안전하게 암호화되어 저장됩니다.'
			<br>
			*비밀번호 설정 시 총 8자~20자 이상의 영문+숫자+특수문자로 구성되어야 합니다.
			</p>
			<button id="okButton" disabled class="SubmitButton_button__3jSWK MemberPasswordResetBody_submit__2D0MR">확인</button>
			<input type="hidden" id="inputUserEmail" value=${userEmail}>
			
		</form>
		</section>
	</section>	
</div>

</body>
</html>