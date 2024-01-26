/**
 * 
 */
$(document).ready(function(){
	
function usernameCheck() {
	let submit = false;
	const username = $("input[name=username]").val().replaceAll(" ", "");
	if(!username) {
		return false;
	}
	
	$.ajax({
		url: "/overlapCheck",
		type: "GET",
		async: false,
		data: {
			value : username,
			valueType : "username"
		}
	})
	.done(function(result){
		if(result == 1) {
			submit = true;
		} 
	})
	.fail(function(){
		alert("에러");
	})
	return submit;
}
 
 
 
 
$(".next_page").click(function(){
	if(!usernameCheck()) {
		swal("아이디를 정확히 입력해주세요");
		return;
	}
	const data = {
		username : $(".username").val(),	
	}
	
	$.ajax({
		url: "/find/password/auth",
		type: "POST",
		data: data
	})
	.then(function(result){
		location.href= "/find/password/auth?username=" + result;
	})
	.fail(function(){
		alert('에러');
	})
})
 
 
 
	
 
	
})
