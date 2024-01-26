<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 예약 모달</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="/css/modal/accommodation_reservation_modal.css">
<script type="text/javascript" src="/js/modal/accommodation_reservation_modal.js?ver=20231101"></script>

</head>
<body>
	<div id="" class="css-fn260m">
		<div class="css-ex1z05">
			<div class="css-1v54dvp">숙박 예약</div>
			<img
				src="data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3e %3cpath fill-rule='evenodd' d='M18.742 4.575L19.449 5.282 12.732 12 19.449 18.718 18.742 19.425 12.025 12.707 5.307 19.425 4.6 18.718 11.318 12 4.6 5.282 5.307 4.575 12.025 11.293z'/%3e%3c/svg%3e"
				class="css-gtuddj">
		</div>
		<div class="css-gqqlqe">
			<div class="css-1k737b3">
				<div class="css-5j2b2p">
					<div class="css-1bm7asi">
						<div class="title">체크인</div>
						<div class="date">${checkIn}${checkInDay}</div>
						<div class="time selected">${roomDetails.checkInTime }</div>
					</div>
					<div class="css-r5q8o0">${totalDays }박</div>
					<div class="css-1bm7asi">
						<div class="title">체크아웃</div>
						<div class="date">${checkOut}${checkOutDay}</div>
						<div class="time selected">${roomDetails.checkOutTime}</div>
					</div>
				</div>
				<ul class="css-ifqd90">
					<li class="css-1bxtrwk"><img
						src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxkZWZzPjxwYXRoIGlkPSJhIiBkPSJNMCAwaDM2MHYxMDM0SDB6Ii8+PC9kZWZzPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PHBhdGggZmlsbD0iI0Y0RjVGNyIgZD0iTS02MzYtNzM5aDQwODV2NDgwMEgtNjM2eiIvPjxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKC03NiAtMzA2KSI+PG1hc2sgaWQ9ImIiIGZpbGw9IiNmZmYiPjx1c2UgeGxpbms6aHJlZj0iI2EiLz48L21hc2s+PHVzZSBmaWxsPSIjRDhEOEQ4IiB4bGluazpocmVmPSIjYSIvPjxnIG1hc2s9InVybCgjYikiPjxwYXRoIGZpbGw9IiNGRkYiIGQ9Ik0wLTg0MGgzNjB2NDU3NUgweiIvPjxwYXRoIGZpbGw9IiNGRkYiIGQ9Ik0wIDI4NWgzNjB2NjJIMHoiLz48cGF0aCBkPSJNMjUgMjk3aDMxMmE0IDQgMCAwMTQgNHY0MmE0IDQgMCAwMS00IDRIMjVhNCA0IDAgMDEtNC00di00MmE0IDQgMCAwMTQtNHoiIGZpbGw9IiNGRUY4RjIiLz48cGF0aCBkPSJNODIgMzA2YTYgNiAwIDExMCAxMiA2IDYgMCAwMTAtMTJ6bS42NCA3LjQ0OGgtMS4zMTJ2MS4xOTJoMS4zMTJ2LTEuMTkyem0uMTEyLTQuNjcySDgxLjJsLjIwOCAzLjg1NmgxLjE1MmwuMTkyLTMuODU2eiIgZmlsbD0iI0U2NzAwMCIvPjwvZz48L2c+PC9nPjwvc3ZnPg=="
						class="css-1rcwdd4">도보전용객실 (주차장 이용이 불가한 객실입니다)</li>
				</ul>
				<div class="css-1ago99h">
					<div color="#dc0328" class="css-1h0uicy">
						<span>취소 및 환불 불가</span>
						<svg width="16" height="16" fill="none" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
								<path fill-rule="evenodd" clip-rule="evenodd"
								d="M6.333 4.167h1.334V5.5H6.334V4.167zm0 2.666h1.334v4H6.334v-4zm.667-6A6.67 6.67 0 00.333 7.5 6.67 6.67 0 007 14.167 6.67 6.67 0 0013.667 7.5 6.669 6.669 0 007 .833zm0 12A5.34 5.34 0 011.667 7.5 5.34 5.34 0 017 2.167 5.34 5.34 0 0112.334 7.5 5.34 5.34 0 017 12.833z" fill="#000"></path></svg>
					</div>
					<ul class="css-10v9hj">
						<li>호텔의 경우 예약 완료 시점부터 10분 이내 전액 취소가 가능합니다. (MY야놀자 → 예약 내역)</li>
						<li>단, 입실 시간이 경과된 경우 예약완료 후 10분 이내라도 취소 및 환불이 불가합니다.</li>
						<li>'취소불가'로 표기되더라도 객실별 기본 정보의 취소규정이 '취소가능'으로 제공되는 경우 고객센터를 통해 취소 가능합니다.</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="css-1tuqr8g">
			<div class="css-eybg5z">
				<span class="css-5f5z7h"><strong>${roomDetails.roomOption}</strong>&nbsp;(${totalDays }박)</span><span class="css-xtgcg1">{roomDetails.price}<span>원</span></span>
			</div>
			<!--  나중에 쿠폰가 구현  -->
			<!-- <div class="css-1y1n4el">
					<span class="css-1srrlkw">1만원 쿠폰가</span><span class="css-xtgcg1">160,000<span>원</span></span>
				</div> -->
			<div class="css-1t5q28x">
				<div class="css-1a4gylk css-xx07rw">
					<button data-testid="rdp-purchase-handler-cart" class="css-7wyoej">장바구니 담기</button>
					<ul class="css-1r2eegk"></ul>
				</div>
				<div class="css-yp9swi">
					<button id="reservation_button" class="css-1hno2ww">바로 예약</button>
				</div>
			</div>
		</div>
	</div>
<%-- 	<input type="hidden" id="userNo" name="userNo" value="${userNo}">
	<input type="hidden" id="hotelId" name="hotelId" value="${hotelId}">
	<input type="hidden" id="roomNo" name="roomNo" value="${roomNo}"> --%>

</body>
</html>