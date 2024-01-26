$(document).ready(function() {

	// 비밀번호 입력란을 선택합니다.
	var inputUserPw = $("#userPw");
	// 비밀번호 라벨을 선택합니다.
	var labelPw = $("label[for='lavel_pw']");
	// 비밀번호 확인 입력란을 선택합니다.
	var inputPwCheck = $("#userPw_check");
	// 비밀번호 확인 라벨을 선택합니다.
	var labelPwCheck = $("label[for='userPw_check']");

	// 비밀번호 오류 메시지 선택
	var userPwErrorMessage = $("#userPw_errorMessage");
	//비밀번호 텍스트 라인
	var userPwErrorLine = $("#userPw_errorLine");
	// 비밀번호 확인 메시지 선택
	var PwCheckErrorMessage = $("#check_errorMessage");
	// 비밀번호 확인 라인
	var PwCheckErrorLine = $("#check_errorLine");
	var nextButton = $("#nextButton");
	
	var inputEmail = $("#userEmail");
	
	var Title = $("#Title");



	// 비밀번호 입력란의 내용이 변경될 때 이벤트를 처리합니다.
	inputUserPw.on("input", function() {
		if ($(this).val().trim() !== "") {
			labelPw.addClass("TextField_labelFilled__3YSfP");
		} else {
			labelPw.removeClass("TextField_labelFilled__3YSfP");
		}
	});


	// 비빌번호 확인 입력란의 내용이 변경될 때 이벤트를 처리합니다.
	inputPwCheck.on("input", function() {
		if ($(this).val().trim() !== "") {
			labelPwCheck.addClass("TextField_labelFilled__3YSfP");
		} else {
			labelPwCheck.removeClass("TextField_labelFilled__3YSfP");
		}
	});
	// 비밀번호 유효성 검사 함수를 변수로 선언하고 정의합니다.
	var validatePassword = function() {
		var password = inputUserPw.val().trim();
		userPwErrorLine.removeClass("TextField_underlineError__1MJIA");
		userPwErrorMessage.text("");

		if (password === "") {
			// 비밀번호가 비어있으면 유효성 검사 통과
			return;
		}

		var passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\-])[A-Za-z\d!@#$%^&*()_+{}\[\]:;<>,.?~\\-]{8,20}$/;


		if (!passwordPattern.test(password)) {
			userPwErrorLine.addClass("TextField_underlineError__1MJIA");
			userPwErrorMessage.text("비밀번호는 공백을 제외한 8자에서 20자 사이의 조합이어야 하며, 영문자, 숫자, 특수 문자를 포함해야 합니다.");
			return;
		}

		// 유효성 검사 통과 시 오류 메시지를 지우고 원래대로 돌려놓음
		userPwErrorLine.removeClass("TextField_underlineError__1MJIA");
		userPwErrorMessage.text("");
	};

	// 비밀번호 확인 함수를 변수로 선언하고 정의합니다.
	var validatePasswordCheck = function() {
		var password = inputUserPw.val().trim();
		var passwordCheck = inputPwCheck.val().trim();
		PwCheckErrorLine.removeClass("TextField_underlineError__1MJIA");
		PwCheckErrorMessage.text("");


		if (passwordCheck === "") {
			// 비밀번호 확인란이 비어있을 경우 유효성 검사 통과
			return;
		}

		if (password !== passwordCheck) {
			PwCheckErrorLine.addClass("TextField_underlineError__1MJIA");
			PwCheckErrorMessage.text("비밀번호가 일치하지 않습니다.");
			$("#nextButton").prop("disabled", true);
			$("#nextButton").addClass("RectButton_disabled__14E3B");
			return;

		}

		// 유효성 검사 통과 시 오류 메시지를 지우고 원래대로 돌려놓음
		PwCheckErrorLine.removeClass("TextField_underlineError__1MJIA");
		PwCheckErrorMessage.text("");
		$("#nextButton").prop("disabled", false);
		$("#nextButton").removeClass("RectButton_disabled__14E3B");
		// 유효성 검사 통과 시 버튼 활성화
	};

	// 비밀번호 입력란의 내용이 변경될 때 유효성 검사 함수 호출
	inputUserPw.on("input", validatePassword);
	// 비밀번호 확인란의 내용이 변경될 때 유효성 검사 함수 호출
	inputPwCheck.on("input", validatePasswordCheck);




	// 다음 버튼에 클릭 이벤트 핸들러 추가
	nextButton.click(function() {
		// 이메일과 비밀번호 값을 가져오기
		var userPw = inputUserPw.val().trim();
		var userEmail = inputEmail.val().trim();

		// 이메일과 비밀번호를 가지고 /join3.do로 AJAX 요청 보내기
		$.ajax({
			type: "GET", // 서버 구성에 따라 POST 또는 GET 메소드 사용
			url: "/join3.do",
			data: {
				userPw: userPw,
				userEmail:userEmail
			},
			
			success: function(response) {

				// 서버로부터의 응답 처리
				// 예를 들어, 응답을 사용하여 페이지 내용을 업데이트할 수 있습니다.
				$("#body2").html(response);

				// 필요한 경우 헤더 텍스트 업데이트
				Title.text("회원가입 (3/3)");
				$("#nextButton").prop("disabled", true);
				$("#nextButton").addClass("RectButton_disabled__14E3B");
			}

		});
	});
});
