
$(document).ready(function() {

	var headertitle = $('#Title');
	var inputEmail = $("#userEmail");
	// 이메일 라벨을 선택합니다.
	var labelEmail = $("label[for='email']");
	// 이메일 오류 메시지 선택
	var emailErrorMessage = $("#email_errorMessage");
	//이메일 텍스트 라인
	var emailErrorLine = $("#email_errorLine");
	//이메일 링크전송 버튼
	var linkButton = $("#linkButton");

	var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

	headertitle.text('비밀번호 찾기'); // 타이틀에 이메일 로그인 문구 설정

	// 이메일 입력란의 내용이 변경될 때 이벤트를 처리합니다.
	inputEmail.on("input", function() {
		if ($(this).val().trim() !== "") {
			labelEmail.addClass("TextField_labelFilled__3YSfP");
		} else {
			labelEmail.removeClass("TextField_labelFilled__3YSfP");
		}
	});

	// 이메일 필드 내용이 변경될 때의 이벤트 처리
	inputEmail.on("input", function() {
		var email = $(this).val().trim();

		// 이메일이 비어 있는지 확인
		if (email === "") {
			// 에러 메시지와 스타일을 초기화
			emailErrorMessage.text("");
			emailErrorLine.removeClass("TextField_underlineError__1MJIA");
			// 이메일이 비어 있으면 버튼 비활성화
			linkButton.prop("disabled", true);
			// 이메일 버튼에 RectButton_disabled__14E3B 클래스 추가
			linkButton.addClass("RectButton_disabled__14E3B");
		} else if (!emailPattern.test(email)) { // 이메일 형식이 유효하지 않은 경우
			// 이메일 에러 메시지 표시
			emailErrorMessage.text("올바르지 않은 이메일 형식");
			emailErrorLine.addClass("TextField_underlineError__1MJIA");
			// 이메일 유효성 검사 실패 시 버튼 비활성화
			linkButton.prop("disabled", true);
			// 이메일 버튼에 RectButton_disabled__14E3B 클래스 추가
			linkButton.addClass("RectButton_disabled__14E3B");
		} else {
			// 이메일이 유효하고 비어 있지 않은 경우
			// 에러 메시지와 스타일 초기화
			emailErrorMessage.text("");
			emailErrorLine.removeClass("TextField_underlineError__1MJIA");
			// 이메일 유효성 검사 통과 시 이메일 버튼 활성화
			linkButton.prop("disabled", false);
			// 이메일 버튼의 RectButton_disabled__14E3B 클래스 제거
			linkButton.removeClass("RectButton_disabled__14E3B");
		}


	});

	// 링크 전송 버튼 클릭 이벤트
	linkButton.on("click", function() {
		var email = inputEmail.val().trim();

		// 이메일이 유효하지 않으면 중복 확인하지 않음
		if (email === "" || !emailPattern.test(email)) {
			return;
		}

		// 서버에 이메일 중복 확인 요청을 보냅니다.
		$.ajax({
			url: '/checkId.do',
			type: 'GET',
			data: { userEmail: email },
			success: function(response) {
				if (response === 'Y') {
					$.ajax({
						url: '/sendResetLink.do',
						type: 'GET',
						data: { userEmail: email },
						success: function(response) {
							if (response === 'Y') {
								emailErrorMessage.text("비밀번호 재설정 링크가 이메일로 전송되었습니다.");
							} else {
								// ...
							}
						},
						error: function(error) {
							// ...
						}
					});
				} else {
					// 이메일이 중복되지 않는 경우 (DB에 없음)
					emailErrorMessage.text("회원정보를 찾을 수 없습니다 고객센터에 문의해 주세요.");
					emailErrorLine.addClass("TextField_underlineError__1MJIA");
				}
			},
			error: function(error) {
				// 에러 처리
				alert('서버에서 에러가 발생했습니다. 다시 시도해주세요.');
				console.error(error);
			}
		});
	});
});






