$(document).ready(function() {

	//단위 변환
	formatRoomPrice();

	//헤더 뒤로 가기 버튼
	$("#back-button").on("click", function() {
		window.history.back();
	});
	// 호텔 상세 이미지
	swiper();

	// 초기 버튼 클릭
	$('#1').addClass('active');

	// 카테고리 버튼 
	$('#content-button button').on('click', categoryButton);

	// 후기 버튼 
	$("#review").on('click', reviewButton);

	// 지도 이동
	$("#map_modal").on('click', mapButton);

	// 주소 복사
	$("#copy-address").on("click", copyAddress);

	// 리뷰 바
	reviewBar();
	updateReviews();

	// 객실 선택 모달 띄우기
	$("#openModalBtn").on('click', roomSelectionModal);

	// 룸 선택 모달 취소
	$("#close").on('click', cancelRoomSelectionModal);

	// 객실 이름 항목 클릭 이벤트
	$(".css-maey8v").on('click', roomSelection);

	// 체크박스 클릭 이벤트
	$("#checkImage").on('click', applyCheckboxFunction);

	// 안내/정책
	informationPolicy();

	// 달력 선택
	$("#calendar-Button").on('click', calendarButton);

	// 달력 취소
	$("#calendar-cancel").on('click', calendarCancel);

	// 달력 설정
	function renderCalendar(month, year, container) {
		// 해당 월의 첫 번째 날의 요일을 가져옴 (0 = 일요일, 6 = 토요일)
		var firstDay = (new Date(year, month - 1)).getDay();
		// 해당 월의 일 수를 가져옴
		var daysInMonth = 32 - new Date(year, month - 1, 32).getDate();

		// 캘린더 컨테이너를 초기화하여 새로운 렌더링을 준비함
		container.empty();

		// 월의 시작 전의 빈 날들을 추가함
		for (let i = 0; i < firstDay; i++) {
			let blankDay = $("<div>").addClass('css-elyyt7  css-1ego3xc').html('&nbsp;');
			container.append(blankDay);
		}

		// 월의 모든 날들에 대해 순회하며 추가함
		for (let i = 1; i <= daysInMonth; i++) {
			let day = $("<div>").addClass('css-elyyt7  css-1ego3xc').text(i);
			let dayDate = new Date(year, month - 1, i);
			let currentDate = new Date();
			currentDate.setHours(0, 0, 0, 0);

			let dayOfWeek = dayDate.getDay();
			let formattedDate = year + "-" + (month < 10 ? "0" : "") + month + "-" + (i < 10 ? "0" : "") + i;
			day.attr('data-testid', formattedDate);

			// 만약 그 날이 오늘이면 '오늘' 표시를 추가함
			if (dayDate.getTime() === currentDate.getTime()) {
				let todayIndicator = $("<div>").addClass('css-1kvxd4i').text("오늘");
				day.append(todayIndicator);
			}

			// 과거 날짜, 주말 및 평일에 대한 데이터 속성 설정
			if (dayDate < currentDate) {
				day.attr('data-datetype', 'past');
			} else if (dayOfWeek == 0) {
				day.attr('data-datetype', 'sunday');
			} else if (dayOfWeek == 6) {
				day.attr('data-datetype', 'saturday');
			} else {
				day.attr('data-datetype', 'weekday');
			}

			container.append(day);
		}

		// 월의 마지막 후의 빈 날들을 추가함
	}
	renderCalendar(currentMonth, currentYear, $('.css-rwdjnq').eq(0));

	currentMonth += 1;
	if (currentMonth > 12) {
		currentMonth = 1;
		currentYear += 1;
	}
	renderCalendar(currentMonth, currentYear, $('.css-rwdjnq').eq(1));

	$(".css-1i028dt2").click(function() {
		$("#calendar").css("display", "none");
		console.log("클릭");
	});

	//달력 일 선택
	$(".css-elyyt7").on("click", dayCheck);

	//달력 버튼 초기화
	$(".css-1wwhv0s").on('click', reset);

	// 달력 처음 설정
	applyInitialDateStyle()


	// 버튼 클릭 이벤트
	$('#date-button').on('click', checkIncheckoutValue);

	// 인원수 필터 버튼
	$('#number-of-people').on('click', numberOfPeopleModal);

	// 인원수 필터 닫기 버튼
	$('#clear-number-of-people').on('click', clearNumberOfPeople)

	// 초기 화면에 총 인원 업데이트
	updateTotalCount();

	// 성인 인원 증가 이벤트
	$("#adult-section .css-n4l38x:nth-child(3)").on('click', increaseInAdultPopulation)

	// 성인 인원 감소 이벤트
	$("#decrease-button1").on('click', decreaseInAdultPopulation);

	// 유/아동 인원 증가 이벤트
	$("#child-section .css-n4l38x:nth-child(3)").on('click', increaseInNumberChildren);

	// 유/아동 인원 감소 이벤트
	$("#decrease-button2").on('click', decreaseInChildren);

	//초기 버튼 값 설정 
	updateTotalCount();


	//총인원 수 클릭 버튼
	$("#number-of-people-button").on('click', function() {

		let adultCount = parseInt($("#adult-count").text());
		let childCount = parseInt($("#child-count").text());
		let totalPeople = adultCount + childCount;

		sendTotalCountToServer(adultCount, childCount, totalPeople);

	});


	// 가격을 포맷하는 함수
	function formatRoomPrice() {
		$(".roomPrice").each(function() {
			const price = parseInt($(this).text(), 10);
			$(this).text(price.toLocaleString('ko-KR'));
		});
	}

	//객실 선택
	$(".css-1lw0g5m, #room-selection").on("click", function() {
		console.log("클릭");
		var roomNo = $(this).data("room-no");
		var hotelId = $(this).data("hotel-id");
		if (roomNo && hotelId) {
			window.location.href = "/roomDetail.do?roomNo=" + encodeURIComponent(roomNo) + "&hotelId=" + encodeURIComponent(hotelId);
		} else {
			alert('객실 번호 또는 호텔 아이디가 없습니다.');
		}
	});


	//좋아요 상태
	checkLikeStatus();
	//좋아요 클릭 이벤트
	$("#like").on('click', likeClick);

});//end

