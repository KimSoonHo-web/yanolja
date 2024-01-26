<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>
<div class="open css-q31e3o">
	<div class="css-12i1j2o">
		<div class="css-12m1tuf">
			<div class="css-11yfoy8">
				<main class="css-zfw73u">
					<article class="css-15u2mhi">
						<section class="css-1bpzrp7">
							유,아동은 입실가능여부 및 추가요금이 숙소마다 달라 <br> 예약 시 안내사항을 확인해주세요
						</section>
						<section class="css-1iyoj2o">
							<!--  성인 버튼 -->
							<article class="css-i9gfd8" id="adult-section">
								<div class="css-1b3egvg">
									<p class="css-10a1zex">성인</p>
									<div class="css-wggumj">
										<!-- 감소버트 -->
										<div id="decrease-button1" class="css-1bdn4ss">
										    <img id="decrease-img1" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNFNUY2RkYiIG9wYWNpdHk9Ii4yIiB4PSIuNSIgeT0iLjUiIHdpZHRoPSIyNyIgaGVpZ2h0PSIyNyIgcng9IjEzLjUiLz48cmVjdCBmaWxsPSIjMDE1MkNDIiBvcGFjaXR5PSIuMyIgeD0iOSIgeT0iMTQiIHdpZHRoPSIxMCIgaGVpZ2h0PSIxIiByeD0iLjUiLz48L2c+PC9zdmc+" alt="" class="css-1cnrxcw">
										</div>
										<p class="css-dycbjq" id="adult-count">2</p>
										<!-- 추가버트 -->
										<div id="add-button1" class="css-n4l38x">
											<div class=" css-lfw64m"></div>
											<img id="add-img1"
												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNGRkYiIHg9Ii41IiB5PSIuNSIgd2lkdGg9IjI3IiBoZWlnaHQ9IjI3IiByeD0iMTMuNSIvPjxwYXRoIGQ9Ik0xMy41IDEzLjV2LTRhLjUuNSAwIDExMSAwdjRoNGEuNS41IDAgMTEwIDFoLTR2NGEuNS41IDAgMTEtMSAwdi00aC00YS41LjUgMCAxMTAtMWg0eiIgZmlsbD0iIzAxNTJDQyIvPjwvZz48L3N2Zz4="
												alt="" class="css-1cnrxcw">
										</div>
									</div>
								</div>
							</article>
							<!--  -->
							<!-- 유/아동 버튼 -->
							<article class="css-i9gfd8" id="child-section">
								<div class="css-1b3egvg">
									<p class="css-10a1zex">유/아동</p>
									<div class="css-wggumj">
										<!-- 감소 버트 -->
										<div  id="decrease-button2" class="css-1bdn4ss" disabled="">
											<img id="decrease-img2"
												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNFNUY2RkYiIG9wYWNpdHk9Ii4yIiB4PSIuNSIgeT0iLjUiIHdpZHRoPSIyNyIgaGVpZ2h0PSIyNyIgcng9IjEzLjUiLz48cmVjdCBmaWxsPSIjMDE1MkNDIiBvcGFjaXR5PSIuMyIgeD0iOSIgeT0iMTQiIHdpZHRoPSIxMCIgaGVpZ2h0PSIxIiByeD0iLjUiLz48L2c+PC9zdmc+"
												alt="" class="css-1cnrxcw">
										</div>
										<p class="css-dycbjq" id="child-count">0</p>
										<!-- 추가 버튼 -->
										<div id="add-button2" class="css-n4l38x">
											<img id="add-img2"
												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNGRkYiIHg9Ii41IiB5PSIuNSIgd2lkdGg9IjI3IiBoZWlnaHQ9IjI3IiByeD0iMTMuNSIvPjxwYXRoIGQ9Ik0xMy41IDEzLjV2LTRhLjUuNSAwIDExMSAwdjRoNGEuNS41IDAgMTEwIDFoLTR2NGEuNS41IDAgMTEtMSAwdi00aC00YS41LjUgMCAxMTAtMWg0eiIgZmlsbD0iIzAxNTJDQyIvPjwvZz48L3N2Zz4="
												alt="" class="css-1cnrxcw">
										</div>
									</div>
								</div>
							</article>
						</section>
						<!-- 총인원 버튼  -->
						<div class="css-100c7hj">
							<button id="number-of-people-button" class="css-ijxt52"></button>
						</div>
					</article>
				</main>
				<!-- 헤더  -->
				<header class="css-14839ox">
					<div class="css-sevc8p">
						<div class="css-1v6k278">
							<img id="clear-number-of-people"
								src="data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3e %3cpath fill-rule='evenodd' d='M18.364 4.222L19.778 5.636 13.414 12 19.778 18.364 18.364 19.778 12 13.414 5.636 19.778 4.222 18.364 10.586 12 4.222 5.636 5.636 4.222 12 10.586z'/%3e%3c/svg%3e"
								data-testid="back-button" draggable="false" class="css-1i028dt">
							<div data-testid="content" class="css-17e7ihx">
								<div class="css-z0igb2">
									인원수 선택
									<div class="css-f2roiw">인원수 선택</div>
								</div>
							</div>
							<div data-testid="buttons" class="css-4j64ic"></div>
						</div>
					</div>
				</header>
			</div>
		</div>
	</div>
</div>
</body>

</html>