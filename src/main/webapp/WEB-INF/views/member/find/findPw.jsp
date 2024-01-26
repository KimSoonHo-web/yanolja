<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!--css -->
<link rel="stylesheet" href="/css/find/findPw1.css">
<link rel="stylesheet" href="/css/find/findPw2.css">

<!-- javascript -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/find/findPw.js?ver=20230916"></script>

<body>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
 
 <main class="SunnyLayout_bodyContainer__1wWjV">
 	W<div class="find_body__1bpon">
 	
 		<section>
 			<p class="MemberDescBox_container__2jna-">
				"회원가입 시 등록한 아이디를 입력해 주세요."
				<br> 			
				"입력하신 아이디로 비밀번호 변경 가능한 링크를 보내드립니다."
 			</p>
 		</section>
 		
		<section class="MemberContainer_container__36bYI">
			<div class="TextFieldEmail_container__EWzHQ">
				<div class="TextField_wrap__28cox">
					<div class="TextField_container__eyq2I">
						<input id="userEmail" type="email" autofocus class="TextField_input__DJM1A">
						<label class="TextField_labelWaiting__2PNTp" for="email">이메일</label>
						<div class="TextField_underlineNormal__1l119" id="email_errorLine"></div>
					</div>
				<span class="TextField_messageError__3PGqK " id="email_errorMessage"></span>
				</div>
			</div>
			<div class="MemberPasswordFindBody_notice__2xJIM">
				<span class="Icon_icon__2BP_o MemberPasswordFindBody_icon__3EwH2" aria-hidden="true">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
						<path d="M12 2c5.523 0 10 4.477 10 10s-4.477 10-10 10S2 17.523 2 12 6.477 2 12 2zm0 1c-4.97 0-9 4.03-9 9s4.03 9 9 9 9-4.03 9-9-4.03-9-9-9zm-.5 4h1v1h-1V7zm0 3h1v7h-1v-7z"></path> 
					</svg>
				</span>
					"아이디가 이메일 형식이 아닌 경우, 고객센터를 통해서 비밀번호 변경이 가능합니다."
			</div>
		</section> 		
		
		<div class="CallToActionButton_container__3tZWO MemberPasswordFindBody_cta__3LRWs">
			<div class="CallToActionButton_wrap__1k38c">
				<button id="linkButton" disabled class="BaseButton_button__tzyL8 RectButton_primary__3O9TH RectButton_disabled__14E3B CallToActionButton_cta__2yaMl" type="button" >
					<span class="RectButton_label__WcAp7">링크 전송하기</span>
				</button>
			</div>
		</div>
		
 	</div>
 </main>
 
</body>
</html>