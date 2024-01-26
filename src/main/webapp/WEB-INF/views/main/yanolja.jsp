<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<!-- css 시작 -->
<link rel="stylesheet" href="/css/main/main1.css">
<link rel="stylesheet" href="/css/main/main2.css">
<link rel="stylesheet" href="/css/main/main3.css">
<link rel="stylesheet" href="/css/main/main4.css">
<link rel="stylesheet" href="/css/main/main5.css">
<link rel="stylesheet" href="/css/main/main6.css">
<link rel="stylesheet" href="/css/main/main7.css">
<link rel="stylesheet" href="/css/main/main8.css">
<link rel="stylesheet" href="/css/main/main9.css">
<link rel="stylesheet" href="/css/main/main10.css">
<link rel="stylesheet" href="/css/main/main11.css">
<link rel="stylesheet" href="/css/main/main12.css">
<link rel="stylesheet" href="/css/main/main13.css">
<link rel="stylesheet" href="/css/main/main14.css">
<link rel="stylesheet" href="/css/main/main15.css">
<link rel="stylesheet" href="/css/main/main16.css">
<link rel="stylesheet" href="/css/main/main17.css">
<link rel="stylesheet" href="/css/main/main18.css">
<link rel="stylesheet" href="/css/main/main19.css">
<link rel="stylesheet" href="/css/main/main20.css">
<link rel="stylesheet" href="/css/main/main21.css">
<!-- 자바스크립트  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/main/main.js?ver=20230918"></script>
<!-- Swiper CSS 라이브러리 추가 -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
<!-- Swiper 자바스크립트 라이브러리 추가 -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

</head>
<body>
	<!-- header -->
	<jsp:include page="search_box.jsp"/>
	<!-- main -->
	<div class="StyleComponent_container__1jS9A index_container__3kY3K">
				<section class="OrderingWidgetContainer_container__39Hyk">
				<!-- 카테고리 아이콘  -->
					<jsp:include page="quickCategory.jsp"/>
				<!-- 베너  -->
					<jsp:include page="banner.jsp"/>
				<!-- 빠른 카테고리-->	
					<jsp:include page="quickCategory2.jsp"/>
				<!-- 이지역은 이숙소 -->	
				<%-- 	<jsp:include page="Accommodation_by_region.jsp"/> --%>
				</section>
	</div>
	
	
	<!-- pageTabs-->
	<jsp:include page="../common/pageTabs.jsp"/>
</body>
</html>