// 좋아요 상태를 확인하고 버튼 스타일을 업데이트하는 함수
function checkLikeStatus() {
	var hotelId = getHotelIdFromURL();
	console.log("hotelId" + hotelId);

	console.log("userNo" + userNo);
	// userNo 값이 존재하는지 및 null이 아닌지 확인
	if (userNo === null) {
		// userNo 값이 없는 경우 좋아요 버튼을 숨깁니다.
		$("#like").hide();
		return;
	}

	$.ajax({
		type: "GET",
		url: "/checkLikeStatus",
		data: {
			userNo: userNo,
			accommodationNo: hotelId
		},
		success: function(response) {
			console.log(userNo);
			updateLikeButtonStyle(response);
		}
	});
}
// 사용자가 좋아요 버튼을 클릭했을 때 동작하는 함수
function likeClick() {
	var hotelId = getHotelIdFromURL();
	$.ajax({
		type: "POST",
		url: "/toggleLike",
		data: {
			userNo: userNo,
			accommodationNo: hotelId
		},
		success: function(response) {
			updateLikeButtonStyle(response);
		}
	});
}
// 좋아요 상태에 따라 버튼 스타일을 업데이트하는 함수
function updateLikeButtonStyle(isLiked) {
	if (isLiked) {
		$("#like").addClass("css-1hvq4xb").removeClass("css-7i3sq0");
	} else {
		$("#like").removeClass("css-1hvq4xb").addClass("css-7i3sq0");
	}
}




function clearNumberOfPeople() {
	$("#personnel").hide();
	$("#header").show();
}


function numberOfPeopleModal() {
	$("#personnel").show(); // "personnel" 요소를 보이도록 설정
	$("#header").hide(); // "personnel" 요소를 보이도록 설정
}
function updateReviews() {
	$(".a .someClass > div").each(function() {
		console.log($(this).find('.css-26eke0').length);

		if ($(this).find('.css-26eke0').length > 0) {
			$(this).addClass('with-image');
		}
	});
}
function applyCheckboxFunction() {
	// 리뷰에 이미지가 있는지 확인하고 클래스 추가하는 함수

	updateReviews(); // 리뷰 업데이트 함수 호출


	// 동적으로 추가된 span에도 클릭 이벤트를 바인딩하기 위해 부모 요소를 통해 이벤트를 위임
	$(".css-d1nag3 span").on('click', function() {
		var $img = $(this).find('img[data-testid="check-mark"]');
		var $input = $(this).find('input[data-testid="hidden-input"]');

		if ($input.is(':checked')) {
			// 체크가 되어 있을 때
			$input.prop('checked', false);
			$img.attr('src', 'data:image/svg+xml,%3csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\'%3e %3cg fill=\'none\' fill-rule=\'evenodd\'%3e %3cpath fill=\'white\' d=\'M2 0h20a2 2 0 012 2v20a2 2 0 01-2 2H2a2 2 0 01-2-2V2a2 2 0 012-2z\'/%3e %3cpath fill=\'%23CCC\' d=\'M22 0a2 2 0 012 2v20a2 2 0 01-2 2H2a2 2 0 01-2-2V2a2 2 0 012-2h20zm0 1H2a1 1 0 00-1 1v20a1 1 0 001 1h20a1 1 0 001-1V2a1 1 0 00-1-1z\'/%3e %3cpath fill=\'%23CCC\' d=\'M18.297 6L19.696 7.399 9.6 17.496 4 11.896 5.4 10.496 9.6 14.696z\'/%3e %3c/g%3e%3c/svg%3e');
			$(".a .someClass > div").show(); // 모든 리뷰 보여주기
		} else {
			// 체크가 되어 있지 않을 때
			$input.prop('checked', true);
			$img.attr('src', 'data:image/svg+xml,%3csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\'%3e %3cg fill=\'none\' fill-rule=\'evenodd\'%3e %3crect width=\'24\' height=\'24\' fill=\'%230152CC\' rx=\'2\'/%3e %3cpath fill=\'white\' d=\'M18.297 6L19.696 7.399 9.6 17.496 4 11.896 5.4 10.496 9.6 14.696z\'/%3e %3c/g%3e%3c/svg%3e');
			$(".a .someClass > div:not(.with-image)").hide(); // 이미지 없는 리뷰 숨기기
		}
	});
}



