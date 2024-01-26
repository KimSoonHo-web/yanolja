<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 모달 -->
	<div class="open css-s8x1o4" opacity="0.5" data-testid="BACKGROUND_ID"
		style="align-items: flex-end;">
		<div id="BOTTOM_SHEET" class="css-fn260m">
			<div class="css-au9c44">
				<div class="css-18k5no3">객실선택</div>
				<img id="close" src="data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3e %3cpath fill-rule='evenodd' d='M18.742 4.575L19.449 5.282 12.732 12 19.449 18.718 18.742 19.425 12.025 12.707 5.307 19.425 4.6 18.718 11.318 12 4.6 5.282 5.307 4.575 12.025 11.293z'/%3e%3c/svg%3e" class="css-gtuddj">

			</div>
			<!-- 내용  -->
			<div class="css-gqqlqe">
				<li class="css-maey8v" data-roomname="객실 전체">
				    <p class="css-cwsr4f">객실 전체</p>
				</li>
				<c:forEach var="roomName" items="${roomNameMap.roomname}">
				    <li class="css-maey8v" data-roomname="${roomName}">
				        <p class="css-cwsr4f">${roomName}</p>
				    </li>
				</c:forEach>
			</div>
			<div class="css-1qhv7ih"></div>
		</div>
	</div>
</body>
</html>