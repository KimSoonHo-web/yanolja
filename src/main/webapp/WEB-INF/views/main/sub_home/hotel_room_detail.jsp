
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 상세</title>
<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Swiper CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="/css/room/roomDetail.css">
<script type="text/javascript" src="/js/main/room_detail/room_detail.js?ver=20231030"></script>
</head>
<body class="css-11zhy3w">

	<div class="css-187bnb2">
		<div class="css-fwupcd">
			<main class="css-1iok16y">
			<!-- 헤더 -->
			
				<article class="css-0">
					<!-- 스와이퍼 세션 -->
					<section class="css-126qfvz">
						<div class="swiper">
							<div class="swiper-wrapper">
								<c:forEach var="imageUrl" items="${roomImages}" varStatus="status">
									<div class="swiper-slide">
										<div class="photoSwipeItem">
											<img src="${imageUrl}" class="slide-image">
										</div>
									</div>
								</c:forEach>
							</div>
						</div>

						<div class="css-yyi303">
							<div type="prev" class="css-1mtkg4f"></div>
							<div type="next" class="css-ln49wb"></div>
						</div>
						<div class="css-nb5aab">
							<figcaption class="css-mp47bi">
								<span></span> <span></span> <span></span>
							</figcaption>
						</div>
					</section>
					<!-- end -->
					<section class="css-gs34ha">
						<article class="css-9j8nig">
							<div class="css-cwsr4f">
								<div class="css-utgkk9">${roomDetails.roomType}</div>
								<div class="css-1o2x8u9">${roomDetails.description1}</div>
							</div>
							<div class="css-1ovurkh">
								<div width="2rem" height="2rem" class="css-1btrnfr"></div>
							</div>
						</article>
						<a href="/hotelDetail.do?hotelid=${hotelId}" class="css-1k76dnm"> <span class="css-1jeifp3">${roomDetails.accommodationName}</span> <span class="css-o9wix8"></span> <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 24 24">
							<path fill="#000" d="M6.49 20.13l1.77 1.77 9.9-9.9-9.9-9.9-1.77 1.77L14.62 12l-8.13 8.13z" fill-rule="evenodd" />
						</svg>
						</a>
					</section>
				</article>
				<section class="css-e16lwm">
					<div class="filter-button-wrapper css-1tka3zs">
						<article class="css-p41496">
							<button class="css-1sefil">
								<span class="css-tm7et1"> <span class="css-1edki26">${checkIn}</span> <span class="css-1edki26">~</span> <span class="css-1edki26">${checkOut}</span> <span class="css-1edki26">•</span> <span class="css-1edki26"> ${totalDays}박</span>
								</span>
							</button>
							<button class="css-1azi9w7">
								<span class="css-0">성인 ${adultCount },</span><span class="css-lhvjvv">아동 ${childCount}</span>
							</button>
						</article>
					</div>
					<!--  -->
					<ul class="css-1wetflk">
						<li class="css-strwe"><div class="css-wszbgs">
								<div class="css-1wxsndh">
									숙박<span class="css-h23jv4"><span class="css-bgooht">${roomDetails.badge1 }</span><span class="css-bgooht">${roomDetails.badge2 }</span><span class="css-bgooht">${roomDetails.badge3 }</span></span>
								</div>
								<div class="css-1xcx7se">
									<span class="css-182jvlg">인원</span> <span class="css-1xq69z3">${roomDetails.description2 }</span> <span class="css-182jvlg">체크인</span> <span class="css-1xq69z3">${roomDetails.checkInTime }</span> <span class="css-182jvlg">체크아웃</span> <span class="css-1xq69z3">${roomDetails.checkOutTime}</span>
								</div>
								<div color="#dc0328" class="css-1kvxeeo">
									취소 및 환불 불가
									<svg width="14" height="14" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
										<path d="M7.333 4.667h1.334V6H7.333V4.667zm0 2.666h1.334v4H7.333v-4zm.667-6A6.67 6.67 0 001.333 8 6.67 6.67 0 008 14.667 6.67 6.67 0 0014.667 8 6.67 6.67 0 008 1.333zm0 12A5.34 5.34 0 012.667 8 5.34 5.34 0 018 2.667 5.34 5.34 0 0113.333 8 5.34 5.34 0 018 13.333z" fill="#616161"
											fill-rule="evenodd"></path></svg>
								</div>
								<div class="css-13eqkna">
									<ul class="css-87gdnz">
										<li class="css-16yt551">도보전용</li>
									</ul>
									<div class=" css-wpqszh">
										<div class="css-13cu8wc">
											<div class="css-wpyh1f"></div>
											<div class="css-xtgcg1">
												${roomDetails.price	}<span>원</span>
											</div>
										</div>
										<!-- 쿠폰가 나중에  -->
										<!-- <div class="css-xkgp56">
											<span class="css-xozbvl">1만원 쿠폰가
											</span><span class="css-xtgcg1">160,000<span>원</span><span class="css-ymz4js"><svg width="14" height="14" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
														<path d="M7.333 4.667h1.334V6H7.333V4.667zm0 2.666h1.334v4H7.333v-4zm.667-6A6.67 6.67 0 001.333 8 6.67 6.67 0 008 14.667 6.67 6.67 0 0014.667 8 6.67 6.67 0 008 1.333zm0 12A5.34 5.34 0 012.667 8 5.34 5.34 0 018 2.667 5.34 5.34 0 0113.333 8 5.34 5.34 0 018 13.333z" fill="#616161"
															fill-rule="evenodd"></path></svg></span></span>
										</div> -->
									</div>
								</div>
								<div class="css-1qw2ogx">
									<span class="css-11pgbyx"></span>
									<button data-testid="" class="css-36p1ii">객실 예약하기</button>
								</div>
								<div class="css-1quqv5r">남은 객실 ${roomDetails.roomCount}개</div>
							</div></li>
					</ul>
					<!--  -->

				</section>
			</main>
		</div>
	</div>



	<div class="open css-1uxybp6" opacity="0.5" data-testid="" style="align-items: flex-end;">
		<jsp:include page="/WEB-INF/views/common/accommodation_reservation_modal.jsp" />
	</div>



</body>
</html>