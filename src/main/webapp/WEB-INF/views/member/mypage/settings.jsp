<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS -->
<link rel="stylesheet" href="/css/mypage/settings1.css">
<link rel="stylesheet" href="/css/mypage/settings2.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- javaScript -->
<script type="text/javascript" src="/js/mypage/settings/settings.js?ver=123"></script>
<style>
.Popup_overlayBeforeClose__11OjB {
    background: transparent;
    transition: all .1s ease-in;
    display: none; /* 이 줄을 추가하여 요소를 처음에 숨깁니다 */
}

.Popup_overlayAfterOpen__3JzbW {
    background: rgba(0, 0, 0, .5);
    transition: all .1s ease-out;
}

.Popup_overlayBeforeClose__11OjB.active {
    display: block; /* "active" 클래스가 추가될 때 요소를 표시합니다 */
}
</style>

</head>
<body>
<div class="SunnyLayout_container__3PLag">

<!-- 헤더 부분  -->
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
 
<main class="SunnyLayout_bodyContainer__1wWjV">
    <ul class="Body_menuContainer__2823n">
        <li class="Body_menuItem__2EfA7">
            <!-- 아직 구현 안함  -->
            <a>간편로그인</a>
            <span class="Icon_icon__2BP_o" aria-hidden="true">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path d="M6.49 20.13L8.26 21.9 18.16 12 8.26 2.1 6.49 3.87 14.62 12 6.49 20.13z"></path>
                </svg>
            </span>
        </li>
        <li class="Body_menuItem__2EfA7b">
            <a>로그아웃</a>
            <span class="Icon_icon__2BP_o" aria-hidden="true">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path d="M6.49 20.13L8.26 21.9 18.16 12 8.26 2.1 6.49 3.87 14.62 12 6.49 20.13z"></path>
                </svg>
            </span>
        </li>
    </ul>
</main>   
                
<!-- 로그아웃 모달 -->
    <div class="Popup_overlay__3qyL2 Popup_overlayBeforeClose__11OjB ">
        <div class="Popup_container__3EkkX Popup_containerAfterOpen__2bzfE" tabindex="-1" role="dialog">
            <div class="Popup_textWrap__3Olv2">
                <div class="Popup_title__3vqMu">로그아웃 하시겠습니까?</div>
            </div>
            <div class="Popup_buttonsContainer__1fcay">
                <div class="Popup_buttonWrap__TDMP6">
                    <button as="button" class="BaseButton_button__tzyL8 Popup_subBtn__2ZAOD">취소</button> 
                </div>
                <div class="Popup_buttonWrap__TDMP6">
                    <button as="button" id="confirmLogout" class="BaseButton_button__tzyL8 Popup_mainBtn__3Cijg">확인</button>
                </div>    
            </div>
        </div>
    </div>
</div>

</body>
</html>
