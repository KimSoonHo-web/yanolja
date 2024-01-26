$(document).ready(function() {

	// 전화번호 입력란을 선택합니다.
	var inputPhoneNo = $("#phoneNo");
	// 전화번호 라벨을 선택합니다.
	var labelPhoneNo = $("label[for='lavel_pN']");
	// 코드 입력란을 선택합니다.
	var inputCode = $("#code");
	// 코드 라벨을 선택합니다.
	var labelCode = $("label[for='label_code']");

	// 이메일 오류 메시지 선택
	var phoneNoErrorMessage = $("#phoneNo_errorMessage");
	//이메일 텍스트 라인
	var phoneNoErrorLine = $("#phoneNo_errorLine");
	// 코드 오류 메시지 선택
	var codeErrorMessage = $("#code_errorMessage");
	// 코드 텍스트 라인
	var codeErrorLine = $("#code_errorLine");

	var inputUserPw = $("#userPw");
	var inputEmail = $("#userEmail");


	// 전화번호 입력란의 내용이 변경될 때 이벤트를 처리합니다.
	inputPhoneNo.on("input", function() {
		if ($(this).val().trim() !== "") {
			labelPhoneNo.addClass("TextField_labelFilled__3YSfP");
		} else {
			labelPhoneNo.removeClass("TextField_labelFilled__3YSfP");
		}
	});
	// 전화번호 확인 입력란의 내용이 변경될 때 이벤트를 처리합니다.
	inputCode.on("input", function() {
		if ($(this).val().trim() !== "") {
			labelCode.addClass("TextField_labelFilled__3YSfP");
		} else {
			labelCode.removeClass("TextField_labelFilled__3YSfP");
		}
	});

	inputPhoneNo.on("input", function() {
		var phoneNo = $(this).val().trim();
		var phonePattern = /^(010)-[0-9]{4}-[0-9]{4}$/;
		var formattedPhoneNo = formatPhoneNumber(phoneNo);
		var phoneButton = $("#phoneButton"); // emailButton 버튼 선택

		$(this).val(formattedPhoneNo);

		if (phoneNo === "") {
			// Remove error message and style if input is empty.
			phoneNoErrorMessage.text("");
			phoneNoErrorLine.removeClass("TextField_underlineError__1MJIA");
			phoneButton.prop("disabled", true);
			phoneButton.addClass("RectButton_disabled__14E3B");
		} else if (!phonePattern.test(phoneNo)) {
			// If the mobile phone number does not match the pattern, display an error message and change the input field style.
			phoneNoErrorMessage.text("유효하지 않은 휴대폰 번호 형식입니다.");
			phoneNoErrorLine.addClass("TextField_underlineError__1MJIA");
			phoneButton.prop("disabled", true);
			phoneButton.addClass("RectButton_disabled__14E3B");
		} else {
			// If the mobile phone number is valid, remove the error message and restore the style to its original state.
			phoneNoErrorMessage.text("");
			phoneNoErrorLine.removeClass("TextField_underlineError__1MJIA");
			phoneButton.prop("disabled", false);
			phoneButton.removeClass("RectButton_disabled__14E3B");
		}
	});

	// 전화번호를 자동으로 하이픈으로 포맷하는 함수
	function formatPhoneNumber(phoneNo) {
		// 숫자만 남기고 모든 문자 및 기호 제거
		var numericPhoneNo = phoneNo.replace(/\D/g, "");
		var formatted = "";

		for (var i = 0; i < numericPhoneNo.length; i++) {
			if (i === 3 || i === 7) {
				formatted += "-";
			}
			formatted += numericPhoneNo[i];
		}

		return formatted;
	}

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
			codeErrorLine.removeClass("TextField_underlineError__1MJIA");
		} else {
			// 코드가 4자리가 아니라면 오류 메시지 표시
			codeErrorMessage.text("인증번호는 4자리의 숫자여야 합니다.");
			codeErrorLine.addClass("TextField_underlineError__1MJIA");
		}
	});


	// 버튼 1을 클릭할 때 기본 폼 제출 작업을 방지합니다.
	$("#phoneButton").click(function(e) {
		e.preventDefault(); // 기본 작업 방지

		// 입력된 휴대폰 번호 가져오기
		var phoneNumberValue = $("#phoneNo").val();

		// 모달에 입력한 번호 표시
		$(".Popup_description__1ujj9").text(phoneNumberValue);

		// 모달 표시
		$(".ReactModalPortal").css("display", "block");
	});

	// 모달 "아니요" 버튼 클릭 이벤트 처리 (아래 모달 코드와 함께 사용)
	$(".Popup_subBtn__2ZAOD").click(function() {

		// 모달 숨기기
		$(".ReactModalPortal").css("display", "none");
	});

	// 모달의 "전송하기" 버튼 클릭 이벤트 처리
	$(".Popup_mainBtn__3Cijg").click(function() {
		// 보이지 않는 클래스를 보이는 클래스로 변경
		$(".SignUpAnimatedAppearance_containerInvisible__3oMaO").removeClass("SignUpAnimatedAppearance_containerInvisible__3oMaO").addClass("SignUpAnimatedAppearance_containerVisible__389Ot");

		// 모달 숨기기
		$(".ReactModalPortal").css("display", "none");

		// 입력 필드에서 전화번호 가져오기
		var phoneNo = inputPhoneNo.val().trim();
		//페이지 이동 없이
		event.preventDefault();
		// "/sendSMS.dox"로 SMS를 보내기 위한 AJAX 요청 보내기
		$.ajax({
			url: '/sendSMS.dox',
			type: 'GET',
			data: {
				"phoneNo": phoneNo
			},
			success: function(response) {
				// 서버에서 받은 응답 처리 (응답에는 인증 번호가 포함됨)
				console.log("받은 인증번호: " + response);

				// 인증번호 저장
				var serverCode = response;
				console.log("서버로 부터 받은 값 : " + serverCode);

				//이메일 폼 보이기
				$("#code_form").show(); // 이 폼의 ID를 확인하여 사용하십시오

				// 코드 입력란의 내용이 변경될 때 이벤트를 처리합니다.
				inputCode.on("input", function() {
					var enteredCode = $(this).val().trim();
					console.log("내가 입력한 값 : " + enteredCode);
					// 입력된 인증번호와 서버로부터 받은 인증번호 비교
					if (serverCode === enteredCode) {
						console.log("서버에서 받은 값 :" + serverCode + "===" + "내가 입력한 값" + enteredCode);
						// 예: 버튼 활성화 및 클래스 제거
						$("#nextButton").prop("disabled", false);
						$("#nextButton").removeClass("RectButton_disabled__14E3B");

					} else {
						// 불일치할 경우 메시지 표시 또는 원하는 로직 추가
						console.log("인증번호 불일치");
						// 예: 버튼 비활성화 및 클래스 추가
						$("#nextButton").prop("disabled", true);
						$("#nextButton").addClass("RectButton_disabled__14E3B");
					}
				});
			},
		});
	});

	// 폼 제출 처리
	$('#nextButton').click(function(event) {
		console.log("클릭")
		var userPw = inputUserPw.val().trim();
		var userEmail = inputEmail.val().trim();
		var phoneNo = inputPhoneNo.val().trim();


		var userVo = {
			userPw: userPw,
			userEmail: userEmail,
			phoneNo: phoneNo
		};
		console.log("회원 가입 정보 : " + userVo)
		// 필요한 경우 클라이언트 측 유효성 검사 수행

		// AJAX를 통해 폼 제출
		$.ajax({
			type: 'POST',
			url: '/join.dex',
			data: userVo,
			success: function(response) {

				console.log("회원가입 정보 : " + userVo);
				 window.location.href = '/login.do';
				
				
			}
		});
	});

});
