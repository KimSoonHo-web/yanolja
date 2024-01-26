$(document).ready(function() {
	dateConversion2()

	$('#reservation_button').on('click', function() {
		// ".css-gtuddj" 요소를 클릭했을 때, <div> 숨기기
		$('.open.css-1uxybp6').css('display', 'none');
		$('.css-11zhy3w').css('overflow', '');  // 닫을 때 스타일 제거

		reservationButton2()
	});

});




// 날짜 변환	
function dateConversion2() {
	$('.time').each(function() {
		let time = $(this).text().trim();
		if (time.includes(':')) { // 시간 값을 포함하는 경우만 처리
			let formattedTime = time.substring(0, 5); // HH:mm 형식으로 포맷팅
			$(this).text(formattedTime);
		}
	});

}
function reservationButton2() {

	/*// 모달에서 데이터 추출
	var userNo = $("#userNo").val();
	var hotelId = $("#hotelId").val();
	var roomNo = $("#roomNo").val();*/

	// URL 구성
	let reservationURL = `/reservation.do`;

	// 예약 페이지를 새 창으로 열기
	window.open(reservationURL, '_blank');


}