function categoryButton() { // 매개 변수 추가
	var clickedButton = $(this);
	console.log("clickedButton" + clickedButton);
	// 모든 버튼에서 active 클래스 제거
	$('#content-button button').removeClass('active');

	// 클릭한 버튼에만 active 클래스 추가
	clickedButton.addClass('active');

	// 클릭된 버튼의 id 값을 가져옵니다.
	let id = clickedButton.attr('id');
	console.log("id" + id);

	// 모든 content div를 숨깁니다.
	$('#category > div').hide();

	// 클릭된 버튼에 해당하는 content div만 보입니다.
	$('#content-' + id).show();
};

function reviewButton() {
	$("#category > div").hide();
	$("#content-5").show();

	// "후기" 버튼에 active 클래스 추가
	$('.css-1iizn56 button').removeClass('active');
	$('#5').addClass('active');

	// 스크롤 이동
	$('html, body').animate({
		scrollTop: $("#content").offset().top
	}, 500); // 0.5초 동안의 애니메이션
}

function mapButton() {
	$("#category > div").hide();
	$("#content-2").show();

	// "content-2" 버튼에 active 클래스 추가
	$('#content-button button').removeClass('active');
	$('#2').addClass('active');

	// 스크롤 이동
	$('html, body').animate({
		scrollTop: $("#content").offset().top
	}, 500); // 0.5초 동안의 애니메이션
}

function copyAddress() {
	// 주소 텍스트를 가져옵니다.
	var addressText = $("#addressText").text();

	// 텍스트를 복사하는 함수
	var copyToClipboard = function(text) {
		var $temp = $("<input>");
		$("body").append($temp);
		$temp.val(text).select();
		document.execCommand("copy");
		$temp.remove();
	};

	copyToClipboard(addressText);

	// (옵션) 복사가 성공적으로 이루어졌음을 알려줄 수 있는 알림 메시지를 추가합니다.
	alert("주소가 클립보드에 복사되었습니다.");
}


function reviewBar() {
	$(".review").each(function() {
		var reviewDate = $(this).data('review-date');
		var result = getTimeDifferenceFromReviewDate(reviewDate);
		$(this).append("<span class='time-diff'>" + result + "</span>");
	});
	$('.rating-bar').each(function() {
		var rating = parseFloat($(this).data('rating'));
		var percentage = (rating / 5) * 100;
		$(this).css('width', percentage + '%');
	});
}

function roomSelectionModal() {
	$("#myModal").show();

	// 페이지 스크롤 방지
	$('body').css('overflow', 'hidden');
}


function cancelRoomSelectionModal() {
	console.log("close clicked");
	$("#myModal").hide();

	// 스크롤 활성화
	$('body').css('overflow', 'auto');
}

//리뷰 모달창
function roomSelection() {

	var roomName = $(this).data('roomname');
	console.log(roomName);
	$("#selectedRoomName").text(roomName);
	var hotelId = getParameterByName('hotelid');
	console.log(hotelId);
	$(".css-1c94hlu").remove();

	$('.css-1qw9s8x').addClass('css-maey8v');
	$('.css-maey8v').removeClass('css-1qw9s8x');

	var imgElement = $('<img>').attr('src', 'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTkgMTYuMkw0LjggMTJsLTEuNCAxLjRMOSAxOSAyMSA3bC0xLjQtMS40eiIgZmlsbD0iIzAxNTJDQyIgZmlsbC1ydWxlPSJldmVub2RkIi8+PC9zdmc+').addClass('css-1c94hlu');
	$(this).find(".css-cwsr4f").after(imgElement);

	$(this).removeClass('css-maey8v').addClass('css-1qw9s8x');
	$("#myModal").hide();
	$('body').css('overflow', 'auto');
	$.ajax({
		url: "hotelDetail.do",
		type: "get",
		data: {
			selectedRoom: roomName,
			hotelid: hotelId
		},
		success: function(response) {
			var content = $(response).find(".a").html();
			$(".a").html(content);
			updateReviews();
			// 체크박스 기능 적용
			applyCheckboxFunction();

			// 리뷰에 이미지가 있는지 확인하고, 없으면 숨깁니다.
			$(".a .someClass > div:not(.with-image)").hide();
		}


	});
}


