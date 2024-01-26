$(document).ready(function() {


	// 요일 헤더 추가
	var days = ['일', '월', '화', '수', '목', '금', '토'];
	var $ul = $('.DayPicker_weekHeader_ul');

	$.each(days, function(index, day) {
		var $li = $('<li>', { class: 'DayPicker_weekHeader_li DayPicker_weekHeader_li_1', style: 'width: 49px;' });
		var $small = $('<small>').text(day);
		$li.append($small);
		$ul.append($li);
	});

	// 오늘 날짜 가져오기
	var today = new Date();
	today.setHours(0, 0, 0, 0);

	// 체크인이 선택되었는지 여부를 저장하는 변수
	var isCheckInSelected;
	var $selectedCheckIn; // 체크인 날짜 셀의 참조를 저장할 변수

	// 체크아웃 초기 텍스트 설정
	$('#check_out').text('-월 -일');

	function onClickDate() {
		var $this = $(this);
		console.log('isCheckInSelected:', isCheckInSelected); // 상태 변수 로깅

		// 선택된 셀이 이미 CalendarDay__blocked_out_of_range 클래스를 가지고 있다면 아무 동작도 하지 않음
		if ($this.hasClass('CalendarDay__blocked_out_of_range')) return;

		var day = $this.text();
		var month = parseInt($this.closest('.CalendarMonth').find('.CalendarMonth_caption strong').text().split(". ")[1], 10);

		// 선택된 날짜 객체 생성
		var selectedDateObj = new Date(new Date().getFullYear(), month - 1, day);
		console.log('클릭한 날짜 값 false : ' + month + "월" + day + "일");




		// 이전에 선택된 날짜 셀의 선택을 해제
		$('.CalendarDay__selected').removeClass('CalendarDay__selected');
		$('.DateRangePicker_reset__309eB').show();
		$('.DateRangePicker_rangePickerConfirmButton__2c41H').prop('disabled', false);


		if (isCheckInSelected) {
			// 체크인이 이미 선택되었다면 체크아웃 날짜로 설정
			var checkInDateText = $('#check_in').text();
			var checkInDateArray = checkInDateText.split("월 ");
			var checkInDay = parseInt(checkInDateArray[1]);
			console.log('클릭한 날짜 값 true : ' + month + "월" + day + "일");
			var checkInMonth = parseInt(checkInDateArray[0]);
			var checkInDateObj = new Date(new Date().getFullYear(), checkInMonth - 1, checkInDay);


			// 체크아웃으로 선택 가능한 최대 날짜 계산 (체크인 날짜 + 9박)
			var maxCheckOutDate = new Date(checkInDateObj);
			maxCheckOutDate.setDate(checkInDateObj.getDate() + 9);

			// 모든 셀을 순회하며 CalendarDay__blocked_out_of_range 클래스 추가
			$('.CalendarDay').each(function() {
				var day = $(this).text();
				var month = parseInt($(this).closest('.CalendarMonth').find('.CalendarMonth_caption strong').text().split(". ")[1], 10);
				var currentDate = new Date(new Date().getFullYear(), month - 1, day);

				if (currentDate > maxCheckOutDate) {
					$(this).addClass('CalendarDay__blocked_out_of_range2');
				}
			});

			// 선택된 체크아웃 날짜가 최대 체크아웃 날짜보다 이후일 경우
			if (selectedDateObj > maxCheckOutDate) {
				alert('체크아웃 날짜는 체크인 날짜로부터 9박 이내로 선택해주세요.');
				return;
			}

			// 모든 셀에서 CalendarDay__selected_span 클래스 제거
			$('.CalendarDay__selected_span').removeClass('CalendarDay__selected_span');

			// 체크인 날짜와 체크아웃 날짜 사이의 모든 날짜에 CalendarDay__selected_span 클래스 추가
			$('.CalendarDay').each(function() {
				var day = $(this).text();
				var month = parseInt($(this).closest('.CalendarMonth').find('.CalendarMonth_caption strong').text().split(". ")[1], 10);
				var currentDate = new Date(new Date().getFullYear(), month - 1, day);

				// 체크인 날짜와 체크아웃 날짜 사이라면
				if (currentDate > checkInDateObj && currentDate < selectedDateObj) {
					$(this).addClass('CalendarDay__selected_span');
				}
			});

			// 선택된 체크아웃 날짜가 체크인 날짜보다 이전일 경우, 체크인 날짜로 설정
			if (selectedDateObj < checkInDateObj) {
				$('#check_in').text(month + "월 " + day + "일");
				$selectedCheckIn = $this;
				$this.addClass('CalendarDay__selected');
			} else {
				$('#check_out').text(month + "월 " + day + "일");
				$selectedCheckIn.addClass('CalendarDay__selected'); // 체크인 날짜에도 클래스 추가
				$this.addClass('CalendarDay__selected'); // 체크아웃 날짜에 클래스 추가
				$('#check_out').text(month + "월 " + day + "일");
			}
		} else {
			// 체크인이 아직 선택되지 않았다면 체크인 날짜로 설정
			$('#check_in').text(month + "월 " + day + "일");
			$selectedCheckIn = $this; // 체크인 날짜 셀의 참조를 저장
			$this.addClass('CalendarDay__selected'); // 체크인 날짜에 클래스 추가
			isCheckInSelected = true;

			// 체크인이 선택되면 체크아웃 텍스트를 초기화
			$('#check_out').text('-월 -일');


		}
	}

	$('.CalendarDay').on('click', onClickDate); // 클릭 이벤트 핸들러 바인딩

	// 현재 달과 다음 달에 대해 루프를 돌며 달력을 생성합니다.
	for (var monthOffset = 0; monthOffset < 4; monthOffset++) {
		// 첫 번째 달력 구조를 복사해서 두 번째 달력을 생성합니다.
		if (monthOffset > 0) {
			var $calendarClone = $('#calendar' + monthOffset).clone();
			$calendarClone.attr('id', 'calendar' + (monthOffset + 1));
			$('.CalendarMonthGrid > div').append($calendarClone);
		}
		// 해당 달의 년월을 가져옵니다.
		var date = new Date();
		date.setMonth(date.getMonth() + monthOffset);
		var year = date.getFullYear();
		var month = (date.getMonth() + 1).toString().padStart(2, '0');

		// 년월을 문자열로 변환합니다.
		var yearMonthString = year + ". " + month;

		// <strong> 태그에 년월을 삽입합니다.
		$('.CalendarMonth_caption strong').eq(monthOffset).text(yearMonthString);

		// 해당 월의 첫 날과 마지막 날을 구합니다.
		var firstDay = new Date(year, date.getMonth(), 1).getDay();
		var lastDay = new Date(year, date.getMonth() + 1, 0).getDate();

		// tbody를 선택합니다. 이 부분에서 적절한 tbody를 선택해야 합니다.
		var $tbody = $('.CalendarMonth_table tbody').eq(monthOffset);

		// 이전 달력의 정보를 지우고 새로운 정보를 삽입합니다.
		$tbody.empty();

		// tr과 td를 생성하여 tbody에 삽입합니다.
		var $tr = $('<tr>');
		for (var i = 0; i < firstDay; i++) {
			$tr.append('<td></td>'); // 첫 날까지의 빈 셀 추가
		}
		for (var i = 1; i <= lastDay; i++) {
			if ($tr.children().length >= 7) {
				$tr.find('td').click(onClickDate);
				$tbody.append($tr);
				$tr = $('<tr>');
			}

			var classes = 'CalendarDay CalendarDay_1 CalendarDay__default CalendarDay__default_2';

			// 오늘 이전 날짜인지 확인
			var currentDate = new Date(year, date.getMonth(), i);
			if (currentDate < today) {
				classes += ' CalendarDay__blocked_out_of_range';
			}

			// 이번 달의 28, 29, 30일과 다음 달의 1, 2, 3일인 경우에만 특정 클래스 추가
			if ((monthOffset === 0 && (i >= 28 && i <= lastDay)) || (monthOffset === 1 && (i >= 1 && i <= 3))) {
				classes += ' CalendarDay__highlighted_calendar';
			}

			var $td = $('<td>', {
				class: classes,
				text: i,
				style: 'width: 49px; height: 48px;',
				tabindex: '-1',
				role: 'button'

			}).click(onClickDate);

			$tr.append($td);
		}
		$tbody.append($tr);
	}

	// 오늘 날짜와 내일 날짜를 설정하는 함수
	function setTodayAndTomorrow() {
		var today = new Date();
		var tomorrow = new Date(today);
		tomorrow.setDate(today.getDate() + 1);

		var todayDay = today.getDate();
		var todayMonth = today.getMonth();

		var tomorrowDay = tomorrow.getDate();
		var tomorrowMonth = tomorrow.getMonth();

		var $checkInCell;
		var $checkOutCell;

		$('.CalendarMonth_table tbody td').each(function() {
			var $this = $(this);
			var day = parseInt($this.text(), 10);
			var month = parseInt($this.closest('.CalendarMonth').find('.CalendarMonth_caption strong').text().split(". ")[1], 10) - 1;

			if (day === todayDay && month === todayMonth) {
				$checkInCell = $this;
			}

			if (day === tomorrowDay && month === tomorrowMonth) {
				$checkOutCell = $this;
			}
		});

		// 체크인, 체크아웃 날짜를 설정합니다.
		if ($checkInCell) {
			$checkInCell.click();
		}

		if ($checkOutCell) {
			$checkOutCell.click();
		}
	}
	// 초기화 버튼 클릭 시 호출될 함수
	function resetDateRange() {
		// 체크인과 체크아웃을 초기화
		$('#check_in').text('-월 -일');
		$('#check_out').text('-월 -일');
		isCheckInSelected = false;
		$('.CalendarDay__selected').removeClass('CalendarDay__selected');
		$('.CalendarDay__blocked_out_of_range2').removeClass('CalendarDay__blocked_out_of_range2');
		$('.DateRangePicker_reset__309eB').hide();
		$('.DateRangePicker_rangePickerConfirmButton__2c41H').prop('disabled', true);
		$('.CalendarDay__selected_span').removeClass('CalendarDay__selected_span');

		// 오늘 날짜 셀에 스타일 추가
		var today = new Date();
		var todayDay = today.getDate();
		var todayMonth = today.getMonth();
		var $todayCell; // 오늘 날짜 셀의 참조를 저장

		$('.CalendarMonth_table tbody td').each(function() {
			var $this = $(this);
			var day = parseInt($this.text(), 10);
			var month = parseInt($this.closest('.CalendarMonth').find('.CalendarMonth_caption strong').text().split(". ")[1], 10) - 1;

			if (day === todayDay && month === todayMonth) {
				$this.attr('style', 'width: 49px; height: 48px; border: 3px solid rgb(222, 46, 95);');
				$todayCell = $this; // 오늘 날짜 셀의 참조 저장
			}
		});

		// 다시 날짜 셀을 클릭하면 해당 스타일 제거
		$('.CalendarDay').on('click', function() {
			$todayCell.removeAttr('style');
		});
	}

	// 초기화 버튼에 클릭 이벤트 핸들러 추가
	$('.DateRangePicker_reset__309eB').click(resetDateRange);

	// 오늘 날짜와 내일 날짜를 클릭
	setTodayAndTomorrow();


	function getParameterByName(name, url = window.location.href) {
		name = name.replace(/[\[\]]/g, '\\$&');
		var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
			results = regex.exec(url);
		if (!results) return null;
		if (!results[2]) return '';
		return decodeURIComponent(results[2].replace(/\+/g, ' '));
	}

	$("#button").click(function() {
		console.log('버튼클릭');
		var checkIn = $("#check_in").text(); // 체크인 값 가져오기
		var checkOut = $("#check_out").text(); // 체크아웃 값 가져오기
		var entireRegion = getParameterByName('entireRegion'); // URL에서 entireRegion 값 가져오기
		var CalendarModal = $('#calendar_modal');

		$.ajax({
			type: "GET",
			url: "/calendar.do",
			data: {
				checkIn: checkIn,
				checkOut: checkOut,
				entireRegion: entireRegion, // entireRegion 파라미터 추가
			},
			success: function(response) {
				console.log('성공');
				CalendarModal.hide();

			}
		});
	});


});