<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header class="SubHeader_container__mMQq5">
		<div class="SubHeader_titleWrapWithSubtitle__1jeiu">
			<h2 class="SubHeader_title__1PFTQ">인기 숙소 TOP 6</h2>
			<p class="SubHeader_subtitle__2WB7I">평점 높은 순으로 추천</p>
		</div>
		<div class="SubHeader_aside__1utqv">
			<!-- <a href="/recommend/ranking?type=DI_RECOMMEND_RANKING&amp;target=W48&amp;categoryId=W48_B_1&amp;specifier=P32:all:2" class="BaseButton_pseudo__2cnN7 TextButton_secondary__A_sir SubHeader_textButton__1mZFi">전체보기
				<svg class="TextButton_arrow__1AB9J" xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12">
					<path d="M3.245 10.065L4.13 10.95 9.08 6 4.13 1.05 3.245 1.935 7.31 6 3.245 10.065z"></path>
				</svg>
			</a> -->
		</div>
	</header>
	
	<div class="Swiper_container__3hyq9 Swiper_containerMounted__3UoDr OptimizedHorizontalSwiper_swiper__SXjn5">
    <div style="margin-left:0px;--margin:12px" class="swiper-container swiper-placeholder  Swiper_placeholderCentered__3LxHd">
        <ul style="grid-template-rows:repeat(3, 1fr)" class="OptimizedHorizontalSwiper_listWrapper__34d-1 RecommendationChiplessSwipe_listWrapper__2E5at">
        
        <c:forEach var="hotel" items="${topPopular}" varStatus="status" begin="0" end="5">
            <li class="OptimizedHorizontalSwiper_itemWrapper__1VAFc">
                <a href="/hotelDetail.do?hotelid=${hotel.accommodationNo}" class="OptimizedHorizontalItem_container__j-rRj swiper-slide OptimizedHorizontalSwiper_item__OSic4">
                    <div class="OptimizedHorizontalItem_content__3R9VN">
                        <div class="OptimizedThumbnail_imageWrapper__2As4N" style="width:100px;height:100px">
                            <img src="${hotel.imageUrl} " class="OptimizedThumbnail_imagePlaceholder__xAIsN">
                            <div class="OptimizedThumbnail_TEXT__RANKING__30nCO">${status.index + 1}</div> <!-- 순위 표시 -->
                        </div>
                        <section class="OptimizedHorizontalItem_body__1nbV5">
                            <div class="OptimizedHorizontalItem_bodyTop__3r8h5">
                                <div>
                                    <!-- 가정: hotel 객체 안에 badge라는 필드가 있다고 가정합니다 -->
                                   <span class="OptimizedItemText_BADGE__BORDER_YAPINK__25Aa0">${hotel.badge1}</span>
                                   <span class="OptimizedItemText_BADGE__BORDER_YAPINK__25Aa0">${hotel.badge2}</span>
                                </div>
                                <div>
                                    <span class="OptimizedItemText_TEXT__TITLE__2tPWS">${hotel.name}</span>
                                </div>
                                <section class="OptimizedHorizontalItem_review__1VO14">
                                    <span class="OptimizedReviewInfo_TEXT__DOMESTIC_REVIEW_SCORE__u25BV"><i class="OptimizedReviewInfo_star__1S4T3"></i>${hotel.avgRating}</span>
                                    <span class="OptimizedReviewInfo_TEXT__DOMESTIC_REVIEW_COUNT__22bqH">(${hotel.reviewCount})</span>
                                </section>
                            </div>
                            <!-- 숙박 시설의 가격 정보를 추가하려면 여기에 추가합니다 -->
									<div class="OptimizedHorizontalItem_price__191Yh">
										<div class="OptimizedHorizontalItem_priceInfo__9A-l3">
											<div class="OptimizedPriceInfo_priceWrapper__wNcrx">
												<span class="OptimizedPriceInfo_TEXT__PRICE__1Mn7Q">
												    <fmt:formatNumber value="${hotel.minPrice}" pattern="#,###"/>
												</span>												
												<span class="OptimizedPriceInfo_TEXT__PRICE_UNIT__3R2JK">원</span>
											</div>
										</div>
									</div>
								</section>
                    </div>
                </a>
            </li>
        </c:forEach>
        
        </ul>
    </div>
</div>

	
	
</body>
</html>