function getParameterByName(name, url) {
	if (!url) url = window.location.href;
	name = name.replace(/[\[\]]/g, '\\$&');
	var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
		results = regex.exec(url);
	if (!results) return null;
	if (!results[2]) return '';
	return decodeURIComponent(results[2].replace(/\+/g, ' '));
}


function getTimeDifferenceFromReviewDate(reviewDate) {
	var givenDate = new Date(reviewDate);
	var currentDate = new Date();
	var timeDiff = currentDate - givenDate;
	var hoursDiff = timeDiff / (1000 * 60 * 60);
	var daysDiff = Math.floor(hoursDiff / 24);

	if (hoursDiff < 24) {
		return hoursDiff.toFixed(0) + "시간 전";
	} else {
		return daysDiff + "일 전";
	}
}

function informationPolicy() {
	var textContainer = $(".isBullet");
	var text = textContainer.text();

	// 마침표 다음에 내려쓰기 추가
	text = text.replace(/\./g, ".<br>");

	// 수정된 텍스트를 HTML에 적용
	textContainer.html(text);
}


function calendarButton() {
	// 모달창 표시
	$("#calendar").css("display", "block");

	// property-header 숨기기
	$("#property-header").css("display", "none");
}

function calendarCancel() {
	// 모달창 숨기기
	$("#calendar").css("display", "none");

	// property-header 보이기
	$("#property-header").css("display", "block");
}





let checkInDate = null;
let checkOutDate = null; // 여기에 추가


function formatDate(date) {
	if (!(date instanceof Date)) {
		console.error("Invalid date provided to formatDate");
		return "";
	}
	const dayNames = ["일", "월", "화", "수", "목", "금", "토"];
	return `${date.getFullYear()}.${date.getMonth() + 1}.${date.getDate()} (${dayNames[date.getDay()]})`;
}

