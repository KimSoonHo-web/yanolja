<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>


function goToHome() {
    window.location.href = "/yanilja";
}
</script>
</head>
<body>
	<header class="SunnyLayout_headerContainer__3E-yF">
		<section class="sunny-nav SunnyNav_container__18unQ">
			<nav class="NavigationBar_container__1EfAG" style="background: white; color: black">
				<div class="NavigationBar_wrap__1Jht4">
					<div class="NavigationBar_leftWrap__1davh NavigationBar_doubleWrap__1_n-x">
						<button id="button" class="BaseButton_button__tzyL8 NavigationBarIconButton_button__2UbJV">
							<span class="Icon_icon__2BP_o" aria-hidden="true">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
									<path d="M17.51 3.87L15.73 2.1 5.84 12 15.74 21.9 17.51 20.13 9.38 12z"></path>
								</svg>
							</span>
						</button>
					</div>
					<div class="NavigationBar_center__18CsD">
						<div class="NavigationBarHeading_container__8vDzj">
							<h1 class="NavigationBarHeading_title__hHbul">${themeVo.themeName}</h1>
						</div>
					</div>
					<div class="NavigationBar_rightWrap__2Fhtd NavigationBar_doubleWrap__1_n-x">
						<a class="BaseButton_pseudo__2cnN7 NavigationBarIconButton_button__2UbJV" onclick="goToHome()">
							<span class="Icon_icon__2BP_o" aria-hidden="true">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
									<path d="M10.06 2.3c-4.142 0-7.5 3.358-7.5 7.5 0 4.142 3.358 7.5 7.5 7.5 1.582 0 3.05-.49 4.259-1.326l5.716 5.715 1.414-1.414-5.648-5.65C16.9 13.323 17.56 11.639 17.56 9.8c0-4.142-3.358-7.5-7.5-7.5zm0 2c3.038 0 5.5 2.462 5.5 5.5s-2.462 5.5-5.5 5.5-5.5-2.462-5.5-5.5 2.462-5.5 5.5-5.5z"></path>
								</svg>
							</span>
						</a>
					</div>
				</div>
			</nav>
			<div class="NavigationBar_body__1c5zE">
				<div class=""></div>
			</div>
		</section>
		<div style="padding-top: 0"></div>
	</header>
</body>
</html>
