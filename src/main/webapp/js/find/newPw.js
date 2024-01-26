$(document).ready(function() {

	var Title = $("#Title");

	// 새 비밀번호 입력란을 선택합니다.
	var inputNewPw = $("#newPw");
	// 비밀번호 확인 입력란을 선택합니다.
	var inputPwCheck = $("#newPwCheck");

	// 비밀번호 오류 메시지 선택
	var newPwErrorMessage = $("#newPW_errorMessage");
	// 비밀번호 확인 메시지 선택
	var PwCheckErrorMessage = $("#newPwcheck_errorMessage");

	var okButton = $("#okButton");
	var clear1 = $("#clear1");
	var clear2 = $("#clear2");

	// 비밀번호 패턴 정의
	var passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\-])[A-Za-z\d!@#$%^&*()_+{}\[\]:;<>,.?~\\-]{8,20}$/;




	Title.text("비밀번호 변경");

	function toggleClearIcon(inputField, clearIcon) {
		if (inputField.val().trim() === '') {
			clearIcon.hide();
		} else {
			clearIcon.show();
		}
	}

	inputNewPw.on("input", function() {
		var newPassword = $(this).val().trim();

		if (passwordPattern.test(newPassword)) {
			// 비밀번호가 유효한 경우
			newPwErrorMessage.text("");  // 에러 메시지 지우기
			inputNewPw.removeClass('ValidatableInput_inputInvalid__3DprF');
		} else {
			// 비밀번호가 유효하지 않은 경우
			newPwErrorMessage.text("8자 이상, 영문, 숫자, 특수문자 조합으로 설정해 주세요.");  // 에러 메시지 출력
			inputNewPw.addClass('ValidatableInput_inputInvalid__3DprF');
		}
		updateButtonState();
		toggleClearIcon(inputNewPw, clear1);
	});

	inputPwCheck.on("input", function() {
		var newPassword = inputNewPw.val().trim();
		var confirmPassword = $(this).val().trim();
		if (newPassword === confirmPassword) {
			// 비밀번호가 일치하는 경우
			PwCheckErrorMessage.text("");  // 에러 메시지 지우기
			inputPwCheck.removeClass('ValidatableInput_inputInvalid__3DprF');
		} else {
			// 비밀번호가 일치하지 않는 경우
			PwCheckErrorMessage.text("비밀번호가 일치하지 않습니다.");  // 에러 메시지 출력
			inputPwCheck.addClass('ValidatableInput_inputInvalid__3DprF');
		}
		updateButtonState();
		toggleClearIcon(inputPwCheck, clear2);
	});

	clear1.click(function() {
		inputNewPw.val('');
		toggleClearIcon(inputNewPw, clear1);
	});

	clear2.click(function() {
		inputPwCheck.val('');
		toggleClearIcon(inputPwCheck, clear2);
	});
	function updateButtonState() {
		var newPassword = inputNewPw.val().trim();
		var confirmPassword = inputPwCheck.val().trim();

		// 유효성 검사가 모두 통과한 경우
		if (passwordPattern.test(newPassword) && newPassword === confirmPassword) {
			okButton.prop('disabled', false);
		} else {
			okButton.prop('disabled', true);
		}
	}

	okButton.on('click', function(e) {
		var newPassword = inputNewPw.val().trim();
		var userEmail = $('#inputUserEmail').val();
		e.preventDefault();
		// 비밀번호 유효성 검사와 일치 검사를 확인
		if (passwordPattern.test(newPassword) && newPassword === inputPwCheck.val().trim()) {

			// 여기서 AJAX 호출을 사용하여 서버에 비밀번호 변경 요청을 보냅니다.
			$.ajax({
				url: '/updatePw',  // 여러분의 서버 엔드포인트 URL
				method: 'POST',
				contentType: 'application/json',
				data: JSON.stringify({
					 newPassword: newPassword,
					  userEmail: userEmail 
					  }),  // 수정: 데이터를 JSON 형식으로 변환
				success: function(response) {
					// 요청이 성공적으로 완료된 경우
					alert('비밀번호가 성공적으로 변경되었습니다.');
					window.location.href = '/login.do';  // 수정: 성공했을 때 로그인 페이지로 리다이렉션

				},
				error: function(error) {
					// 요청이 실패한 경우
					alert('비밀번호 변경에 실패했습니다. 다시 시도해주세요.');
				}
			});
		} else {
			// 유효하지 않은 비밀번호인 경우
			alert('유효하지 않은 비밀번호입니다. 다시 확인해주세요.');
		}
	});

});