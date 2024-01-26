<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 전송 시 나오는 인증 창 -->
	<form style="display:none;" class="PhoneVerification_codeWrap__3sV2e" id="code_form">
		<div class="TextField_wrap__28cox">
			<!-- flex -->
			<div class="TextField_container__eyq2I">
				<input value id="code" class="TextField_input__DJM1A" type="tel" >
					<label class="TextField_labelWaiting__2PNTp" for="label_code">인증번호 4자리</label>
					<!-- 틀릴 시 빨간줄  -->
					<div class="TextField_underlineNormal__1l119 " id="code_errorLine"></div>
					<div class="TextFieldAdornment_container__2W2nY">
					<span id="timer"></span>
					</div>
			</div>
			<!-- 에러메시지  -->
			<span class="TextField_messageError__3PGqK" id="code_errorMessage"></span>
		</div>
	</form>
<!-- 텍스트  -->
<ul class="PhoneVerification_notice__FNr4S">
	<li>"인증번호는"<strong>문자메세지</strong>"로 발송되며, 수신하지 못했다면 차단된 메세지를 확인해주세요."</li>
	<li>인증번호 발송에는 시간이 소요됩니다.</li>
</ul>
</body>
</html>