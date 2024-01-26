<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<c:set var="headerTitle" value="회원탈퇴" />
<body>
  <!-- 상단  -->
     <header class="SunnyLayout_headerContainer__3E-yF">
				<div
					class="page-title PageTitle_container__wVTJI PageTitle_hasBottomBorder__1vShE white Nav_legacyNav__1-JdX">
					<div class="PageTitle_pageTitleWrap__3xlVE">
						<div class="PageTitle_leftWrap__1DN6c">
							<div>
								<!-- 뒤로 가기 버튼을 누르면 브라우저의 뒤로 가기 동작 수행 -->
								<button id="headerButton" class="PageTitleImageButton_button__3MXeo">
									
									<img
										src="//yaimg.yanolja.com/joy/sunny/static/images/btn-back-v7.svg"
										alt="뒤로가기" />
								</button>
							</div>
						</div>
						<!-- JSTL을 사용하여 헤더 제목을 설정합니다. -->
						<h1 class="PageTitle_pageTitle__Q5MEn" id="PageTitle1">
							<c:out value="${headerTitle}" />
						</h1>
						<div class="PageTitle_rightWrap__18rRe"></div>
					</div>
				</div>
			</header>
</body>
</html>