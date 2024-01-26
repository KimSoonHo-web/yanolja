<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>결제 취소</title>
    <script type="text/javascript">
        window.onload = function() {
            // 현재 탭/창을 닫습니다
            window.close();

            // 창이 닫히지 않았다면 사용자에게 대체 수단을 제시합니다
            // 브라우저는 스크립트에 의해 열리지 않은 창의 닫기 기능을 차단할 수 있기 때문입니다.
            if(!window.closed){
                document.getElementById("close-message").style.display = 'block';
            }
        };
    </script>
</head>
<body>
    <p id="close-message" style="display: none;">
        결제가 취소되었습니다. 이 창/탭을 닫을 수 있습니다. <br>
        <button onclick="window.close();">닫기</button>
    </p>
</body>
</html>