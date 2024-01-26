$(document).ready(function() {
	// 이메일 입력란을 선택합니다.
	var inputEmail = $("#userEmail");
	// 이메일 라벨을 선택합니다.
	var labelEmail = $("label[for='email']");
	// 코드 입력란을 선택합니다.
	var inputCode = $("#code");
	// 코드 라벨을 선택합니다.
	var labelCode = $("label[for='code']");
	// 이메일 오류 메시지 선택
	var emailErrorMessage = $("#email_errorMessage");
	//이메일 텍스트 라인
	var emailErrorLine = $("#email_errorLine");
	// 코드 오류 메시지 선택
	var codeErrorMessage = $("#code_errorMessage");
	// 코드 텍스트 라인
	var codeErrorLine = $("#code_errorLine");
	var emailButton = $("#emailButton");
	var Title = $("#Title");
	var modalForm = $("#modalForm");
	var headertitle = $('#Title');
	headertitle.text('이메일 로그인');
	// 중복 이메일 여부를 저장할 변수
	
	var isEmailDuplicated = false;
	
	modalForm.show();

	Title.text('회원가입 (1/3)');
	
	//로그인 이동
	$("#headerButton").on('click',function(){
		window.location.href = "/login.do";
	});
	// 이메일 입력란의 내용이 변경될 때 이벤트를 처리합니다.
	inputEmail.on("input", function() {
		if ($(this).val().trim() !== "") {
			labelEmail.addClass("TextField_labelFilled__3YSfP");
		} else {
			labelEmail.removeClass("TextField_labelFilled__3YSfP");
		}
	});

	// 코드 입력란의 내용이 변경될 때 이벤트를 처리합니다.
	inputCode.on("input", function() {
		if ($(this).val().trim() !== "") {
			labelCode.addClass("TextField_labelFilled__3YSfP");
		} else {
			labelCode.removeClass("TextField_labelFilled__3YSfP");
		}
	});
	// 이메일 버튼을 초기에 비활성화
	emailButton.prop("disabled", true);
	emailButton.addClass("RectButton_disabled__14E3B");

	function checkForDuplicateEmail() {
		var userEmail = inputEmail.val().trim();
		$.ajax({
			type: "GET",
			url: "/checkId.do", // URL to check for duplicate emails
			data: { userEmail: userEmail },
			success: function(response) {
				if (response === "Y") {
					console.log("중복된 메세지")
					emailErrorMessage.text("사용할 수 없는 회원 정보입니다. 다른 정보로 다시 시도해주세요.");
					emailErrorLine.addClass("TextField_underlineError__1MJIA");
					// Disable the button if the email is a duplicate
					isEmailDuplicated = true;
					emailButton.prop("disabled", true);
					emailButton.addClass("RectButton_disabled__14E3B");
				} else if (response === "N") {
					console.log("사용 가능한 메세지")
					emailErrorMessage.text("");
					emailErrorLine.removeClass("TextField_underlineError__1MJIA");

					// If the email is not a duplicate, enable the button
					isEmailDuplicated = false;
					if (inputEmail.val().trim() !== "") {
						emailButton.prop("disabled", false);
						emailButton.removeClass("RectButton_disabled__14E3B");
					}
				}
			},
		});
	}

	// 이메일 필드 내용이 변경될 때의 이벤트 처리
	inputEmail.on("input", function() {
		var email = $(this).val().trim();
		var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

		// 이메일이 비어 있는지 확인
		if (email === "") {
			// 에러 메시지와 스타일을 초기화
			emailErrorMessage.text("");
			emailErrorLine.removeClass("TextField_underlineError__1MJIA");
			// 이메일이 비어 있으면 버튼 비활성화
			emailButton.prop("disabled", true);
			// 이메일 버튼에 RectButton_disabled__14E3B 클래스 추가
			emailButton.addClass("RectButton_disabled__14E3B");
		} else if (!emailPattern.test(email)) { // 이메일 형식이 유효하지 않은 경우
			// 이메일 에러 메시지 표시
			emailErrorMessage.text("이메일 형식이 유효하지 않습니다. 이메일을 다시 확인해 주세요.");
			emailErrorLine.addClass("TextField_underlineError__1MJIA");
			// 이메일 유효성 검사 실패 시 버튼 비활성화
			emailButton.prop("disabled", true);
			// 이메일 버튼에 RectButton_disabled__14E3B 클래스 추가
			emailButton.addClass("RectButton_disabled__14E3B");
		} else {
			// 이메일이 유효하고 비어 있지 않은 경우
			// 에러 메시지와 스타일 초기화
			emailErrorMessage.text("");
			emailErrorLine.removeClass("TextField_underlineError__1MJIA");
			// 이메일 유효성 검사 통과 시 이메일 버튼 활성화
			emailButton.prop("disabled", false);
			// 이메일 버튼의 RectButton_disabled__14E3B 클래스 제거
			emailButton.removeClass("RectButton_disabled__14E3B");
			// 중복 이메일이 아닌 경우만 버튼 활성화
			checkForDuplicateEmail();
		}
	});

	// 코드 입력란의 내용이 변경될 때 이벤트를 처리합니다.
	inputCode.on("input", function() {
		var code = $(this).val().trim();
		var codePattern = /^\d{6}$/;

		// 숫자 이외의 문자를 제거합니다.
		code = code.replace(/\D/g, '');


		// 6자리 이상의 코드는 잘라냅니다.
		if (code.length > 6) {
			code = code.slice(0, 6);
		}


		// 코드를 다시 설정합니다.
		$(this).val(code);


		// 코드 길이가 6자리인지 확인합니다.
		if (code.length === 6) {
			// 오류 메시지와 스타일을 지우고
			codeErrorMessage.text("");
			codeErrorLine.removeClass("TextField_underlineError__1MJIA");
		} else {
			// 코드가 6자리가 아니라면 오류 메시지 표시
			codeErrorMessage.text("인증번호는 6자리의 숫자여야 합니다.");
			codeErrorLine.addClass("TextField_underlineError__1MJIA");
		}
	});

	// 인증번호 전송 버튼 클릭 이벤트 처리
	$("#emailButton").click(function() {
		// 이메일 입력값 가져오기
		var userEmail = inputEmail.val().trim();
		//페이지 이동 없이
		event.preventDefault();

		// 이메일 인증번호 받기 Ajax 요청 보내기
		$.ajax({
			type: "GET",
			url: "/sendMail.dox",
			data: { userEmail: userEmail },
			success: function(response) {
				// 서버로부터 받은 인증번호를 표시하거나 처리하는 로직을 작성
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

	$("#nextButton").click(function() {
		// 이메일 입력값 가져오기
		var userEmail = inputEmail.val().trim();

		// 서버로부터 join2 페이지의 일부를 가져옵니다.
		$.ajax({
			type: "GET",
			url: "/join2.do", // 변경해야 할 URL
			data: {
				userEmail: userEmail,
			},
			success: function(response) {
				// 서버로부터 받은 HTML을 특정 요소에 삽입합니다.
				$("#body").html(response);

				// 헤더 텍스트 업데이트
				Title.text('회원가입 (2/3)');

				$("#nextButton").prop("disabled", true);
				$("#nextButton").addClass("RectButton_disabled__14E3B");
			}
		});
	});

});

