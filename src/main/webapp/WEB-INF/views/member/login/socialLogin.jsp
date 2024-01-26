<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- css 시작 -->
<link rel="stylesheet" href="/css/login/socialLogin1.css">
<link rel="stylesheet" href="/css/login/socialLogin2.css">
<link rel="stylesheet" href="/css/login/socialLogin3.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/login/socialLogin.js?ver=20230917"></script>
<body>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<jsp:include page="../header.jsp"/>
<div class="SunnyLayout_container__3PLag login_sunnyContainer__1a8Fx">





<main class="SunnyLayout_bodyContainer__1wWjV login_sunnyBody__2DC37">
	<div class="SocialBody_container__2OIpZ">
		<div class="SocialBody_centerContainer__2PJKt">
			<div class="SocialBody_logoContainer__1rntB">
				<img class="SocialBody_logo__1eOdb" alt="야놀자 로고" src="//yaimg.yanolja.com/joy/sunny/static/images/logo-login-pink.svg">
			</div>
			<div class="SocialLoginButtons_container__3v-KI">
				<img id="loginWithKakao" class="SocialLoginButtons_logo__1LcxX" alt="카카오로 로그인하기" src="//yaimg.yanolja.com/joy/sunny/static/images/img-login-kakao-52.svg">
			
				<img class="SocialLoginButtons_logo__1LcxX" src="//yaimg.yanolja.com/joy/sunny/static/images/img-login-naver-52.svg">
			</div>
			
			<div class="SocialBody_buttonContainer__3q8VX">
				<button id="loginButton" class="BaseButton_button__tzyL8 RectButton_basic__3QCM-">
					<span class="RectButton_label__WcAp7">이메일 로그인</span>
				</button>
			</div>
			
		</div>
	</div>
	
	<div class="SocialBody_bottomContainer__8Qkq9">
		<div class="SocialBody_join__3UE30">
			"아직 야놀자 회원이 아니신가요?"
			<label for="joinButton" class="BaseButton_pseudo__2cnN7 TextButton_basic__120EN SocialBody_joinButton__2Wt4f">"회원가입"
				<svg viewBox="0 0 12 12" height="12" width="12" xmlns="http://www.w3.org/2000/svg" class="TextButton_arrow__1AB9J">
					<path d="M3.245 10.065L4.13 10.95 9.08 6 4.13 1.05 3.245 1.935 7.31 6 3.245 10.065z"></path>
				</svg>
			</label>
		</div>

		<section class="BenefitBanner_container__39Fig BenefitBanner_container__2R0Oz">
			<a style="background-image:url(https://yaimg.yanolja.com/v5/2023/08/30/14/64ef4c4b7db939.60830307.png)" class="BenefitBanner_banner__1aiwU" href="https://yanolja.com/exhibition/7670"></a>
		</section>		
		
	</div>
	
</main>
</div>
</body>
</html>