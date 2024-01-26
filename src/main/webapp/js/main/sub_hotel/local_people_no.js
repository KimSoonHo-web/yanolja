$(document).ready(function() {
	console.log('호출');

	var Title = $('#title');
	var Clear = $('#clear');
	var PeopleModal = $('#people_modal');
	var A = $('#a');
	$('#a').hide();

	Title.text('인원수 선택');

	Clear.click(function() {
		console.log('클릭');
		PeopleModal.hide();

	})


	// 성인 수 증가 버튼 클릭 이벤트
	$('.PlaceCapacityModal_bodyAdults__2YgSZ .CapacityCounter_increase__1nN_Y').click(function() {
		var countElement = $(this).siblings('.CapacityCounter_count__3tTqj');
		var count = parseInt(countElement.text());
		count++;
		countElement.text(count);

		// 감소 버튼 활성화
		$(this).siblings('.CapacityCounter_decrease__hrTs9').prop('disabled', false);
	});

	// 성인 수 감소 버튼 클릭 이벤트
	$('.PlaceCapacityModal_bodyAdults__2YgSZ .CapacityCounter_decrease__hrTs9').click(function() {
		var countElement = $(this).siblings('.CapacityCounter_count__3tTqj');
		var count = parseInt(countElement.text());
		if (count > 1) {
			count--;
			countElement.text(count);
		}

		// 성인 수가 1일 경우, 감소 버튼 비활성화
		if (count === 1) {
			$(this).prop('disabled', true);
		}
	});

	// 아동 수 증가 버튼 클릭 이벤트
	$('.PlaceCapacityModal_body__3E_ci .CapacityCounter_container__1AQ5r:nth-child(2) .CapacityCounter_increase__1nN_Y').click(function() {
		var countElement = $(this).siblings('.CapacityCounter_count__3tTqj');
		var count = parseInt(countElement.text());
		count++;
		countElement.text(count);

		// 감소 버튼 활성화
		$(this).siblings('.CapacityCounter_decrease__hrTs9').prop('disabled', false);
	});

	// 아동 수 감소 버튼 클릭 이벤트
	$('.PlaceCapacityModal_body__3E_ci .CapacityCounter_container__1AQ5r:nth-child(2) .CapacityCounter_decrease__hrTs9').click(function() {
		var countElement = $(this).siblings('.CapacityCounter_count__3tTqj');
		var count = parseInt(countElement.text());
		if (count > 0) {
			count--;
			countElement.text(count);
		}

		// 아동 수가 0일 경우, 감소 버튼 비활성화
		if (count === 0) {
			$(this).prop('disabled', true);
		}
	});

	// 버튼 레이블을 업데이트하는 함수
	function updateButtonLabel() {
		var adultCount = $('.PlaceCapacityModal_bodyAdults__2YgSZ .CapacityCounter_count__3tTqj').text();
		var childCount = $('.PlaceCapacityModal_body__3E_ci .CapacityCounter_container__1AQ5r:nth-child(2) .CapacityCounter_count__3tTqj').text();
		var label = "성인 " + adultCount + ", 아동 " + childCount + " · 적용";
		$('.RectButton_label__WcAp7').text(label);
	}

	// 증가/감소 버튼이 클릭될 때마다 버튼 레이블을 업데이트합니다.
	$('.CapacityCounter_increase__1nN_Y, .CapacityCounter_decrease__hrTs9').click(function() {
		updateButtonLabel();
	});

	// 필요한 경우 초기 상태를 설정하기 위해 updateButtonLabel()을 호출할 수도 있습니다.
	updateButtonLabel();

	$(".BaseButton_button__tzyL8").click(function() {
		// 성인 및 아동 수 가져오기
		var adultCount = $('.PlaceCapacityModal_bodyAdults__2YgSZ .CapacityCounter_count__3tTqj').text();
		var childCount = $('.PlaceCapacityModal_body__3E_ci .CapacityCounter_container__1AQ5r:nth-child(2) .CapacityCounter_count__3tTqj').text();

		// 서버에 AJAX 요청하기
		$.ajax({
			type: "GET",
			url: "/people.do",
			data: {
				adultCount: adultCount, // 성인 수 추가
				childCount: childCount  // 아동 수 추가
			},
			success: function(response) {
				PeopleModal.hide();
				
				
			},
			error: function(error) {
				// 요청이 실패했을 때의 처리를 여기에 작성합니다.
				console.log(error);
			}
		});
	});

});


