$(document).ready(function() {

	// 결제 버튼 클릭 시 유효성 검사
	$(".platform-site-128od1m").click(function() {
		var isValid = true; // 처음에는 유효성 검사를 통과했다고 가정합니다.

		// 방문수단 선택 div를 찾습니다.
		var visitDiv = $(".platform-site-bajujj");

		// 모든 라디오 버튼을 검사하여 체크된 버튼이 있는지 확인합니다.
		var isChecked = false;
		visitDiv.find("input[type='radio']").each(function() {
			if ($(this).is(':checked')) {
				isChecked = true;
			}
		});

		// 체크된 라디오 버튼이 없으면
		if (!isChecked) {
			$(".platform-site-1qvfizd").show();
			visitDiv.removeClass("platform-site-bajujj").addClass("platform-site-p2uqum");
			isValid = false; // 유효성 검사 실패로 설정
		} else {
			$(".platform-site-1qvfizd").hide();
			visitDiv.removeClass("platform-site-p2uqum").addClass("platform-site-bajujj");
		}

		// 성명 입력 요소 확인
		$(".platform-site-1nmbaf9").each(function() {
			if (!$(this).val()) { // 값이 없을 경우
				$(this).after('<div class="platform-site-nzjuuy"><p>성명을 입력해주세요.</p></div>');
				isValid = false; // 유효성 검사 실패로 설정
			}
		});

		// 모든 유효성 검사가 통과된 경우에만 결제 진행
		if (isValid && $('.platform-site-sut3yw').length) {
			// 카카오 페이 결제 준비 API 호출
			$.ajax({
				url: '/kakaoPay',  // 백엔드에서 카카오 페이 API를 호출하는 URL
				method: 'POST',
				success: function(response) {
					console.log("성공")
				},
				 error: function(xhr, status, error) {
                // 오류 처리
                console.error("Error: " + status + " - " + error);
                }
			});
		}
	});

	// 값이 입력되면 다시 원래의 형태로 변경
	$(".platform-site-1nmbaf9").on("input", function() {
		if ($(this).val()) { // 값이 있을 경우
			// platform-site-nzjuuy 클래스를 가진 div를 제거
			$(this).siblings('.platform-site-nzjuuy').remove();
		}
	});

	// 라디오 버튼의 상태가 변경될 때의 이벤트 핸들러
	$(".platform-site-bajujj input[type='radio']").change(function() {
		var visitDiv = $(".platform-site-p2uqum");
		if ($(this).is(':checked')) {
			$(".platform-site-1qvfizd").hide();
			visitDiv.removeClass("platform-site-p2uqum").addClass("platform-site-bajujj");
		}
	});

	dateConversion3() // 시간변환

	toggleDivHeightAndIcon(); // 아이콘 및 높이 변경 함수 호출

	// 'platform-site-uqnpib' 클래스를 클릭했을 때 창 닫기
	$('.platform-site-uqnpib').on('click', function() {
		window.close();
	});

	// 방문수단 선택
	// 'platform-site-1rv702g' 클래스를 클릭했을 때의 이벤트 핸들러
	$('.platform-site-1rv702g').on('click', function() {
		// 'platform-site-zssjtl' 클래스를 갖는 요소의 클래스를 'platform-site-1cczecs'로 변경
		$('.platform-site-zssjtl').removeClass('platform-site-zssjtl').addClass('platform-site-1cczecs');
	});

	// 내정보 수정
	// 'platform-site-1nstup5' 클래스를 클릭했을 때의 이벤트 핸들러
	$('.platform-site-1nstup5').on('click', function() {
		// 'platform-site-1fvu3ef' 클래스와 'platform-site-1nstup5' 클래스를 갖는 요소를 숨김
		$('.platform-site-1fvu3ef, .platform-site-1nstup5').hide();
		// 'platform-site-br0i6g' 클래스를 갖는 요소를 보이게 함
		$('.platform-site-br0i6g').show();
	});

	// 인풋 밑선 스타일 적용
	$(".platform-site-1nmbaf9").on("blur", function() {
		// 인풋 밑선 스타일 적용
		$(".platform-site-12yf6u2").css({
			"width": "0",
			"left": "50%"
		});

		// 입력된 값 추출
		let inputVal = $(this).val().trim();

		// 상위 div 요소 참조
		let parentDiv = $(this).closest('.platform-site-164z9ie, .platform-site-todp2h');

		// 하위 div 요소 참조
		let childDiv = parentDiv.find('.platform-site-12yf6u2, .platform-site-nzjuuy');

		// 입력 값에 따른 클래스 변경
		if (inputVal === "") {
			// 클래스 이름을 바꿉니다.
			parentDiv.removeClass('platform-site-164z9ie').addClass('platform-site-todp2h');
			childDiv.removeClass('platform-site-12yf6u2').addClass('platform-site-nzjuuy');
		} else {
			// 원래 클래스로 되돌립니다.
			parentDiv.removeClass('platform-site-todp2h').addClass('platform-site-164z9ie');
			childDiv.removeClass('platform-site-nzjuuy').addClass('platform-site-12yf6u2');
		}
	});

	// 이용자 정보
	$('.platform-site-1w3cgof').on('click', function() {
		if ($(this).hasClass('platform-site-1w3cgof')) {
			// platform-site-1w3cgof 클래스가 있으면 platform-site-nkgnmt로 변경
			$(this).removeClass('platform-site-1w3cgof').addClass('platform-site-nkgnmt');

			// 성명 입력 필드의 값 지우기
			$('input[name="user.name_"]').val('');

			// 휴대폰 번호 입력 필드의 값 지우기
			$('input[name="user.phone_"]').val('');
		} else {
			// 그렇지 않으면 원래의 platform-site-1w3cgof 클래스로 변경
			$(this).removeClass('platform-site-nkgnmt').addClass('platform-site-1w3cgof');

			// 성명 입력 필드에 기본 값을 설정
			$('input[name="user.name_"]').val('김순호');

			// 휴대폰 번호 입력 필드에 기본 값을 설정
			$('input[name="user.phone_"]').val('010-3571-8619');
		}
	});
	// 필수 약관 정보
	$('.platform-site-nkgnmt').on('click', function() {
		if ($(this).hasClass('platform-site-1w3cgof')) {
			$(this).removeClass('platform-site-1w3cgof').addClass('platform-site-nkgnmt');
			$('.platform-site-1ykgzse').removeClass('platform-site-1ykgzse').addClass('platform-site-pi12hd');

		} else {
			// 그렇지 않으면 원래의 platform-site-1w3cgof 클래스로 변경
			$(this).removeClass('platform-site-nkgnmt').addClass('platform-site-1w3cgof');
			$('.platform-site-1ykgzse').removeClass(' platform-site-1ykgzse').addClass('platform-site-pi12hd');
			$('.platform-site-128od1m').removeAttr('disabled');

		}
	});





	$('.platform-site-1krup1h').on('click', function() {
		// 모든 platform-site-sut3yw 클래스를 가진 요소들을 원래 상태로 변경
		$('.platform-site-sut3yw').removeClass('platform-site-sut3yw').addClass('platform-site-1krup1h');

		// 현재 클릭된 요소의 클래스 변경
		$(this).removeClass('platform-site-1krup1h').addClass('platform-site-sut3yw');
	});

	// 스크롤 상태
	scrollStatus();

	// 상단 이동 스크롤
	$('.platform-site-1s0nat5').on('click', function(e) {
		console.log("클릭");
		e.preventDefault(); // 기본 클릭 동작 방지
		$('html, body').animate({ scrollTop: 0 }, 'slow'); // 맨 위로 부드럽게 스크롤
	});
});


