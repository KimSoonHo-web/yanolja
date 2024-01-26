$(document).ready(function() {
	var inputEmail = $("#userEmail");
	// 이메일 라벨을 선택합니다.
	var labelEmail = $("label[for='lavel_email']");
	// 이메일 오류 메시지 선택
	var emailErrorMessage = $("#email_errorMessage");
	//이메일 텍스트 라인
	var emailErrorLine = $("#email_errorLine");
	// 비밀번호 입력란을 선택합니다.
	var inputUserPw = $("#userPw");
	// 비밀번호 라벨을 선택합니다.
	var labelPw = $("label[for='lavel_pw']");

	var loginButton = $("#loginButton");
	var signupWithEmail = $("#signupWithEmail");
	var forgotPassword = $("#forgotPassword");

	var headertitle = $('#Title');
	headertitle.text('이메일 로그인'); // 타이틀에 이메일 로그인 문구 설정
	
	forgotPassword.click(function() {
		window.location.href = "/find.do";
	});
	signupWithEmail.click(function() {
		window.location.href = "/join1.do";
	});

	

	//로그인 초기 버튼 비활성화
	loginButton.prop("disabled", true);

	function checkInputs() {
		var emailValue = inputEmail.val().trim();
		var passwordValue = inputUserPw.val().trim();

		// 이메일과 비밀번호가 모두 입력되면 로그인 버튼 활성화
		if (emailValue !== "" && passwordValue !== "") {
			loginButton.prop("disabled", false);
			loginButton.removeClass("RectButton_disabled__14E3B");
		} else {
			loginButton.prop("disabled", true);
			loginButton.addClass("RectButton_disabled__14E3B");
		}
	}

	// 이메일 입력란의 내용이 변경될 때 이벤트를 처리합니다.
	inputEmail.on("input", function() {
		if ($(this).val().trim() !== "") {
			labelEmail.addClass("TextField_labelFilled__3YSfP");
			emailErrorLine.removeClass("TextField_underlineError__1MJIA");
			emailErrorMessage.text("");


		} else {
			labelEmail.removeClass("TextField_labelFilled__3YSfP");
		}
		checkInputs(); // 입력 변경 후 입력을 확인
	});

	// 코드 입력란의 내용이 변경될 때 이벤트를 처리합니다.
	inputUserPw.on("input", function() {
		if ($(this).val().trim() !== "") {
			labelPw.addClass("TextField_labelFilled__3YSfP");
		} else {
			labelPw.removeClass("TextField_labelFilled__3YSfP");
		}
		checkInputs(); // 입력 변경 후 입력을 확인s
	});

	inputUserPw.on("input", function() {
		if ($(this).val().trim() !== "") {
			labelPw.addClass("TextField_labelFilled__3YSfP");
		} else {
			labelPw.removeClass("TextField_labelFilled__3YSfP");
		}
		checkInputs();
	});

	loginButton.click(function() {
		console.log("로그인 버튼 클릭");

		// 사용자 이메일과 비밀번호 가져오기
		var userEmail = inputEmail.val().trim();
		var userPw = inputUserPw.val().trim();

		// 사용자 정보 객체 생성
		var userVo = {
			userEmail: userEmail,
			userPw: userPw
		};

		$.ajax({
			type: "POST",
			url: "/login.dox",
			data: JSON.stringify(userVo),
			contentType: "application/json",
			success: function(response) {
				if (response.redirectUrl) {
					console.log("Login successful");
					window.location.href = "/mypage.do"; // Redirect to My Page on success
				} else if (response.errorMessage) {
					console.log("Login failed");
					emailErrorMessage.text("입력한 회원 정보를 다시 확인해주세요.");
					emailErrorLine.addClass("TextField_underlineError__1MJIA");

				}
			},
		});
	});
});