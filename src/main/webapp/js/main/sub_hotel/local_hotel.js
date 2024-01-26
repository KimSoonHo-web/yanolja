$(document).ready(function() {
console.log("호출");
	/* 지역 선택 시 지역 선택 모달 */
	$('.PlaceListTitle_title__2KHnq').on('click', function() {
		$('.ReactModalPortal').show();
	});

	$('#clear').on('click', function() {
		$('.ReactModalPortal').hide();
	})
	$('.CollapsingNavTopButtons_backButton__1NQwd').on('click', function() {
		window.location.href = "http://localhost:8000/hotel.do?themeId=1";
	});
	$('.CollapsingNavTopButtons_homeButton__3UK5b').on('click', function() {
		window.location.href = 'http://localhost:8000/yanolja'; // 여기에 원하는 URL을 입력하세요.
	});
	

});


