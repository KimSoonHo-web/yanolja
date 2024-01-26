
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Swiper CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- css 시작 -->
<link rel="stylesheet" href="/css/main/sub_hotel/hotel_detail1.css">
<!-- 자바스크립트  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/main/sub_hotel/hotel_detail.js?ver=20231025"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=s16c13u2ur&submodules=geocoder"></script>


<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel1.css">
<link rel="stylesheet" href="/css/main/sub_hotel/sub_hotel2.css">


</head>
<body>

	<div class="css-12m1tuf">
		<div class="css-fwupcd">
			<main class="css-zfw73u">

				<!-- 스와이퍼  -->
				<section style="background: white;" class="css-7lnims">
					<div class="swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img style="max-width: 100%; min-width: 100%;" src="${hotelDetail.imageUrl}">
							</div>

							<!-- 여기에 추가 슬라이드들이 삽입될 것입니다 -->
						</div>
					</div>
					<div>
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


				</section>
				<div style="background: white;">
					<div class="css-jgy2uu">
						<div class="css-o422io">
							<div class="css-pcugry">
								<span class="css-bgooht">${hotelDetail.badge1}</span> <span class="css-bgooht">${hotelDetail.badge2}</span>
							</div>
							<div class="css-1mrw3dz">
								<div class="css-1xsh8xn">${hotelDetail.rating}</div>
							</div>
							<div class="css-11vo59c">
								<div class="css-t9rim1">${hotelDetail.name}</div>
								<div class="css-mmz0fs">

									<div id="like" class="css-7i3sq0"></div>

									<div width="2rem" height="2rem" class="css-1btrnfr"></div>
								</div>
							</div>
							<!-- 지도 API -->
							<div id="map_modal" class="css-10yje3s">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik04IDEuODMzQTQuNjYzIDQuNjYzIDAgMDExMi42NjcgNi41QzEyLjY2NyAxMCA4IDE1LjE2NyA4IDE1LjE2N2wtLjI3NS0uMzE2Yy0xLTEuMTczLTQuMzkyLTUuMzY3LTQuMzkyLTguMzUxQTQuNjYzIDQuNjYzIDAgMDE4IDEuODMzem0wIDNhMS42NjcgMS42NjcgMCAxMTAgMy4zMzQgMS42NjcgMS42NjcgMCAwMTAtMy4zMzR6IiBmaWxsPSIjMDE1MkNDIi8+PC9zdmc+"
									class="css-196c2ai">
								<div class="css-1tp1uty">
									${hotelDetail.addressDescription }
									<div class="css-14382qp">
										<svg width="12" height="12" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd" clip-rule="evenodd" d="M3.245 10.065l.885.885L9.08 6 4.13 1.05l-.885.885L7.31 6l-4.065 4.065z" fill="#0152CC"></path>
										</svg>
									</div>
								</div>
							</div>
							<!-- 후기  -->
							<div id="review" class="css-1msh3pp">
								<div class="css-zvly3h">
									<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="css-1eswlvd">
										<linearGradient id="half"> <stop offset="50%" stop-color="#fdbd00"></stop>
											<stop offset="0" stop-color="#ffffff"></stop>
										</linearGradient>
										<path
											d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z"
											fill="#fdbd00" stroke="#E7AC00" stroke-width="0.5" stroke-linejoin="round"></path>
									</svg>
									<span class="css-1decpwd">${hotelDetail.avgRating}</span> <span class="css-1sg2lsz">(<!-- -->${hotelDetail.reviewCount}<!-- -->)
									</span>
									<div class="css-qjskcv">
										<div class="css-10t52xk"></div>
									</div>
								</div>
							</div>
							<!-- 설명 -->
							<div class="css-aghh7l">
								<div>
									<span> <span class="css-7zhfhb">주차불가</span>
									</span>
								</div>
							</div>
							<!-- 배너  -->
							<div>
								<div>
									<div>
										<a class="benefitBanner css-mhtlw" href="https://www.yanolja.com/promotion/nol-promotion?eventcode=NOYHH"> <img class="css-ivt1js" src="https://yaimg.yanolja.com/v5/2023/10/05/11/651e983739db23.92239211.png" alt="Banner">
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 객실선택,위치/교통,안내/정책,시설/서비스,후기 -->
				<div class="css-13xnfx2"></div>
				<div id="content">
					<div class="css-1urbzj6">
						<div id="content-button" class="css-1iizn56">
							<button id="1" class="css-msekco">
								<a>객실선택</a>
							</button>
							<button id="2" class="css-msekco">
								<a>위치/교통</a>
							</button>
							<button id="3" class="css-msekco">
								<a>안내/정책</a>
							</button>
							<button id="4" class=" css-msekco">
								<a>시설/서비스</a>
							</button>
							<button id="5" class=" css-msekco">
								<a>후기</a>
							</button>
						</div>
					</div>
					<!-- 바뀔 부분  -->
					<div id="category" class="css-17c0wg8">
						<div id="content-1" style="display: block;"><jsp:include page="room_selection.jsp" /></div>
						<div id="content-2" style="display: none;"><jsp:include page="location_transportation.jsp" /></div>
						<div id="content-3" style="display: none;"><jsp:include page="information_policy.jsp" /></div>
						<div id="content-4" style="display: none;"><jsp:include page="facilities_services.jsp" /></div>
						<div id="content-5" style="display: none;"><jsp:include page="review.jsp" /></div>
					</div>
				</div>
			</main>
			<!-- 푸터 -->
			<footer class="css-1ago99h">
				<footer class="css-6b8d6g">
					<div class="css-jycldt">
						<img
							src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNzYiIGhlaWdodD0iMjIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxkZWZzPjxwYXRoIGlkPSJhIiBkPSJNMCAyMS45ODVoNzUuNTU4VjBIMHoiLz48L2RlZnM+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cGF0aCBkPSJNNDcuNjg2IDEyLjg1M2MtLjU4Ny42MjctMS4zMjcuOTQyLTIuMjE0Ljk0Mi0uODg1IDAtMS42Mi0uMzEtMi4xOTgtLjkyNy0uNTgtLjYyLS44Ny0xLjQyNy0uODctMi40MjkgMC0uOTcuMjk1LTEuNzY0Ljg4LTIuMzg3LjU4Ny0uNjIyIDEuMzItLjkzNiAyLjItLjkzNi44OTggMCAxLjY0LjMwOCAyLjIxNS45MjMuNTgxLjYxNy44NyAxLjQyLjg3IDIuNCAwIC45ODYtLjI5MyAxLjc5LS44ODMgMi40MTRtLjc1NS03LjYzM2E1LjkwNiA1LjkwNiAwIDAwLTMuMDA3LS44MTNjLTEuNDY5IDAtMi43NzUuNTItMy45MSAxLjU2Mi0xLjI5NCAxLjE5NS0xLjk0IDIuNjg3LTEuOTQgNC40ODEgMCAxLjY3NS41NzMgMy4wOTUgMS43MTYgNC4yNjcgMS4xNDkgMS4xNzMgMi41MjYgMS43NiA0LjE0NyAxLjc2YTUuOSA1LjkgMCAwMDMuMDE5LS44IDUuODE4IDUuODE4IDAgMDAyLjE2NC0yLjIwOCA2LjEyMiA2LjEyMiAwIDAwLjc5LTMuMDM4YzAtMS4wNzctLjI1OC0yLjA4LS43ODctMy4wMDhhNS44MTkgNS44MTkgMCAwMC0yLjE5Mi0yLjIwMyIgZmlsbD0iIzkxOTE5MSIvPjxtYXNrIGlkPSJiIiBmaWxsPSIjZmZmIj48dXNlIHhsaW5rOmhyZWY9IiNhIi8+PC9tYXNrPjxwYXRoIGZpbGw9IiM5MTkxOTEiIG1hc2s9InVybCgjYikiIGQ9Ik01My4zOCAxNi4zNjhoMi44MTdWLjAwMUg1My4zOHptOC4zNDUtMTEuODY1aC0yLjgydjEwLjMxMWMwIDMuMDI4LS4xNjYgNC4wNjEtMi40NDUgNC4yNTd2Mi45MTVjNS4zMDEgMCA1LjI2NS00LjQwMyA1LjI2NS02LjM3OFY0LjUwM3ptLTM5LjU2NyA3LjE5OWEzLjI0MSAzLjI0MSAwIDAxLTEuNzA0IDEuNzM1IDMuMTc5IDMuMTc5IDAgMDEtMi40NzQgMCAzLjIwMSAzLjIwMSAwIDAxLTEuMDE1LS43IDMuMjI0IDMuMjI0IDAgMDEtLjkzOS0yLjI5NGMwLS40NDguMDg0LS44NzUuMjUyLTEuMjY4YTMuMjA3IDMuMjA3IDAgMDExLjcwMi0xLjc0MWMuMzc5LS4xNjcuOC0uMjUzIDEuMjM4LS4yNTMuNDM1IDAgLjg1NS4wODYgMS4yMzYuMjUzLjM4OS4xNy43My40MDMgMS4wMTguNjk2YTMuMjg5IDMuMjg5IDAgMDEuOTMzIDIuMzEzYzAgLjQ0Ny0uMDg0Ljg3MS0uMjQ3IDEuMjU5TTIzLjQxIDYuMTZhNS44NiA1Ljg2IDAgMDAtOC4zODguMDAzIDUuODg1IDUuODg1IDAgMDAtMS4yOSAxLjk2NSA2LjE0OSA2LjE0OSAwIDAwLS4wMDQgNC42MTIgNi4wNTggNi4wNTggMCAwMDEuMjk0IDEuOTY4IDUuOTUzIDUuOTUzIDAgMDAxLjkxIDEuMzA0IDUuNzcgNS43NyAwIDAwMi4yODUuNDY1YzEuOTU2IDAgMy4xODctMS4zMiAzLjE4Ny0xLjMydjEuMjA4aDIuNzQ1di01LjkyMmMwLS44LS4xNS0xLjU4Mi0uNDQ0LTIuMzE1QTYuMDEgNi4wMSAwIDAwMjMuNDEgNi4xNm00OS4xNTggNS41NDJjLS4xNy4zOTctLjQuNzQ2LS42ODUgMS4wMzUtLjI4OS4yOTQtLjYzLjUyOC0xLjAyLjdhMy4xNzUgMy4xNzUgMCAwMS0yLjQ3MiAwIDMuMjE1IDMuMjE1IDAgMDEtMS4wMTctLjcgMy4yMDQgMy4yMDQgMCAwMS0uNjg5LTEuMDM1IDMuMTggMy4xOCAwIDAxLS4yNDktMS4yNTljMC0uNDQ4LjA4My0uODc1LjI1Mi0xLjI2OGEzLjIgMy4yIDAgMDExLjcwNC0xLjc0MWMuMzgtLjE2Ny44LS4yNTMgMS4yMzUtLjI1My40MzcgMCAuODU2LjA4NiAxLjIzNi4yNTMuMzkuMTcuNzMxLjQwMyAxLjAyLjY5Ni4yODUuMjk0LjUxNi42NDMuNjg1IDEuMDQ2LjE2My4zOTIuMjQ5LjgyLjI0OSAxLjI2NyAwIC40NDctLjA4Ni44NzEtLjI1IDEuMjU5bTEuMjU0LTUuNTQyYTUuODYyIDUuODYyIDAgMDAtOC4zODkuMDAzIDUuOTQ3IDUuOTQ3IDAgMDAtMS4yOSAxLjk2NSA2LjE0NiA2LjE0NiAwIDAwLS4wMDIgNC42MTIgNi4wOCA2LjA4IDAgMDAxLjI5MiAxLjk2OCA1Ljk0IDUuOTQgMCAwMDEuOTExIDEuMzA0Yy43Mi4zMDggMS40ODkuNDY1IDIuMjg0LjQ2NSAxLjk1OSAwIDMuMTktMS4zMiAzLjE5LTEuMzJ2MS4yMDhoMi43NDF2LTUuOTIyYzAtLjgtLjE0OS0xLjU4Mi0uNDQ1LTIuMzE1YTUuOTUgNS45NSAwIDAwLTEuMjkyLTEuOTY4bS00My42MiA0LjQ1M3Y1Ljc1NWgtMi44MTZWNC41MTZoMi44NHYxLjAyOGEzLjA3IDMuMDcgMCAwMS42MjEtLjQ3NCA0Ljg3NCA0Ljg3NCAwIDAxMS41OTItLjU5M2MuMjgyLS4wNTQuNTUyLS4wOC44MTQtLjA4YTQuOTcgNC45NyAwIDAxMS42NS4yNzZjLjUyOS4xODYuOTk3LjQ3MiAxLjQwOS44NTUuNDEuMzg1LjczOS44ODIuOTkgMS40OS4yNDQuNjExLjM3IDEuMzQyLjM3IDIuMTc3djcuMTczaC0yLjgxN3YtNi40M2MwLS4zMy0uMDE0LS42MDItLjAzNS0uODMxdi0uMDAxYy0uMDEtLjE0LS4wNjMtLjQwOS0uMDYzLS40MDktLjIxLTEuMTA1LTEuMi0xLjg2Ni0yLjIxNi0xLjc3MyAwIDAtMS40MTEuMDU0LTIuMDAxIDEuMzkyIDAgMC0uMzU1LjYyNy0uMzM4IDIuMjk3TTguMDgzIDE2LjE4NGw0Ljk5NS0xMS42OEg5Ljg1bC0zLjMyNiA3Ljk5OEwzLjIzIDQuNTAzSDBsNC45NTMgMTEuNjgtMi40ODMgNS44MDNoMy4xMzVsMi40NzgtNS44aC4wMDN6Ii8+PC9nPjwvc3ZnPg=="
							alt="yanolja">
					</div>
					<div class="css-w0ggw">
						<p>객실사진의 경우 객실별 대표사진으로 실제 배정받는 객실과 상이할 수 있습니다.</p>
						<p>(주)야놀자는 통신판매 중개자로서 통신판매의 당사자가 아니며 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다.</p>
						<p>숙박업소는 법적으로 청소년 고용과 혼숙이 금지되어 있습니다. 따라서 청소년 혼숙으로 인한 입실거부는 정당하며, 이에 대한 법적 제재는 이용 당사자가 책임져야 합니다.</p>
					</div>
				</footer>
			</footer>
			<!-- 헤더 -->
			<header id="header" class="css-14839ox">
				<div id="property-header" class="css-r18btq">
					<div class="css-sevc8p">
						<div class="css-1v6k278">
							<img
								src="data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3e %3cg fill='none' fill-rule='evenodd'%3e %3cg fill='black'%3e %3cpath d='M17.51 3.87L15.73 2.1 5.84 12 15.74 21.9 17.51 20.13 9.38 12z' transform='translate(-20 -12) translate(20 12)'/%3e %3c/g%3e %3c/g%3e%3c/svg%3e"
								id="back-button" draggable="false" class="css-1i028dt">
							<div data-testid="content" class="css-17e7ihx">
								<span>${hotelDetail.name }</span>
							</div>
							<div data-testid="buttons" class="css-4j64ic">
								<div class="css-pkkko5">
									<div class="css-1q9xhqm"></div>
								</div>
								<div class="css-aodoy9">
									<div class="css-1ai9mni"></div>
								</div>
							</div>
						</div>
						<div class="css-0"></div>
					</div>
					<div id="property-sticky-header" class="css-k59gj9">
						<div id="property-sticky-header__portal"></div>
						<div id="property-sticky-header__room-selector"></div>
					</div>
				</div>
			</header>
			<!-- 헤더 end-->
		</div>
	</div>

	<script>
		/* 호텔 상세 이미지 사진 스와이퍼*/
		function swiper() {
			var roomImageUrls = '${hotelDetail.roomImageUrl}'.split(','); // 콤마로 분할

			roomImageUrls.forEach(function(url) {
				var slideElement = $('<div>').addClass('swiper-slide');
				var imgElement = $('<img>').attr('src', url).css({
					'max-width' : '100%',
					'min-width' : '100%'
				});

				slideElement.append(imgElement);
				$('.swiper-wrapper').append(slideElement);
			});

			var mySwiper = new Swiper('.swiper', {
				navigation : {
					nextEl : '.swiper-button-next',
					prevEl : '.swiper-button-prev',
				},
				slidesPerView : 1,
			});
		}
		//로그인 한 유저 아이디 
		var userNo = null;
		<c:if test="${not empty userNo}">
		userNo = ${userNo};
		</c:if>



	</script>
</body>
<%-- <div style="display: none;" id="map_modal_form" class="open css-q31e3o">
	<jsp:include page="map_modal.jsp" />
</div> --%> 
</html>