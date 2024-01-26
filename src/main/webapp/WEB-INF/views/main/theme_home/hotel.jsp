<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css 시작 -->
<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel1.css">
<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel2.css">
<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel3.css">
<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel4.css">
<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel5.css">
<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel6.css">
<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel7.css">
<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel8.css">
<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel9.css">
<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel10.css">
<!-- 자바스크립트  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/main/sub_hotel/hotel.js?ver=20230918"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/theme_header.jsp"/>

<main class="SunnyLayout_bodyContainer__1wWjV">
	<section class="sub-home_body__3kGpk">
		<section class="SubhomeOrderingWidgetContainer_orderingContainer__1xAZ2">
			<section class="OrderingWidgetContainer_container__39Hyk">
				
				
				<!-- 지역 검색 -->
				<jsp:include page="local_search.jsp"/>
				<!-- 테마컨텐츠 -->
				<jsp:include page="theme_store.jsp"/>
				<!-- 베너 -->
				<section class="BenefitBanner_container__39Fig OrderingWidgetContainer_noPadding__2lQQ4">
					<a href="https://yanolja.com/exhibition/7788" class="BenefitBanner_banner__1aiwU" style="background-image:url(https://yaimg.yanolja.com/v5/2023/09/26/18/6513284920fff4.45265759.png)"></a>
				</section>
				<!--최근 본 숙소  -->
				<section class="OptimizedVerticalSwipeWidget_container__qgWwO">
					<jsp:include page="related_hotel.jsp"/>
				</section>
				<!-- 인기TOP 6  -->
				<section class="OptimizedHorizontalSwipeWidget_container__2hpeY">
					<jsp:include page="top_hotel.jsp"/>
				</section>
				
				
				
				
				
			</section>
   			
		</section>
	</section>
</main>
<!-- 모달 -->
<div id="ReactModalPortal" style="display: none;" class="ReactModalPortal">
<jsp:include page="local_serch_modal.jsp"/>
</div>
</body>
</html>