function dayCheck() {
	console.log("날짜 클릭됨");

	// 버튼에 disabled 속성 추가
	$("#date-button").attr("disabled", false);

	if ($(this).attr("data-datetype") === "past") {
		console.log("과거의 날짜이므로 클릭 무시");
		return;
	}

	// 첫 번째 클릭인 경우
	if (!checkInDate) {
		console.log("첫 번째 클릭");
		$(".css-elyyt7").removeClass("css-1hci1jq css-4kmhjv css-5wluu4 css-42r98s");
		$(this).addClass("css-1hci1jq css-4kmhjv css-5wluu4");

		checkInDate = $(this);

		let selectedDateValue = $(this).attr("data-testid");
		let selectedDate = new Date(selectedDateValue);
		let formattedDate = formatDate(selectedDate);

		$('#date-button').text(`${formattedDate} 체크인 검색`);


		// $(this)와 $(this).attr("data-testid") 값을 로그로 출력
		console.log("$(this)의 참조:", $(this));
		console.log("data-date 값:", $(this).attr("data-testid"));

		console.log("checkInDate 설정됨:", checkInDate.attr("data-testid"));

		// 9박 후의 날짜 계산
		let checkOutDate = new Date($(this).attr("data-testid"));
		checkOutDate.setDate(checkOutDate.getDate() + 10);

		// 날짜 형식을 "YYYY-MM-DD"로 변환 (data-testid의 형식에 따라 조절해야 할 수 있습니다)
		let formattedCheckOutDate = checkOutDate.toISOString().split('T')[0];

		// 9박 이후의 요소부터 모든 이후 요소에 data-datetype="past" 추가
		let started = false;
		$("[data-testid]").each(function() {
			if ($(this).attr("data-testid") === formattedCheckOutDate) {
				started = true;
			}
			if (started) {
				$(this).attr("data-datetype", "past");
			}
		});
	}



	// 두 번째 클릭인 경우
	else {
		console.log("두 번째 클릭");

		// 두 번째 클릭한 날짜가 첫 번째 클릭한 날짜와 같다면
		if ($(this).attr("data-testid") === checkInDate.attr("data-testid")) {
			console.log("두 번째로 클릭한 날짜가 첫 번째로 클릭한 날짜와 동일합니다. 첫 번째 클릭으로 처리.");
			return; // 여기서 함수 종료.
		}

		if (new Date($(this).attr("data-testid")) < new Date(checkInDate.attr("data-testid"))) {
			console.log("두 번째로 클릭한 날짜가 첫 번째로 클릭한 날짜보다 이전입니다.");
			checkInDate.removeClass("css-1hci1jq css-4kmhjv css-5wluu4");
			$(this).addClass("css-1hci1jq css-4kmhjv css-5wluu4");
			checkInDate = $(this);
			console.log("checkInDate 변경됨:", checkInDate.attr("data-testid"));
			return;
		}
		// 오늘 날짜 이후의 모든 요소에서 data-datetype="past" 제거
		let today = new Date().toISOString().split('T')[0];
		$("[data-testid]").each(function() {
			let currentDate = new Date($(this).attr("data-testid"));

			if (currentDate > new Date(today)) {
				$(this).removeAttr("data-datetype");

				// 토요일이나 일요일인 경우에 대한 처리
				switch (currentDate.getDay()) {
					case 6: // 토요일
						$(this).attr("data-datetype", "saturday");
						break;
					case 0: // 일요일
						$(this).attr("data-datetype", "sunday");
						break;
				}
			}
		});



		checkInDate.removeClass("css-1hci1jq css-4kmhjv css-5wluu4").addClass("css-1hci1jq css-4kmhjv css-1ego3xc");
		console.log("첫 번째로 클릭한 날짜의 스타일 변경됨");



		// 다음 날짜 또는 다음 달의 첫 날짜를 가져옵니다.
		let currentDate;
		if (checkInDate.next().length) {
			currentDate = checkInDate.next();
			console.log("checkInDate의 다음 요소를 현재 달에서 찾았습니다.", currentDate[0]);
		} else {
			// 현재 달에서 더 이상의 요소가 없습니다. 다음 달의 첫 번째 요소를 찾습니다.
			console.log("현재 달에서 더 이상의 요소가 없습니다. 다음 달의 첫 번째 요소를 찾습니다.");
			const nextMonthContainer = $('.css-rwdjnq:eq(1)');  // 첫 번째가 아닌 두 번째 .css-rwdjnq 요소를 가져옴
			currentDate = nextMonthContainer.find('div[data-testid]:first');

			if (nextMonthContainer.length) {
				console.log("다음 달의 컨테이너를 찾았습니다.");
			} else {
				console.log("다음 달의 컨테이너를 찾지 못했습니다.");
			}
			currentDate = nextMonthContainer.find('div[data-testid]').first();
			if (currentDate.length) {
				console.log("다음 달의 첫 번째 요소를 찾았습니다.", currentDate[0]);
			} else {
				console.log("다음 달의 첫 번째 요소를 찾지 못했습니다.");
			}



		}

		// 현재 날짜가 선택된 두 번째 날짜와 같지 않을 동안 반복함
		while (currentDate.length && currentDate[0] !== $(this)[0]) {
			console.log("중간 날짜 스타일 적용:", currentDate.attr("data-testid"));

			// 중간 날짜의 스타일을 적용함
			currentDate.addClass("css-1hci1jq css-1ego3xc");

			// 만약 현재 날짜의 다음 날짜가 있으면 그 날짜로 업데이트함
			if (currentDate.next().length) {
				currentDate = currentDate.next();
				console.log("현재 날짜의 다음 요소를 찾았습니다.", currentDate[0]);
			} else {
				// 현재 달에서 더 이상의 요소가 없습니다. 다음 달의 첫 번째 요소를 찾습니다.
				console.log("현재 달에서 더 이상의 요소가 없습니다. 다음 달의 첫 번째 요소를 찾습니다.");
				const nextMonthContainer = $('.css-rwdjnq:eq(1)');  // 첫 번째가 아닌 두 번째 .css-rwdjnq 요소를 가져옴
				currentDate = nextMonthContainer.find('div[data-testid]:first');
				if (nextMonthContainer.length) {
					console.log("다음 달의 컨테이너를 찾았습니다.");
				} else {
					console.log("다음 달의 컨테이너를 찾지 못했습니다.");
				}
			}
		}

		$(this).addClass("css-1hci1jq css-5wluu4");
		console.log("두 번째로 클릭한 날짜 스타일 적용됨:", $(this).attr("data-testid"));

		const checkInDateValue = new Date(checkInDate.attr("data-testid"));
		const checkOutDateValue = new Date($(this).attr("data-testid"));
		const totalDays = Math.round((checkOutDateValue - checkInDateValue) / (1000 * 60 * 60 * 24));

		$('#date-button').text(`${formatDate(checkInDateValue)} ~ ${formatDate(checkOutDateValue)} · ${totalDays}박`);




		checkInDate = null;
		console.log("checkInDate 초기화");
	}
}



function applyInitialDateStyle() {
	// 로컬 시간대 기반 'YYYY-MM-DD' 형식의 날짜 문자열을 가져오는 함수
	function formatDate(date) {
		const year = date.getFullYear();
		const month = String(date.getMonth() + 1).padStart(2, '0');
		const day = String(date.getDate()).padStart(2, '0');
		return `${year}-${month}-${day}`;
	}

	// 오늘 날짜를 'YYYY-MM-DD' 형식으로 가져옵니다.
	const today = new Date();
	const todayDateString = formatDate(today);
	// 내일 날짜를 계산하고 'YYYY-MM-DD' 형식으로 가져옵니다.
	const tomorrow = new Date(today);
	tomorrow.setDate(today.getDate() + 1);
	const tomorrowDateString = formatDate(tomorrow);

	// 오늘 날짜에 해당하는 DOM 요소를 찾습니다.
	const todayElement = $(`.css-elyyt7[data-testid="${todayDateString}"]`);
	// 내일 날짜에 해당하는 DOM 요소를 찾습니다.
	const tomorrowElement = $(`.css-elyyt7[data-testid="${tomorrowDateString}"]`);

	// 오늘 날짜와 내일 날짜 DOM 요소에 선택 스타일 클래스를 추가합니다.
	if (todayElement.length > 0) {
		todayElement.addClass("css-1hci1jq css-4kmhjv css-5pw8k6 css-1ego3xc");
	}

	if (tomorrowElement.length > 0) {
		tomorrowElement.addClass("css-1hci1jq css-5wluu4 css-1ego3xc");
	}
}


