$(document).ready(function() {

	var inputName = $("#userName")
	var errorMessege = $("#userName_errorMessege");
	var button = $("#userName_button");
	var modal = $("#modal");
	var title = $('#title');
	var modalButton = $("#modalButton");
	var a = $("#a");
	var userNameForm = $("#userNameForm");
	var cancellation = $("#cancellation");
	var clear = $("#clear");
	var Title = $("#Title");
	
	Title.text('내 정보 관리');
	inputName.on("input", function() {
		var userName = $("#userName").val().trim();
		var userNamePattern = /^[A-Za-z0-9가-힣]{2,8}$/;

		if (userName === "") {
			errorMessege.text("닉네임을 입력해 주세요.");
			inputName.addClass("InputDefault_inputInvalid__3vQs8")
			button.prop("disabled", true);
			clear.hide();
		} else if (!userNamePattern.test(userName)) {
			errorMessege.text("닉네임은 2~8자 한글/영문/숫자만 가능합니다.");
			inputName.addClass("InputDefault_inputInvalid__3vQs8")
			button.prop("disabled", true);
			clear.show();
		} else {
			errorMessege.text("");
			inputName.removeClass("InputDefault_inputInvalid__3vQs8")
			button.prop("disabled", false);
			clear.show();
		}
	});

	a.click(function() {
		userNameForm.show();

	})


	clear.click(function() {
		inputName.val("");
		errorMessege.text("닉네임을 입력해 주세요.");
		clear.hide();
		inputName.addClass("InputDefault_inputInvalid__3vQs8")
	});

	cancellation.click(function() {
		userNameForm.hide();

	})

	modalButton.click(function() {
		console.log("확인");
		modal.hide();
		userNameForm.hide();

	});

	button.click(function() {
		var newUserName = inputName.val().trim();

		// 서버에 닉네임 변경 요청 보내기
		$.ajax({
			url: '/updateUser', // 닉네임을 변경하는 endpoint로 변경하세요.
			type: 'POST',
			contentType: 'application/json',
			data: JSON.stringify({ userName: newUserName }), // 변경할 닉네임 데이터 전송
			success: function(response) {
				if (response) {
					// 업데이트 성공 시 사용자에게 메시지 표시
					console.log("닉네임이 성공적으로 변경되었습니다.");
					$('.Nickname_nickname__3ffy2 span').text(newUserName); // DOM에서 닉네임 업데이트
					modal.show();
					title.text('정상적으로 변경되었습니다');
				} else {
					title.text("닉네임 변경에 실패하였습니다. 다시 시도해주세요.");
					modal.show();
				}
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.error("Error occurred:", errorThrown);
				console.error("Server response:", jqXHR.responseText);
				alert("서버 오류가 발생하였습니다. 다시 시도해주세요.");
			}
		});



	});

});