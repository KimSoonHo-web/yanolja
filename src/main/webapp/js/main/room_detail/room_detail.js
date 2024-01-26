$(document).ready(function() {

	// 객실 스와이퍼 버트
	swiperbutton()

	// 단위 변환
	unit()

	//날짜 변환
	dateConversion()
	// 객실예약 클릭 이벤트
	reservationButton1()

});

// 스와이퍼 버튼 
function swiperbutton() {

	var mySwiper = new Swiper('.swiper', {
		slidesPerView: 1, // 한 번에 보여줄 슬라이드 개수
		spaceBetween: 10, // 슬라이드 간 간격
		loop: true,       // 무한 반복
		navigation: {
			nextEl: '.css-ln49wb', // Next 버튼 선택자
			prevEl: '.css-1mtkg4f'  // Prev 버튼 선택자
		},
	});
}

// 단위 변환
function unit() {
	let price = parseInt($('.css-xtgcg1').text(), 10);
	let formattedPrice = price.toLocaleString('ko-KR');
	$('.css-xtgcg1').html(formattedPrice + '<span>원</span>');
}

// 날짜 변환
function dateConversion() {
	$('.css-1xq69z3').each(function() {
		let time = $(this).text().trim();
		if (time.includes(':')) { // 시간 값을 포함하는 경우만 처리
			let formattedTime = time.substring(0, 5); // HH:mm 형식으로 포맷팅
			$(this).text(formattedTime);
		}
	});

}

// 객실예약 클릭 이벤트
function reservationButton1() {
	// "객실 예약하기" 버튼을 클릭했을 때, <div> 보이게 하기
	$('.css-36p1ii').on('click', function() {
		$('.open.css-1uxybp6').css('display', 'flex');
		$('.css-11zhy3w').css('overflow', 'hidden');  // 보일 때 스타일 추가
	});

	// ".css-gtuddj" 요소를 클릭했을 때, <div> 숨기기
	$('.css-gtuddj').on('click', function() {
		$('.open.css-1uxybp6').css('display', 'none');
		$('.css-11zhy3w').css('overflow', '');  // 닫을 때 스타일 제거
	});
}