function reset() {
	// 모든 날짜에서 선택 스타일 제거
	$(".css-elyyt7").removeClass("css-1hci1jq css-4kmhjv css-5wluu4");

	// 오늘 날짜의 요소를 가져와 스타일 적용
	const todayElement = $(`.css-elyyt7[data-testid="${new Date().toISOString().split('T')[0]}"]`);
	if (todayElement.length > 0) {
		todayElement.addClass("css-42r98s css-5pw8k6 css-1ego3xc");
	}

	// 오늘 날짜 이후의 모든 요소에서 data-datetype="past"만 제거
	let today = new Date().toISOString().split('T')[0];
	$("[data-testid]").each(function() {
		let dateType = $(this).attr("data-datetype");

		// 'sunday'나 'saturday'는 제거하지 않습니다.
		if (dateType !== 'sunday' && dateType !== 'saturday' && new Date($(this).attr("data-testid")) > new Date(today)) {
			$(this).removeAttr("data-datetype");
		}
	});

	// 버튼의 텍스트를 "날짜를 선택해 주세요"로 변경
	$("#date-button").text("날짜를 선택해 주세요");

	// 버튼에 disabled 속성 추가
	$("#date-button").attr("disabled", true);

}


function getHotelIdFromURL() {
	const queryString = window.location.search; // ?hotelid=3
	const urlParams = new URLSearchParams(queryString);
	return urlParams.get('hotelid');
}



function checkIncheckoutValue() {
	// 버튼의 텍스트에서 체크인 및 체크아웃 날짜를 추출합니다.
	const hotelId = getHotelIdFromURL();
	const buttonText = $(this).text();
	const dateMatches = buttonText.match(/(\d{4}\.\d{1,2}\.\d{1,2})/g);

	if (dateMatches.length < 2) {
		console.error("체크인 및 체크아웃 날짜를 찾을 수 없습니다.");
		return;
	}

	const checkIn = dateMatches[0];  // 체크인 날짜
	const checkOut = dateMatches[1]; // 체크아웃 날짜
	const checkInDate = new Date(checkIn.split('.').join('-') + 'T00:00:00'); // 'T00:00:00' 추가하여 시간 설정
	const checkOutDate = new Date(checkOut.split('.').join('-') + 'T00:00:00'); // 'T00:00:00' 추가하여 시간 설정


	const diffTime = Math.abs(checkOutDate.getTime() - checkInDate.getTime());
	const totalDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

	console.log("totalDays", totalDays);
	const dayNames = ["일", "월", "화", "수", "목", "금", "토"];
	const checkInDay = dayNames[checkInDate.getDay()];
	const checkOutDay = dayNames[checkOutDate.getDay()];

	// AJAX를 사용하여 서버에 날짜 값을 전송합니다.
	$.ajax({
		type: "get",
		url: "/hotelDetail.do",
		data: {
			hotelid: hotelId,
			checkIn: checkIn,
			checkOut: checkOut,
			totalDays: totalDays,
			checkInDay: checkInDay,
			checkOutDay: checkOutDay

		},
		success: function(response) {
			var content = $(response).find("#value-checker").html();
			$("#value-checker").html(content);
			console.log("체크인:", checkIn);
			console.log("체크아웃:", checkOut);
			console.log("몇 박 :", totalDays);
			// 가격을 포맷하는 함수
			function formatRoomPrice() {
				$(".roomPrice").each(function() {
					const price = parseInt($(this).text(), 10);
					$(this).text(price.toLocaleString('ko-KR'));
				});
			}
			//객실 선택
			$(".css-1lw0g5m, #room-selection").on("click", function() {
				console.log("클릭");
				var roomNo = $(this).data("room-no");
				var hotelId = $(this).data("hotel-id");
				if (roomNo && hotelId) {
					window.location.href = "/roomDetail.do?roomNo=" + encodeURIComponent(roomNo) + "&hotelId=" + encodeURIComponent(hotelId);
				} else {
					alert('객실 번호 또는 호텔 아이디가 없습니다.');
				}
			});


			// 화면의 요소 값을 바꿉니다.
			$(".css-1cq8r2w").html(`
        <span>${checkIn} (${checkInDay}) ~ ${checkOut} (${checkOutDay})</span> 
        <span class="css-pjwrcq">•</span>
        <span>${totalDays}박</span>
    `);

			calendarCancel();
			formatRoomPrice()
		},
		error: function(error) {
			console.error("서버 요청 오류:", error);
		}
	});
}