function scrollStatus() {
	// 초기 상태 설정
	if ($(window).scrollTop() === 0) {
		$(".platform-site-1s0nat5").hide();
	}

	// 스크롤 이벤트에 대한 리스너 추가
	$(window).on("scroll", function() {
		if ($(this).scrollTop() === 0) {
			$(".platform-site-1s0nat5").hide();
		} else {
			$(".platform-site-1s0nat5").show();
		}
	});
}

function toggleDivHeightAndIcon() {
	$('.more.platform-site-1m2rgzu, .less.platform-site-1m2rgzu').on('click', function() {
		let currentHeight = $('.platform-site-1hjxylh, .platform-site-1066udy').css('height');

		if (currentHeight !== '145px') {
			// 높이 및 클래스 변경
			$('.platform-site-1hjxylh').css('height', '145px').removeClass('platform-site-1hjxylh').addClass('platform-site-1066udy');

			// 아이콘 변경
			$(this).html('<path fill="#000" fill-rule="evenodd" d="m13.637 11.89 1.18-1.18-6.6-6.6-6.6 6.6 1.18 1.18 5.42-5.42 5.42 5.42z"></path>');
			$(this).addClass('less').removeClass('more');
		} else {
			// 높이 및 클래스 변경
			$('.platform-site-1066udy').css('height', '0px').removeClass('platform-site-1066udy').addClass('platform-site-1hjxylh');

			// 원래의 아이콘으로 변경
			$(this).html('<path fill="#000" fill-rule="evenodd" d="m13.637 11.89 1.18-1.18-6.6-6.6-6.6 6.6 1.18 1.18 5.42-5.42 5.42 5.42z"></path>');
			$(this).addClass('more').removeClass('less');
		}
	});
}

// 날짜 변환	
function dateConversion3() {
	$('.platform-site-fwxc9v').each(function() {
		let time = $(this).text().trim();
		if (time.includes(':')) { // 시간 값을 포함하는 경우만 처리
			let formattedTime = time.substring(0, 5); // HH:mm 형식으로 포맷팅
			$(this).text(formattedTime);
		}
	});

}