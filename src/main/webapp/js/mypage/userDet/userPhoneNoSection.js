$(document).ready(function() {
	console.log("호출");
	var newPhonInput = $('#newPhon');
	var phErrorMessage = $('#phErrorMessage');
	var codeErrorMessage = $('#codeErrorMessage');
	var sendCodeButton = $('#sendCodeButton');
	var inputCode = $('#code');
	var saveButton = $('#saveButton');
	var cancelButton = $('#cancelButton');
	var editButton = $('#editButton');
	var ph = $('#ph');
	var phN = $('#phN');
	var modal = $("#modal");
	var title = $('#title');
	var modalButton = $("#modalButton");

	// 수정 버튼 클릭 이벤트 핸들러
	editButton.on('click', function() {
		phN.hide();
		ph.show();
	});

	cancelButton.on('click', function() {
		phN.show();
		ph.hide();
	})

		modalButton.click(function() {
		console.log("확인");
		modal.hide();
		phN.show();
		ph.hide();
		
		

	});
	newPhonInput.on("input", function() {
		var newPhonValue = newPhonInput.val();

		// 숫자와 '-'만 허용
		newPhonValue = newPhonValue.replace(/[^0-9-]/g, '');

		// '-'를 제거한 후 적절한 위치에 '-' 추가
		var pureNumbers = newPhonValue.replace(/-/g, '');
		if (pureNumbers.length <= 3) {
			newPhonValue = pureNumbers;
		} else if (pureNumbers.length <= 7) {
			newPhonValue = pureNumbers.slice(0, 3) + '-' + pureNumbers.slice(3);
		} else {
			newPhonValue = pureNumbers.slice(0, 3) + '-' + pureNumbers.slice(3, 7) + '-' + pureNumbers.slice(7, 11);
		}

		newPhonInput.val(newPhonValue);

		// 입력값이 변한 후에 숫자만 남기고 문자열 양 끝의 공백을 제거
		newPhonValue = newPhonInput.val().trim();

		if (!newPhonValue) {
			phErrorMessage.text('휴대폰번호를 입력해주세요.');
			newPhonInput.addClass('InputDefault_inputInvalid__3vQs8');
			sendCodeButton.prop('disabled', true);
			sendCodeButton.css('background', '');  // 배경색 제거
		} else {
			$.get("/comparePhoneNo", { newPhoneNo: newPhonValue })
				.done(function(data) {
					if (data) {
						phErrorMessage.text('현재의 핸드폰번호와 동일합니다.');
						newPhonInput.addClass('InputDefault_inputInvalid__3vQs8');
						sendCodeButton.prop('disabled', true);
						sendCodeButton.css('background', '');  // 배경색 제거
					} else {
						phErrorMessage.text(data);
						if (data || newPhonValue.length < 13) {
							newPhonInput.addClass('InputDefault_inputInvalid__3vQs8');
							phErrorMessage.text('전화번호를 모두 입력해주세요.');
							sendCodeButton.prop('disabled', true);
							sendCodeButton.css('background', '');  // 배경색 제거
						} else {
							newPhonInput.removeClass('InputDefault_inputInvalid__3vQs8');
							sendCodeButton.prop('disabled', false);
							sendCodeButton.css('background', '#de2e5f');  // 배경색 추가
						}
					}
				});

		}
	});


	// 코드 입력란의 내용이 변경될 때 이벤트를 처리합니다.
	inputCode.on("input", function() {
		var code = $(this).val().trim();
		var codePattern = /^\d{4}$/;
		// 숫자 이외의 문자를 제거합니다.
		code = code.replace(/\D/g, '');
		// 6자리 이상의 코드는 잘라냅니다.
		if (code.length > 4) {
			code = code.slice(0, 4);
		}
		// 코드를 다시 설정합니다.
		$(this).val(code);

		// 코드 길이가 4자리인지 확인합니다.
		if (code.length === 4) {
			// 오류 메시지와 스타일을 지우고
			codeErrorMessage.text("");
			inputCode.removeClass("InputDefault_inputInvalid__3vQs8");
		} else {
			// 코드가 4자리가 아니라면 오류 메시지 표시
			codeErrorMessage.text("인증번호는 4자리의 숫자여야 합니다.");
			inputCode.addClass("InputDefault_inputInvalid__3vQs8");
		}
	});

	sendCodeButton.on('click', function(e) {
		console.log("클릭");
		var newPhoneNo = newPhonInput.val().trim();
		inputCode.prop('disabled', false);
		
		e.preventDefault();

		$.ajax({
			url: '/sendSMS.dox',
			type: 'GET',
			data: {
				phoneNo: newPhoneNo
			},
			success: function(response) {
				// 서버에서 받은 응답 처리 (응답에는 인증 번호가 포함됨)
				console.log("받은 인증번호: " + response);

				// 인증번호 저장
				var serverCode = response;
				console.log("서버로 부터 받은 값 : " + serverCode);

				// 코드 입력란의 내용이 변경될 때 이벤트를 처리합니다.
				inputCode.on("input", function() {
					var enteredCode = $(this).val().trim();
					console.log("내가 입력한 값 : " + enteredCode);
					// 입력된 인증번호와 서버로부터 받은 인증번호 비교
					if (serverCode === enteredCode) {
						console.log("서버에서 받은 값 :" + serverCode + "===" + "내가 입력한 값" + enteredCode);
						// 예: 버튼 활성화 및 클래스 제거
						saveButton.prop("disabled", false);

					} else {
						// 불일치할 경우 메시지 표시 또는 원하는 로직 추가
						codeErrorMessage.text("인증번호 맞지 않습니다.");
						// 예: 버튼 비활성화 및 클래스 추가
						saveButton.prop("disabled", true);
					}
				});
			}

		});
	});


	saveButton.on('click', function(e) {
		e.preventDefault();
		var newPhon = newPhonInput.val().trim();
		console.log("입력한 휴대폰 번호" + newPhon);
		$.ajax({
			url: '/updateUser', // 요청을 보낼 URL
			method: 'POST',
			contentType: 'application/json',
			data: JSON.stringify({
				newPhonNo: newPhon, // 새 비밀번호
			}),
		})
			.done(function(response) {
				console.log("성공");
				title.text('정상적으로 변경되었습니다');
				modal.show();

			})
			.fail(function(jqXHR, textStatus, errorThrown) {
				console.log("실패");
				title.text(jqXHR.responseText);
				modal.show();
			});
	});



});
