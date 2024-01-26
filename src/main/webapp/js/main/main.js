$(document).ready(function() {


	$('.PageTitleImageButton_button__3MXeo').on('click', function() {
		console.log("클릭");

		 window.location.href = '/cart.do';
	})


	var mainIcon = $('#mainIcon');

	mainIcon.addClass('TabItem_active__lMexY');

	var swiper = new Swiper('.swiper-container', {
		spaceBetween: 10,  // 슬라이드 간 간격 설정
		slidesPerView: 2.5,  // 한 화면에 3개의 슬라이드 표시
		centeredSlides: false,  // 활성 슬라이드가 중앙에 오도록 설정
		autoplay: {
			delay: 2000,  // 자동 전환 딜레이(2.5초)
			disableOnInteraction: false,  // 사용자 상호작용 후 자동 재생 멈춤 방지
		},
		pagination: {
			el: '.swiper-pagination',  // 페이징을 위한 엘리먼트 선택자
			clickable: true,  // 페이징 엘리먼트 클릭 가능 설정
		},
		navigation: {
			nextEl: '.swiper-button-next',  // '다음' 버튼 선택자
			prevEl: '.swiper-button-prev',  // '이전' 버튼 선택자
		},
	});
	// slideChange 이벤트 핸들러 추가
	swiper.on('slideChange', function() {
		$('.PromotionBannerButtons_activeIndex__PODxE').text(String(swiper.activeIndex + 1).padStart(2, '0'));  // 현재 인덱스 업데이트 (2자리 수로 표시)
	});

	// 플레이/일시정지 버튼에 클릭 이벤트 핸들러 추가
	var play = $('#play');
	var playIcon = $('#playIcon');
	play.click(function() {
		console.log("클릭");
		if (swiper.autoplay.running) {
			swiper.autoplay.stop();  // 자동 재생 중이면 정지
			playIcon.attr('src', '//yaimg.yanolja.com/joy/sunny/static/images/icon-play-fill-line-3.svg');  // 재생 아이콘으로 변경
		} else {
			swiper.autoplay.start();  // 정지 중이면 자동 재생 시작
			playIcon.attr('src', '//yaimg.yanolja.com/joy/sunny/static/images/icon-pause-fill-line-3.svg');  // 일시정지 아이콘으로 변경
		}
	});

	// 이전/다음 인덱스 버튼에 클릭 이벤트 핸들러 추가
	$('.PromotionBannerButtons_indexButton__2LUj4').eq(0).click(function() {
		swiper.slidePrev();  // 이전 슬라이드로 이동
	});

	$('.PromotionBannerButtons_indexButton__2LUj4').eq(1).click(function() {
		swiper.slideNext();  // 다음 슬라이드로 이동
	});

	$(".QuickCategoryItem_businessItemA__2FVma").click(function() {

		var themeId = $(this).data("theme-id");
		window.location.href = "/hotel.do?themeId=" + themeId;

	});

});




