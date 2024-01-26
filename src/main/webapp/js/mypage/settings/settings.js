$(document).ready(function() {
    var $logoutLink = $('.Body_menuItem__2EfA7b');
    var $logoutModal = $('.Popup_overlay__3qyL2');
    var $cancelLogoutButton = $('.Popup_subBtn__2ZAOD');
    var $confirmLogoutButton = $('#confirmLogout');
    
     $("#Title").text("설정");

    
    if ($logoutLink.length && $logoutModal.length && $cancelLogoutButton.length && $confirmLogoutButton.length) {
        // 모달 창을 처음에 숨김
        $logoutModal.hide();
        
        // 로그아웃 버튼을 클릭하면 모달 창을 열기
        $logoutLink.on('click', function(event) {
            event.preventDefault(); // 기본 동작 방지
            $logoutModal.show().addClass('Popup_overlayAfterOpen__3JzbW');
        });
        
        // 취소 버튼을 클릭하면 모달 창을 닫기
        $cancelLogoutButton.on('click', function() {
            $logoutModal.hide().removeClass('Popup_overlayAfterOpen__3JzbW');
        });
        
        // 확인 버튼을 클릭하면 로그아웃 처리 후 페이지 새로고침
        $confirmLogoutButton.on('click', function() {
            // 로그아웃 처리 (세션 삭제 등) 여기서 처리
            sessionStorage.clear();
            // 페이지 새로고침
            location.href = '/logout';
        });
    }
});