// 총 인원 업데이트
function updateTotalCount() {
	let adultCount = parseInt($("#adult-count").text()) || 2;
	let childCount = parseInt($("#child-count").text()) || 0;
	let totalPeople = adultCount + childCount;

	console.log("성인 수 : " + adultCount)
	console.log("유/아동 수 : " + childCount)
	$("#number-of-people-button").text("성인 " + adultCount + ", " + "유/아동 " + childCount + " · " + totalPeople + "인");


}

function increaseInAdultPopulation() {
	let count = parseInt($("#adult-count").text());
	if (count < 10) {
		count++;
		$("#adult-count").text(count);
		updateTotalCount();

		// 성인 인원이 1보다 크면 비활성화 상태 해제
		if (count > 1) {
			$("#decrease-button1").removeClass("css-1bdn4ss disabled").addClass("css-n4l38x");
			// 이미지 src 변경
			$("#decrease-img1").attr("src", "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNGRkYiIHg9Ii41IiB5PSIuNSIgd2lkdGg9IjI3IiBoZWlnaHQ9IjI3IiByeD0iMTMuNSIvPjxyZWN0IGZpbGw9IiMwMTUyQ0MiIHg9IjkiIHk9IjE0IiB3aWR0aD0iMTAiIGhlaWdodD0iMSIgcng9Ii41Ii8+PC9nPjwvc3ZnPg==");
		}
	}
	// 성인 인원이 10일 때 비활성화
	if (count === 10) {
		$("#add-button1").attr("disabled", "").addClass("css-1bdn4ss").removeClass("css-n4l38x");
		$("#add-img1").attr("src", "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNFNUY2RkYiIG9wYWNpdHk9Ii4yIiB4PSIuNSIgeT0iLjUiIHdpZHRoPSIyNyIgaGVpZ2h0PSIyNyIgcng9IjEzLjUiLz48cGF0aCBkPSJNMTMuNSAxMy41di00YS41LjUgMCAxMTEgMHY0aDRhLjUuNSAwIDExMCAxaC00djRhLjUuNSAwIDExLTEgMHYtNGgtNGEuNS41IDAgMTEwLTFoNHoiIGZpbGw9IiMwMTUyQ0MiIG9wYWNpdHk9Ii4zIi8+PC9nPjwvc3ZnPg==");
	}
}

function decreaseInAdultPopulation() {
	let count = parseInt($("#adult-count").text());
	count = count > 1 ? count - 1 : 1;
	$("#adult-count").text(count);
	updateTotalCount();

	// 성인 인원이 1일 때 비활성화 상태로 변경
	if (count === 1) {
		$("#decrease-button1").attr("disabled", "").addClass("css-1bdn4ss").removeClass("css-n4l38x");
		// 이미지 src 변경
		$("#decrease-img1").attr("src", "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNFNUY2RkYiIG9wYWNpdHk9Ii4yIiB4PSIuNSIgeT0iLjUiIHdpZHRoPSIyNyIgaGVpZ2h0PSIyNyIgcng9IjEzLjUiLz48cmVjdCBmaWxsPSIjMDE1MkNDIiBvcGFjaXR5PSIuMyIgeD0iOSIgeT0iMTQiIHdpZHRoPSIxMCIgaGVpZ2h0PSIxIiByeD0iLjUiLz48L2c+PC9zdmc+");
	}

	// 성인 인원이 10보다 작을때 비활성화 해제
	if (count < 10) {
		$("#add-button1").removeClass("css-1bdn4ss disabled").addClass("css-n4l38x");
		$("#add-img1").attr("src", "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNGRkYiIHg9Ii41IiB5PSIuNSIgd2lkdGg9IjI3IiBoZWlnaHQ9IjI3IiByeD0iMTMuNSIvPjxwYXRoIGQ9Ik0xMy41IDEzLjV2LTRhLjUuNSAwIDExMSAwdjRoNGEuNS41IDAgMTEwIDFoLTR2NGEuNS41IDAgMTEtMSAwdi00aC00YS41LjUgMCAxMTAtMWg0eiIgZmlsbD0iIzAxNTJDQyIvPjwvZz48L3N2Zz4=");
	}
}

