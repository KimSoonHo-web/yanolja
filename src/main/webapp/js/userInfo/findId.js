$(document).ready(function() {
	$(".find_btn").click(function() {
		const email = $(".email").val();
		if (!emailCheck(email)) {
			swal("이메일을 정확히 입력해주세요");
			return;
		}
 
		$.ajax({
			url: "/find/id/sendUsernames",
			type: "POST",
			data: { email: email }
		})
		.done(function() {
			const html =
				`<div class="send_email">
					<div>
						<h3>${email }</h3>
						<span>으로 아이디를 전송했습니다</span><br>
						<div>가입한 적이 없는 이메일 주소나 올바르지 않은 이메일 주소를 입력하신 경우에는 메일을 받을 수 없습니다.</div>
						<button class="back_btn">돌아가기</button>
					</div>
				</div>`;
 
			$("main").html(html);
 
		})
		.fail(function() {
			alert("에러가 발생했습니다");
		})
	})
 
 
	$(document).on("click", ".back_btn", function() {
		location.href = "/login";
	})
})
