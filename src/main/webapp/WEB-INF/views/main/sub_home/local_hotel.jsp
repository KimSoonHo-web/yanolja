<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css 시작 -->
<link rel="stylesheet" href="/css/main/sub_hotel/local_hotel/local_hotel1.css">
<link rel="stylesheet" href="/css/main/sub_hotel/local_hotel/local_hotel2.css">
<!-- 자바스크립트  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/main/sub_hotel/local_hotel.js?ver=20230921"></script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/common/local_hotel_header.jsp" />

	<div class="StyleComponent_container__1jS9A list_listContainer__2kL99 list_bottomPadding__xvWzu">

		<section class="PlaceListBody_placeListBodyContainer__1u70R">
			<div class="PlaceListBody_listGroup__LddQf">
				<section class="PlaceGroupHeaderText_container__26NlA">
					<span class="PlaceGroupHeaderText_title__1b0N8">야놀자 초이스</span>
					<div class="AbstractTooltip_container__1Jdli PlaceGroupHeaderText_ad__3f7-t">
						<span class="PlaceGroupHeaderText_adText__2mzI5">AD</span>
					</div>
				</section>

				<!-- 리스트 -->
				<div class="PlaceListBody_topAdWrap__3Y4Aw PlaceListBody_itemGroup__1V8Q3">
					<c:forEach items="${localhotelList}" var="list">
						<div class="PlaceListItemBanner_container__ARsIm banner-unit">
							<a href="hotelDetail.do?hotelid=${list.accommodationNo}" title="${list.accommodationName}">
								<div class="PlaceListItemBanner_image__1-YJA">
									<div class="PlaceListImage_container__t-mGF">
										<div class="PlaceListImage_imageSmallPlaceholder__7ic0v" style="background-image: url('${list.accommodationImageUrl}');"></div>
										<div class="PlaceListImage_imageSmall__1NuLT" style="background-image: url('${list.accommodationImageUrl}');"></div>
									</div>
									<div class="PlaceListDistance_containerBanner__2r0mD">
										<i></i><span>${list.addressDescription }</span>
									</div>
								</div>
								<div class="PlaceListItemBanner_contents__1oW8G">
									<div>
										<div class="ProductBadges_container__1A4Ml">
											<c:if test="${not empty list.badge1}">
												<span class="ProductBadges_badge__PRhPM" style="color: rgb(222, 46, 95); border: 0.1rem solid rgba(222, 46, 95, 0.2); font-weight: 700;">${list.badge1}</span>
											</c:if>
											<c:if test="${not empty list.badge2}">
												<span class="ProductBadges_badge__PRhPM" style="color: rgb(222, 46, 95); border: 0.1rem solid rgba(222, 46, 95, 0.2); font-weight: 700;">${list.badge2}</span>
											</c:if>
											<c:if test="${not empty list.badge3}">
												<span class="ProductBadges_badge__PRhPM" style="color: rgb(222, 46, 95); border: 0.1rem solid rgba(222, 46, 95, 0.2); font-weight: 700;">${list.badge3}</span>
											</c:if>
										</div>
										<div class="PlaceListTitle_container__qe7XH">
											<strong class="PlaceListTitle_text__2511B">${list.accommodationName }</strong>
										</div>
										<div class="PlaceListScore_container__2-JXJ PlaceListItemBanner_score__3HHN5">
											<span class="PlaceListScore_rating__3Glxf"><i class="PlaceListScore_star__2IZFX"></i>${list.averageRating}</span><span class="PlaceListScore_reviewInfo__3QSCU">(${list.totalReviews})</span>
										</div>
										<span class="PlaceListItemBanner_dot__2BR13">·</span>
										<div class="PlaceListGrade_container__1oIhJ PlaceListItemBanner_grade__IQejw">
											${list.accommodationRating} <img src="//yaimg.yanolja.com/joy/sunny/static/images/tag-mark-kto-2023-08@2x.png" class="PlaceListGrade_gradeImage__2-X45">
										</div>
									</div>
									<div class="PlaceListItemBanner_prices__5aywq">
										<div class="PlaceListItemBanner_price__2J7Ss">
											<div class="PlacePriceInfoV2_topInfo__mDkFX">
												<span>${list.roomOption}</span><span>${fn:substring(list.checkInTime, 0, 5)}~</span>

											</div>
											<div class="PlacePriceInfoV2_bottomInfo__2h62q">
												<span class="PlacePriceInfoV2_discountPriceContainer__1O-F6"><span class="PlacePriceInfoV2_discountPrice__1PuwK"><fmt:formatNumber value="${list.minRoomPrice}" groupingUsed="true" pattern="#,##0" /> </span><span class="PlacePriceInfoV2_discountPriceUnit__2DOb3">원~</span></span>
											</div>
										</div>
									</div>
									<c:if test="${not empty list.accommodationDescription}">
										<div class="PlaceListItemBanner_event__eW-9j">
											<div class="PlaceListItemBanner_eventItem__1n2t6">
												<strong>이벤트</strong><span>${list.accommodationDescription}</span>
											</div>
										</div>
									</c:if>
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
				<!--  -->
			</div>
		</section>
	</div>

	<div style="display: none;" class="ReactModalPortal">
		<jsp:include page="/WEB-INF/views/main/theme_home/local_serch_modal.jsp"/>
	</div>
</body>
</html>