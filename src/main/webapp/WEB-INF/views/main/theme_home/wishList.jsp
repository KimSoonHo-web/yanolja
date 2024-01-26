<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>찜한 리스트</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="/css/wish/wishList.css">
<script type="text/javascript" src="/js/wish/wishList.js?ver=20231110"></script>
</head>

<body>
	<div class="SunnyLayout_container__3PLag wishlist_container__1DYyH">
		<main class="SunnyLayout_bodyContainer__1wWjV">
			<div class="StyleComponent_container__1jS9A WishListBody_container__28f1O">
				<div class="WishListBody_itemsWrap__3DBqX">
						<c:forEach items="${wishList}" var="wish">
					<div class="WishListBody_placeItemWrap__1WcPf">
						<input type="checkbox" class="WishListBody_favoriteBtn__3OhjU WishListBody_domestic__1qpa9" data-userNo="${wish.userNo}"data-accommodationNo="${wish.accommodationNo}">
						<!--  -->
							<div class="PlaceListItemText_container__fUIgA text-unit">
								<a href="/hotel/3001615" title="${wish.accommodationName }" class="common_clearfix__M6urU"><div class="PlaceListItemText_area__3l67D">
										<div class="PlaceListItemText_image__2mlnK place-image">
											<div class="PlaceListImage_container__t-mGF">
												<div class="PlaceListImage_imageTextPlaceholder__1A9kl" style="background-image: url(&quot;//yaimg.yanolja.com/joy/sunny/static/images/logo-yanolja-white.svg&quot;);"></div>
												<div class="PlaceListImage_imageText__2XEMn" style="background-image: url('${wish.imageUrl}');"></div>
											</div>
											<div class="PlaceListDistance_containerText__2ODf3">
												<i></i><span>${wish.addressDescription }</span>
											</div>
										</div>
										<div class="PlaceListItemText_contents__2GR73 place-content PlaceListItemText_singlePrice__1aj9I">
											<div class="PlaceListTitle_container__qe7XH">
												<strong class="PlaceListTitle_text__2511B">${wish.accommodationName }</strong>
											</div>
											<div class="PlaceListItemText_extraInfos__3Bp2B">
												<div class="PlaceListScore_container__2-JXJ PlaceListItemText_score__1O-nW">
													<span class="PlaceListScore_rating__3Glxf"><i class="PlaceListScore_star__2IZFX"></i>4.3</span><span class="PlaceListScore_reviewInfo__3QSCU">(835)</span>
												</div>
											</div>
											<div class="PlaceListGrade_container__1oIhJ">
												호텔 · ${wish.accommodationRating } <img src="//yaimg.yanolja.com/joy/sunny/static/images/tag-mark-kto-2023-08@2x.png" class="PlaceListGrade_gradeImage__2-X45">
											</div>
											<div class="PlaceListItemText_prices__2_1nN">
												<div class="PlaceListItemText_price__2pF1C">
													<div class="PlacePriceInfoV2_topInfo__mDkFX">
														<span>${wish.roomOptions }</span><span>${wish.checkInTime }~</span><span class="PlacePriceInfoV2_divider__aTonr"></span>
														<!-- <span>11%</span><span class="PlacePriceInfoV2_price__1zfCf">730,000</span> -->
													</div>
													<div class="PlacePriceInfoV2_bottomInfo__2h62q">
														<span class="PlacePriceInfoV2_discountPriceContainer__1O-F6"><span class="PlacePriceInfoV2_discountPrice__1PuwK">${wish.minRoomPrice }</span><span class="PlacePriceInfoV2_discountPriceUnit__2DOb3">원~</span>
														<!-- <span class="PlacePriceInfoV2_daysCount__3mKRs">/4박</span> --></span>
													</div>
												</div>
											</div>
										</div>
									</div>
										<c:if test="${not empty wish.paccommodationDescription}">
										<div class="PlaceListItemText_eventArea__1E9a1 event-area">
											<div class="PlaceListItemText_event__2pxd8">
												<div class="PlaceListItemText_eventItem__1AsAX">
													<strong>이벤트</strong>${wish.paccommodationDescription}
												</div>
											</div>

										</div>
									</c:if>
								</a>
							</div>
					</div>

				</c:forEach>
				<!--  -->
				</div>
				<div class="ToTopButton_container__80T0O WishListBody_toTopButton__3C4kW ToTopButton_zeroDuration__1U1zi ToTopButton_hide__xStR1">
					<button class="ToTopButton_button__2Y4Fv">
						<img src="//yaimg.yanolja.com/joy/sunny/static/images/icon-arrow-less-line-1.svg" alt="맨 위로">
					</button>
				</div>
				<div class="SnackBar_container__El92l" style="transform: translateY(10px)">
					<div class="WishListSnackBar_snackBar__3aB3Q">
						찜 목록에서 삭제했습니다<a class="WishListSnackBar_undoBtn__2qnJy">실행 취소</a>
					</div>
				</div>
			</div>
			<!-- 	<aside class="PageTabs_wrap__3Ebg-">
				<nav class="PageTabs_container__24cCl">
					<a href="/area" class="TabItem_wrap__37WMM TabItem_itemInactive__2uO86" title="지역"><div class="TabItem_area__jkPRt">
							<i class="TabItem_tabIcon__519_q"></i><span class="TabItem_label__3IPc7">지역</span>
						</div></a><a href="/around" class="TabItem_wrap__37WMM TabItem_itemInactive__2uO86" title="내주변"><div class="TabItem_around__3jWb6">
							<i class="TabItem_tabIcon__519_q"></i><span class="TabItem_label__3IPc7">내주변</span>
						</div></a>
					<div class="TabItem_homeWrap__2CrPX">
						<a><div class="TabItem_homeIcon__31_1u"></div></a>
					</div>
					<a href="/wishlist" class="TabItem_wrap__37WMM TabItem_itemInactive__2uO86" title="찜"><div class="TabItem_wishlist__eHc4w TabItem_active__lMexY">
							<i class="TabItem_tabIcon__519_q"></i><span class="TabItem_label__3IPc7">찜</span>
						</div></a><a href="/mypage" class="TabItem_wrap__37WMM TabItem_itemInactive__2uO86" title="마이"><div class="TabItem_mypage__vskCp">
							<i class="TabItem_tabIcon__519_q"></i><span class="TabItem_label__3IPc7">마이</span>
						</div></a>
					<div class="PageTabs_tabBackground__3f1HM">
						<div class="PageTabs_centerSquare__j79CI"></div>
					</div>
				</nav>
			</aside> -->
			<!-- pageTabs-->
			<jsp:include page="/WEB-INF/views/common/pageTabs.jsp" />
		</main>
	</div>
</body>
</html>