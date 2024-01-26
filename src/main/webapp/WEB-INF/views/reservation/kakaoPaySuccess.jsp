<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link rel="stylesheet" href="/css/reservation/kakaoPaySuccess.css">
<meta charset="UTF-8">

<title>결제 성공</title>
<!-- CSS 링크나 스크립트 추가 가능 -->
</head>
<body>
	<div class="platform-site-iq8em3">
		<div height="48" class="platform-site-1r33zt9">
			<div height="48" class=" platform-site-1qwzcgf">
				<div class="borderless platform-site-cgyt82" id="background">
					
					<div class="platform-site-1ago99h">
						<div class="platform-site-1am8kzc">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="platform-site-uqnpib">
								<path fill="#000" fill-rule="evenodd" d="m18.364 4.222 1.414 1.414L13.414 12l6.364 6.364-1.414 1.414L12 13.414l-6.364 6.364-1.414-1.414L10.586 12 4.222 5.636l1.414-1.414L12 10.586z"></path></svg>
							<div class="center platform-site-1bjp9og">결제 완료</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="platform-site-p9vio3">
			<div class="platform-site-ur6uw0" style="padding: 0px; justify-content: flex-start;">
				<div class="platform-site-l01ohn" style="padding-top: 1.2rem;">
					<div class="platform-site-162y4rw">
						<div class="platform-site-1yt04qx">통합 주문번호</div>
						<div class="platform-site-h4ztxd">${pgToken }</div>
					</div>
					<div class="platform-site-162y4rw">
						<div class="platform-site-1yt04qx">상품명</div>
						<div class="platform-site-h4ztxd">${kakaoPayReadyVo.accommodationName }</div>
					</div>
					<div class="platform-site-jzzqv9">
						<div class="dashed platform-site-2w46r8"></div>
					</div>
					<div class="platform-site-13hz65d">
						<div>
							<span class="platform-site-tngqv8">결제금액</span>
						</div>
						<div class="platform-site-1j4phjb">${kakaoPayReadyVo.price }원</div>
					</div>
					<div class="platform-site-162y4rw">
						<div class="platform-site-1yt04qx">회사명</div>
						<div class="platform-site-h4ztxd">야놀자</div>
					</div>
				</div>
				<div class="platform-site-x7k053">
				</div>
				<footer class="platform-site-btxb3o">
					<ul>
						<li>예약 영수증은 세금계산서 등 세무상 증빙서류로 활용할 수 없으며, 거래내역 및 거래 금액을 확인하는 용도로만 가능합니다.</li>
						<li>신용카드 매출전표는 결제완료 시 자동 발급되며, 예약완료 후 확인이 가능합니다.</li>
					</ul>
				</footer>
			</div>
		</div>
	</div>
	<script>
$(document).ready(function() {
	
    $('.platform-site-uqnpib').on('click', function() {
    	console.log('클릭')
        window.close();
    });
});
</script>
</body>
</html>