<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>상품 페이지</title>


</head>
<body>
	<c:if test="${not empty UserNoSession}">
		<header class="SubHeader_container__mMQq5">
			<div class="SubHeader_titleWrap__3g5at">
				<h2 class="SubHeader_title__1PFTQ">내가 최근 본 숙소</h2>
			</div>
			<div class="SubHeader_aside__1utqv">
				<!-- <a href="" class="BaseButton_pseudo__2cnN7 TextButton_secondary__A_sir SubHeader_textButton__1mZFi">전체보기
			<svg class="TextButton_arrow__1AB9J" xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
				<path d="M3.245 10.065L4.13 10.95 9.08 6 4.13 1.05 3.245 1.935 7.31 6 3.245 10.065z"></path>
			</svg>
		</a> -->
			</div>
		</header>
	</c:if>

	<div class="Swiper_container__3hyq9 Swiper_containerMounted__3UoDr OptimizedVerticalSwipeWidget_swiper__31pfs">
		<div style="margin-left: 20px; --margin: 12px;" class="swiper-container">
			<div class="swiper-wrapper">
				<c:forEach var="item" items="${recentlyViewed}">
					<div class="swiper-slide">
						<a href="/hotelDetail.do?hotelid=${item.accommodationNo}" class="OptimizedVerticalItem_container__3gK9y" style="width: 140px">
							<div class="OptimizedThumbnail_imageWrapper__2As4N OptimizedVerticalItem_thumbnail__Uolri" style="width: 140px; height: 140px">
								<img src="${item.imageUrl}" class="OptimizedThumbnail_imagePlaceholder__xAIsN">
							</div>
							<section class="OptimizedVerticalItem_body__1DHzY">
								<div>
									<c:if test="${not empty item.badge1}">
										<span class="OptimizedItemText_BADGE__BORDER_YAPINK__25Aa0">${item.badge1 }</span>
									</c:if>
									<c:if test="${not empty item.badge2}">
										<span class="OptimizedItemText_BADGE__BORDER_YAPINK__25Aa0">${item.badge2 }</span>
									</c:if>
									<c:if test="${not empty item.badge3}">
										<span class="OptimizedItemText_BADGE__BORDER_YAPINK__25Aa0">${item.badge3 }</span>
									</c:if>
								</div>
								<div>
									<span class="OptimizedItemText_TEXT__TITLE__2tPWS">${item.name}</span>
								</div>
								<section class="OptimizedVerticalItem_review__5nc5z">
									<span class="OptimizedReviewInfo_TEXT__DOMESTIC_REVIEW_SCORE__u25BV"> <i class="OptimizedReviewInfo_star__1S4T3"></i>${item.avgRating}
									</span> <span class="OptimizedReviewInfo_TEXT__DOMESTIC_REVIEW_COUNT__22bqH">(${item.reviewCount})</span>
								</section>
								<div class="OptimizedVerticalItem_priceInfo__38IPl">
									<div class="OptimizedPriceInfo_priceWrapper__wNcrx">
										<span class="OptimizedPriceInfo_TEXT__PRICE__1Mn7Q"> <fmt:formatNumber value="${item.minPrice}" pattern="#,###" />
										</span> <span class="OptimizedPriceInfo_TEXT__PRICE_UNIT__3R2JK">원</span>
									</div>
								</div>
							</section>
						</a>
					</div>
				</c:forEach>
			</div>
			<!-- Next button -->
			<span class="swiper-button-next"> <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
		        <path d="M3.245 10.065L4.13 10.95 9.08 6 4.13 1.05 3.245 1.935 7.31 6 3.245 10.065z"></path>
		    </svg>
			</span>

			<!-- Previous button -->
			<span class="swiper-button-prev swiper-button-disabled"> <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
		        <path d="M8.835 1.885L7.945 1 3 5.95 7.95 10.9 8.835 10.015 4.77 5.95z"></path>
		    </svg>
			</span>
		</div>
	</div>

	<script>
		//Swiper 초기화
		var swiper = new Swiper('.swiper-container', {
			direction : 'horizontal',
			loop : true,
			slidesPerView : 5, // 한번에 5개의 슬라이드를 보여줌
			spaceBetween : 14, // 슬라이드 간의 간격 설정 (옵션: 필요에 따라 조정하세요)
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
		});

		// 버튼 비활성화 상태 처리
		swiper.on('slideChange', function() {
			var prevButton = document.querySelector('.swiper-button-prev');
			var nextButton = document.querySelector('.swiper-button-next');

			if (swiper.isBeginning) {
				prevButton.classList.add('swiper-button-disabled');
			} else {
				prevButton.classList.remove('swiper-button-disabled');
			}

			if (swiper.isEnd) {
				nextButton.classList.add('swiper-button-disabled');
			} else {
				nextButton.classList.remove('swiper-button-disabled');
			}
		});
	</script>


</body>
</html>