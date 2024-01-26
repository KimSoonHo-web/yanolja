$(document).ready(function() {
	console.log("호출");
	var selectRegion = $("#selectRegion");
	var ReactModalPortal = $('#ReactModalPortal');
	var clear = $("#clear"); //모달 취소 버튼

	$('#button').on('click', function() {
		window.location.href = 'http://localhost:8000/yanolja';
	})


	selectRegion.click(function() {
		console.log('확인');
		ReactModalPortal.show();

	});

	clear.click(function() {
		console.log('확인');
		ReactModalPortal.hide();

	});

	$('.RecentRegion_closeBtn__3fLEP').on('click', function() {
		console.log("클릭");
		// 이벤트가 발생한 요소의 부모 요소에서 지역 이름을 가져옵니다.
		var regionName = $(this).closest('.RecentRegion_chip__39wm5').find('.RecentRegion_chipTitle__17TAF').text();
		console.log("regionName :", regionName);
		console.log("userNo :", userNo);
		// AJAX 요청으로 백엔드에 삭제를 요청합니다.
		$.ajax({
			url: '/deleteRegion.do', // 요청을 처리할 백엔드 URL
			type: 'POST',
			data: {
				userNo: userNo,
				regionName: regionName
			},
			success: function(response) {
				location.reload();

			},
			error: function(xhr, status, error) {
			}
		});
	});



});
