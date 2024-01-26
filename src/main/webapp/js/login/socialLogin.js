$(document).ready(function() {

	var Title = $("#Title");
	var loginButton = $("#loginButton");
	var joinButton = $("#joinButton");
	var loginWithKakaoBtn = $("#loginWithKakao"); // 카카오 로그인 버튼 ID를 정의

	Title.text('로그인');

	loginButton.click(function() {
		window.location.href = '/login.do';
	});
	joinButton.click(function() {
		window.location.href = '/join1.do';
	});

	Kakao.init('df454527f6b8849f2856358622f1a834');  // 여기에 앱 키를 입력하세요
});

function loginWithKakao() {
	Kakao.Auth.login({
		success: function(authObj) {
			alert('로그인에 성공하였습니다.');
			// 토큰을 서버에 전송하는 코드를 여기에 작성
			$.ajax({
				url: '/path/to/your/server/endpoint', // 여러분의 서버 엔드포인트 URL
				method: 'POST',
				data: {
					accessToken: authObj.access_token, // 카카오로부터 받은 액세스 토큰
				},
				success: function(response) {
					// 서버에서 사용자 정보를 받아와 UI를 업데이트하는 코드를 여기에 작성
				},
				error: function(error) {
					// 오류 처리 코드를 여기에 작성
					console.error(error);
				}
			});
		},
		fail: function(err) {
			alert('로그인에 실패하였습니다.');
		},
	});
}

// 카카오 로그인 버튼에 클릭 이벤트 핸들러 추가
$(document).on('click', '#loginWithKakao', function() {
	loginWithKakao();
});
