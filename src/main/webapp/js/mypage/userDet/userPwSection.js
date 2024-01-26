$(document).ready(function() {
	console.log("호출");
	var inputUserPw = $("#userPw");
	var inputNewUserPw = $("#newUserPw");
	var inputNewUserPwCheck = $("#userPwCheck");
	var clearIconUserPw = $('#clearIconUserPw');
	var clearIconNewUserPw = $('#clearIconNewUserPw');
	var clearIconUserPwCheck = $('#clearIconUserPwCheck');
	var modalButton = $('#modalButton');
	var modal = $('#modal');
	var title = $('#title');
	
	inputUserPw.on("input", function() {
		if ($(this).val().trim() !== "") {
			clearIconUserPw.show();

		} else {
			clearIconUserPw.hide();
		}
	});

	function validatePassword(password) {
		var regex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*(),.?":{}|<>]).{8,}$/;
		return regex.test(password);
	}


	function updateSaveButtonState() {
		var password = inputNewUserPw.val().trim();
		var passwordCheck = inputNewUserPwCheck.val().trim();

		var isPasswordValid = validatePassword(password);
		var isPasswordCheckValid = password === passwordCheck;

		if (isPasswordValid && isPasswordCheckValid) {
			$('#save').prop('disabled', false);
		} else {
			$('#save').prop('disabled', true);
		}
	}

	inputNewUserPw.on("input", function() {
		var password = $(this).val().trim();

		if (password !== "") {
			clearIconNewUserPw.show();

			if (validatePassword(password)) {
				$(this).siblings('.input-error-message').text('')
				$(this).removeClass('InputDefault_inputInvalid__3vQs8');
			} else {
				$(this).siblings('.input-error-message').text('8자 이상, 영문, 숫자, 특수문자 조합으로 설정해 주세요.').show();
				$(this).addClass('InputDefault_inputInvalid__3vQs8');
			}
		} else {
			clearIconNewUserPw.hide();
			$(this).siblings('.input-error-message').text('비밀번호를 입력해주세요')
			$(this).addClass('InputDefault_inputInvalid__3vQs8');
		}
		updateSaveButtonState();
	});

	inputNewUserPwCheck.on("input", function() {
		var passwordCheck = $(this).val().trim();

		if (passwordCheck !== "") {
			clearIconUserPwCheck.show();

			if (passwordCheck === inputNewUserPw.val().trim()) {
				$(this).siblings('.input-error-message').text('')
				$(this).removeClass('InputDefault_inputInvalid__3vQs8');
			} else {
				$(this).siblings('.input-error-message').text('비밀번호가 일치하지 않습니다.')
				$(this).addClass('InputDefault_inputInvalid__3vQs8');
			}
		} else {
			clearIconUserPwCheck.hide();
			$(this).siblings('.input-error-message').text('비밀번호를 입력해주세요')
			$(this).addClass('InputDefault_inputInvalid__3vQs8');
		}
		updateSaveButtonState();
	});


	clearIconUserPw.on('click', function() {
		inputUserPw.val('');
		clearIconUserPw.hide();
	});

	clearIconNewUserPw.on('click', function() {
		inputNewUserPw.val('');
		clearIconNewUserPw.hide();
	});

	clearIconUserPwCheck.on('click', function() {
		inputNewUserPwCheck.val('');
		clearIconUserPwCheck.hide();
	});

	$('#correction').on('click', function(e) {
		e.preventDefault();
		$('#pw').hide();
		$('#newPw').show();
	});
	$('#esc').on('click', function(e) {
		e.preventDefault();
		$('#newPw').hide();
		$('#pw').show();
	});

	modalButton.on('click', function(e) {
		e.preventDefault();
		$('#newPw').hide();
		$('#pw').show();
		modal.hide();
	});

	$('#save').on('click', function(e) {
		e.preventDefault();
		var newUserPw = inputNewUserPw.val().trim();
		var userPw = inputUserPw.val().trim();
		console.log("입력한 비밀번호" + newUserPw);
		console.log("내가 현제 비밀번호" + userPw);
		$.ajax({
			url: '/updateUser', // 요청을 보낼 URL
			method: 'POST',
			contentType: 'application/json',
			data: JSON.stringify({
				newPassword: newUserPw, // 새 비밀번호
				userPw: userPw, // 원래 비밀번호
			}),
		})
			.done(function(response) {
				title.text('정상적으로 변경되었습니다');
				modal.show();

			})
			.fail(function(jqXHR, textStatus, errorThrown) {
				title.text(jqXHR.responseText);
				modal.show();
			});
	});



});
