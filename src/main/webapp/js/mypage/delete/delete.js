$(document).ready(function() {
	// 패스워드 필드 선택
	var inputUserPw = $("#userPw");
	// "다음" 버튼 선택
	var nextButton = $("#nextButton");
	// 헤더 버튼
	var headerButton = $("#headerButton");

	// 패스워드 레이블 선택
	var labelPw = $("label[for='lavel_pw']");
	// 패스워드 오류 메시지 선택
	var userPwErrorMessage = $("#userPw_errorMessage");
	// 패스워드 오류 라인
	var userPwErrorLine = $("#userPwErrorLine"); // HTML과 일치하도록 업데이트된 ID
	var Title = $("#Title");
	
	Title.text('회원탈퇴');
	
	headerButton.on("click", function() {
		window.history.back();
	});
	// 입력값을 확인하고 "다음" 버튼을 활성화/비활성화하는 함수 정의
	function checkInputValue() {
		console.log("클릭");
		if (inputUserPw.val().trim() !== "") {
			nextButton.removeClass("RectButton_disabled__14E3B");
			nextButton.prop("disabled", false);
		} else {
			nextButton.addClass("RectButton_disabled__14E3B");
			nextButton.prop("disabled", true);
		}
	}

	// 패스워드 입력 필드 내용이 변경될 때 이벤트 처리
	inputUserPw.on("input", function() {
		// 입력값을 확인하고 "다음" 버튼을 활성화/비활성화
		checkInputValue();

		// 입력값이 비어 있지 않은지(텍스트를 포함하는지) 확인
		if ($(this).val().trim() !== "") {
			// 비어 있지 않으면 레이블에 채워진 상태로 스타일을 지정하는 CSS 클래스 추가
			labelPw.addClass("TextField_labelFilled__3YSfP");
		} else {
			// 비어 있으면 레이블에 채워지지 않은 상태로 스타일을 지정하는 CSS 클래스 제거
			labelPw.removeClass("TextField_labelFilled__3YSfP");
		}

		// 사용자가 다시 입력하기 시작하면 오류 메시지와 오류 라인을 지우도록 코드 추가
		userPwErrorMessage.text("");
		userPwErrorLine.removeClass("TextField_underlineError__1MJIA");
	});
	nextButton.on("click", function() {
		console.log("클릭");
		var enteredPassword = inputUserPw.val().trim();
		console.log("입력한 비밀번호 :" + enteredPassword);

		$.ajax({
			url: '/userDel.dox',
			type: 'POST',
			data: {
				userPw: enteredPassword,
			},
			success: function(response) {
				console.log("서버 응답: " + response);

				if (response === 'true') {
					alert("회원 탈퇴가 완료되었습니다.");
					window.location.href = "/login.do"; // 로그인 페이지로 리디렉션
				} else {
					userPwErrorMessage.text("비밀번호가 일치하지 않습니다. 다시 시도해주세요.");
					userPwErrorLine.addClass("TextField_underlineError__1MJIA");
				}
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.error("회원 탈퇴 중 오류 발생", errorThrown);
				console.error("서버로부터 받은 응답: ", jqXHR.responseText);
			}
		});
	});


	// 페이지 로드 시 초기 확인
	checkInputValue();
});