function increaseInNumberChildren() {
	let count = parseInt($("#child-count").text());
	if (count < 5) { // 최대 5명까지만 허용
		count++;
		$("#child-count").text(count);
		updateTotalCount();

		// 유/아동 인원이 0보다 크면 비활성화 상태 해제
		if (count > 0) {
			$("#decrease-button2").removeClass("css-1bdn4ss disabled").addClass("css-n4l38x");
			// 이미지 src 변경
			$("#decrease-img2").attr("src", "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNGRkYiIHg9Ii41IiB5PSIuNSIgd2lkdGg9IjI3IiBoZWlnaHQ9IjI3IiByeD0iMTMuNSIvPjxyZWN0IGZpbGw9IiMwMTUyQ0MiIHg9IjkiIHk9IjE0IiB3aWR0aD0iMTAiIGhlaWdodD0iMSIgcng9Ii41Ii8+PC9nPjwvc3ZnPg==");
		}
		// 유/아동 인원이 5명 일 때 비활성화
		if (count == 5) {
			$("#add-button2").attr("disabled", "").addClass("css-1bdn4ss").removeClass("css-n4l38x");
			$("#add-img2").attr("src", "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNFNUY2RkYiIG9wYWNpdHk9Ii4yIiB4PSIuNSIgeT0iLjUiIHdpZHRoPSIyNyIgaGVpZ2h0PSIyNyIgcng9IjEzLjUiLz48cGF0aCBkPSJNMTMuNSAxMy41di00YS41LjUgMCAxMTEgMHY0aDRhLjUuNSAwIDExMCAxaC00djRhLjUuNSAwIDExLTEgMHYtNGgtNGEuNS41IDAgMTEwLTFoNHoiIGZpbGw9IiMwMTUyQ0MiIG9wYWNpdHk9Ii4zIi8+PC9nPjwvc3ZnPg==");
		}
	}
}

function decreaseInChildren() {
	let count = parseInt($("#child-count").text());
	count = count > 0 ? count - 1 : 0; -
		$("#child-count").text(count);
	updateTotalCount();

	if (count === 0) {
		$("#decrease-button2").attr("disabled", "").addClass("css-1bdn4ss").removeClass("css-n4l38x");

		// 이미지 src 변경
		$("#decrease-img2").attr("src", "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNFNUY2RkYiIG9wYWNpdHk9Ii4yIiB4PSIuNSIgeT0iLjUiIHdpZHRoPSIyNyIgaGVpZ2h0PSIyNyIgcng9IjEzLjUiLz48cmVjdCBmaWxsPSIjMDE1MkNDIiBvcGFjaXR5PSIuMyIgeD0iOSIgeT0iMTQiIHdpZHRoPSIxMCIgaGVpZ2h0PSIxIiByeD0iLjUiLz48L2c+PC9zdmc+");
	}

	// 성인 인원이 10보다 작을때 비활성화 해제
	if (count < 5) {
		$("#add-button2").removeClass("css-1bdn4ss disabled").addClass("css-n4l38x");
		$("#add-img2").attr("src", "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjgiIGhlaWdodD0iMjgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cmVjdCBzdHJva2U9IiMwMTUyQ0MiIGZpbGw9IiNGRkYiIHg9Ii41IiB5PSIuNSIgd2lkdGg9IjI3IiBoZWlnaHQ9IjI3IiByeD0iMTMuNSIvPjxwYXRoIGQ9Ik0xMy41IDEzLjV2LTRhLjUuNSAwIDExMSAwdjRoNGEuNS41IDAgMTEwIDFoLTR2NGEuNS41IDAgMTEtMSAwdi00aC00YS41LjUgMCAxMTAtMWg0eiIgZmlsbD0iIzAxNTJDQyIvPjwvZz48L3N2Zz4=");
	}
}





function sendTotalCountToServer(adultCount, childCount, totalPeople) {
	const hotelId = getHotelIdFromURL();

	console.log("클릭");
	console.log("totalPeople", totalPeople);
	$.ajax({
		type: "get",
		url: "/hotelDetail.do",
		data: {
			hotelid: hotelId,
			adultCount: adultCount,
			childCount: childCount,
			totalPeople: totalPeople
		},

		success: function(response) { //뷰 반환 -> body를 통째로 바꿔야 함 
			console.log(response);
			var content = $(response).find("#value-checker").html();
			$("#value-checker").html(content);
			console.log("전송된 값 :" + adultCount);
			console.log("전송된 값 :" + childCount);
			// 가격을 포맷하는 함수
			function formatRoomPrice() {
				$(".roomPrice").each(function() {
					const price = parseInt($(this).text(), 10);
					$(this).text(price.toLocaleString('ko-KR'));
				});
			}
			//객실 선택
			$(".css-1lw0g5m, #room-selection").on("click", function() {
				console.log("클릭");
				var roomNo = $(this).data("room-no");
				var hotelId = $(this).data("hotel-id");
				if (roomNo && hotelId) {
					window.location.href = "/roomDetail.do?roomNo=" + encodeURIComponent(roomNo) + "&hotelId=" + encodeURIComponent(hotelId);
				} else {
					alert('객실 번호 또는 호텔 아이디가 없습니다.');
				}
			});


			clearNumberOfPeople();
			formatRoomPrice()

			// 성공적으로 데이터를 보냈을 때 버튼의 내용 변경
			$("#number-of-people").find("span.css-0").text("성인 " + adultCount);
			$("#number-of-people").find("span.css-7zhfhb").text(", 유/아동 " + childCount);

		},

		error: function(error) {
			console.error("Ajax 요청 에러:", error);
		}
	});
}








