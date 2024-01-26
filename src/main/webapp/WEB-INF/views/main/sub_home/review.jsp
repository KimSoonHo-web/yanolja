<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="css-1ca2mdp">
		<div class="css-1m12drv">
			<div class="css-k59gj9">
				<!--  -->
				<div class="css-ujxq9h">
					<h4>후기&nbsp;
						<span>(${hotelDetail.reviewCount})</span>
					</h4>
					<a href="/reviewPolicy.do">후기정책
					<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTcuMzMzIDQuNjY3aDEuMzM0VjZINy4zMzNWNC42Njd6bTAgMi42NjZoMS4zMzR2NEg3LjMzM3YtNHptLjY2Ny02QTYuNjcgNi42NyAwIDAwMS4zMzMgOCA2LjY3IDYuNjcgMCAwMDggMTQuNjY3IDYuNjcgNi42NyAwIDAwMTQuNjY3IDggNi42NyA2LjY3IDAgMDA4IDEuMzMzem0wIDEyQTUuMzQgNS4zNCAwIDAxMi42NjcgOCA1LjM0IDUuMzQgMCAwMTggMi42NjcgNS4zNCA1LjM0IDAgMDExMy4zMzMgOCA1LjM0IDUuMzQgMCAwMTggMTMuMzMzeiIgZmlsbD0iIzYxNjE2MSIgZmlsbC1ydWxlPSJldmVub2RkIi8+PC9zdmc+"class="css-1qeczff"></a>
				</div>
				<!--  -->
				<div class="css-jd7837">
					<div class="css-17hrca6">
						<div class="css-nq91ht">
							<svg width="2.8rem" height="2.8rem" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="css-12cnc2s">
								<linearGradient id="half">
									<stop offset="50%" stop-color="#fdbd00"></stop>
									<stop offset="0" stop-color="#ffffff"></stop>
								</linearGradient>
								<path d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z" fill="#fdbd00" stroke="#E7AC00" stroke-width="0.5" stroke-linejoin="round"></path>
							</svg>
							<div>
								<strong >${hotelDetail.avgRating }</strong>/5
							</div>	
						</div>
						<span>최근 12개월 누적 평점</span>
					</div>
					<!-- 평점 바 -->
					<div class="css-1qbcx6h">
					    <div class="css-14zx4vh">
					        <div class="css-djkjag">친절도</div>
					        <div class="css-16uop2c">
					            <div class="rating-bar" data-rating="${hotelDetail.avgRating1}"></div>
					        </div>
					        <div class="css-1czpws0">${hotelDetail.avgRating1}</div>
					    </div>
						<div class="css-14zx4vh">
					        <div class="css-djkjag">청결도</div>
					        <div class="css-16uop2c">
					            <div class="rating-bar" data-rating="${hotelDetail.avgRating2}"></div>
					        </div>
					        <div class="css-1czpws0">${hotelDetail.avgRating2}</div>
					    </div>
						<div class="css-14zx4vh">
					        <div class="css-djkjag">편의성</div>
					        <div class="css-16uop2c">
					            <div class="rating-bar" data-rating="${hotelDetail.avgRating3}"></div>
					        </div>
					        <div class="css-1czpws0">${hotelDetail.avgRating3}</div>
					    </div>
						<div class="css-14zx4vh">
					        <div class="css-djkjag">위치만족도</div>
					        <div class="css-16uop2c">
					            <div class="rating-bar" data-rating="${hotelDetail.avgRating4}"></div>
					        </div>
					        <div class="css-1czpws0">${hotelDetail.avgRating4}</div>
					    </div>
					</div>
					<!--  -->
				</div>
				<!--  -->
				<div class="css-y9n1oe">
					<div class="css-cssveg">
						<div>
							<div class="css-1rmwavc">
								후기 수 및 평가 기준 안내
								<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTcgMS4xNjdhNS44MzMgNS44MzMgMCAxMTAgMTEuNjY2QTUuODMzIDUuODMzIDAgMDE3IDEuMTY3em0wIC41ODNhNS4yNSA1LjI1IDAgMTAwIDEwLjUgNS4yNSA1LjI1IDAgMDAwLTEwLjV6bS0uMjkyIDIuMzMzaC41ODR2LjU4NGgtLjU4NHYtLjU4NHptMCAxLjc1aC41ODR2NC4wODRoLS41ODRWNS44MzN6IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIG9wYWNpdHk9Ii43Ii8+PC9zdmc+" class="css-al4aus">
							</div>
						</div>
					</div>
				</div>
				<!--  -->
			</div>
		</div>
		<!-- 객실 필터  -->
		<div class="css-1m12drv">
			<div class="css-deizzc">
			<!-- 객실 전체  -->
				<div class="css-14fcwkn" id="openModalBtn">
					<span id="selectedRoomName">${selectedRoomName }</span>
					<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTE0LjYwMiA2Ljk0bC45MDUuODYzLTUuMjU1IDUuNTA0LTUuMjU0LTUuNTA0LjkwNC0uODY0IDQuMzUgNC41NTh6IiBmaWxsPSIjMkUyRTJFIi8+PC9zdmc+" class="css-1h56cpe">
				</div>
				<!-- 모달 내용  -->
				<div id="myModal" style="display: none;">
					<jsp:include page="room_filter.jsp"/>
				</div>
			<!--  -->
				<div class="css-10me9pd">
					<div class="css-1vmakht">최근 작성순</div>
					<!--  체크 박스 -->
					<div class="css-d1nag3">
						<span class="css-64noit">
							<img id="checkImage" src="data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3e %3cg fill='none' fill-rule='evenodd'%3e %3cpath fill='white' d='M2 0h20a2 2 0 012 2v20a2 2 0 01-2 2H2a2 2 0 01-2-2V2a2 2 0 012-2z'/%3e %3cpath fill='%23CCC' d='M22 0a2 2 0 012 2v20a2 2 0 01-2 2H2a2 2 0 01-2-2V2a2 2 0 012-2h20zm0 1H2a1 1 0 00-1 1v20a1 1 0 001 1h20a1 1 0 001-1V2a1 1 0 00-1-1z'/%3e %3cpath fill='%23CCC' d='M18.297 6L19.696 7.399 9.6 17.496 4 11.896 5.4 10.496 9.6 14.696z'/%3e %3c/g%3e%3c/svg%3e"
								alt="체크표시" data-status="unselected" class="css-1jq3mm7"
								data-testid="check-mark">
							<input data-testid="hidden-input" type="checkbox" class="css-cyuzj4">
							<div class="css-1qqudot">포토후기만 보기</div>
						</span>
					</div>
					<!--  -->
				</div>
			</div>
		</div>
		<!--  -->
		<!-- 리뷰리스트 -->
		<div class="a">
		<div class="someClass">
		<c:forEach var="review" items="${reviews}"> <!-- 나는 여기에 리뷰 목록을 보여줄거야 -->
		<div>
			<div class="css-3i0g4q">
				<div class="css-nkytaw">
					<div>
						<div>
							<div class="css-qvcq67">
								<div>
									<div class="css-k59gj9">
										<div class="css-drio73">
											<div class="css-1sg2lsz">
												<div class="css-1c6fs9p">
													<!-- 평점 별 들어갈 자리 -->
													<div class="css-drio73">
														<div class="css-1sg2lsz">
																<c:choose>
																	<c:when test="${review.avgRating >= 1}">
																		<svg width="14" height="14" viewBox="0 0 14 14"
																			fill="none" xmlns="http://www.w3.org/2000/svg"
																			class="css-189aa3t">
																			<linearGradient id="half">
																			<stop offset="50%" stop-color="#fdbd00"></stop>
																			<stop offset="0" stop-color="#ffffff"></stop></linearGradient>
																			<path
																				d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z"
																				fill="#fdbd00" stroke="#E7AC00" stroke-width="0.5"
																				stroke-linejoin="round"></path></svg>
																	</c:when>
																	<c:otherwise>
																		<svg width="14" height="14" viewBox="0 0 14 14"
																			fill="none" xmlns="http://www.w3.org/2000/svg"
																			class="css-189aa3t">
																			<linearGradient id="half">
																			<stop offset="50%" stop-color="#fdbd00"></stop>
																			<stop offset="0" stop-color="#ffffff"></stop></linearGradient>
																			<path
																				d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z"
																				fill="#ffffff" stroke="#E7AC00" stroke-width="0.5"
																				stroke-linejoin="round"></path></svg>
																	</c:otherwise>
																</c:choose>
																<c:choose>
																	<c:when test="${review.avgRating >= 2}">
																		<svg width="14" height="14" viewBox="0 0 14 14"
																			fill="none" xmlns="http://www.w3.org/2000/svg"
																			class="css-189aa3t">
																			<linearGradient id="half">
																			<stop offset="50%" stop-color="#fdbd00"></stop>
																			<stop offset="0" stop-color="#ffffff"></stop></linearGradient>
																			<path
																				d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z"
																				fill="#fdbd00" stroke="#E7AC00" stroke-width="0.5"
																				stroke-linejoin="round"></path></svg>
																	</c:when>
																	<c:otherwise>
																		<svg width="14" height="14" viewBox="0 0 14 14"
																			fill="none" xmlns="http://www.w3.org/2000/svg"
																			class="css-189aa3t">
																			<linearGradient id="half">
																			<stop offset="50%" stop-color="#fdbd00"></stop>
																			<stop offset="0" stop-color="#ffffff"></stop></linearGradient>
																			<path
																				d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z"
																				fill="#ffffff" stroke="#E7AC00" stroke-width="0.5"
																				stroke-linejoin="round"></path></svg>
																	</c:otherwise>
																</c:choose>
																<c:choose>
																	<c:when test="${review.avgRating >= 3}">
																		<svg width="14" height="14" viewBox="0 0 14 14"
																			fill="none" xmlns="http://www.w3.org/2000/svg"
																			class="css-189aa3t">
																			<linearGradient id="half">
																			<stop offset="50%" stop-color="#fdbd00"></stop>
																			<stop offset="0" stop-color="#ffffff"></stop></linearGradient>
																			<path
																				d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z"
																				fill="#fdbd00" stroke="#E7AC00" stroke-width="0.5"
																				stroke-linejoin="round"></path></svg>
																	</c:when>
																	<c:otherwise>
																		<svg width="14" height="14" viewBox="0 0 14 14"
																			fill="none" xmlns="http://www.w3.org/2000/svg"
																			class="css-189aa3t">
																			<linearGradient id="half">
																			<stop offset="50%" stop-color="#fdbd00"></stop>
																			<stop offset="0" stop-color="#ffffff"></stop></linearGradient>
																			<path
																				d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z"
																				fill="#ffffff" stroke="#E7AC00" stroke-width="0.5"
																				stroke-linejoin="round"></path></svg>
																	</c:otherwise>
																</c:choose>
																<c:choose>
																	<c:when test="${review.avgRating >= 4}">
																		<svg width="14" height="14" viewBox="0 0 14 14"
																			fill="none" xmlns="http://www.w3.org/2000/svg"
																			class="css-189aa3t">
																			<linearGradient id="half">
																			<stop offset="50%" stop-color="#fdbd00"></stop>
																			<stop offset="0" stop-color="#ffffff"></stop></linearGradient>
																			<path
																				d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z"
																				fill="#fdbd00" stroke="#E7AC00" stroke-width="0.5"
																				stroke-linejoin="round"></path></svg>
																	</c:when>
																	<c:otherwise>
																		<svg width="14" height="14" viewBox="0 0 14 14"
																			fill="none" xmlns="http://www.w3.org/2000/svg"
																			class="css-189aa3t">
																			<linearGradient id="half">
																			<stop offset="50%" stop-color="#fdbd00"></stop>
																			<stop offset="0" stop-color="#ffffff"></stop></linearGradient>
																			<path
																				d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z"
																				fill="#ffffff" stroke="#E7AC00" stroke-width="0.5"
																				stroke-linejoin="round"></path></svg>
																	</c:otherwise>
																</c:choose>
																<c:choose>
																	<c:when test="${review.avgRating >= 5}">
																		<svg width="14" height="14" viewBox="0 0 14 14"
																			fill="none" xmlns="http://www.w3.org/2000/svg"
																			class="css-189aa3t">
																			<linearGradient id="half">
																			<stop offset="50%" stop-color="#fdbd00"></stop>
																			<stop offset="0" stop-color="#ffffff"></stop></linearGradient>
																			<path
																				d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z"
																				fill="#fdbd00" stroke="#E7AC00" stroke-width="0.5"
																				stroke-linejoin="round"></path></svg>
																	</c:when>
																	<c:otherwise>
																		<svg width="14" height="14" viewBox="0 0 14 14"
																			fill="none" xmlns="http://www.w3.org/2000/svg"
																			class="css-189aa3t">
																			<linearGradient id="half">
																			<stop offset="50%" stop-color="#fdbd00"></stop>
																			<stop offset="0" stop-color="#ffffff"></stop></linearGradient>
																			<path
																				d="M7.12095 11.3897C7.04568 11.3481 6.95432 11.3481 6.87905 11.3897L3.0935 13.4823C3.05697 13.5025 3.01324 13.4717 3.01996 13.4305L3.74674 8.975C3.75951 8.89669 3.73435 8.81696 3.67894 8.76016L0.586662 5.59082C0.558242 5.56169 0.574668 5.51262 0.614898 5.50648L4.87464 4.85565C4.95705 4.84305 5.02777 4.79021 5.06319 4.71474L6.95474 0.684808C6.97273 0.646468 7.02727 0.646467 7.04526 0.684808L8.93681 4.71474C8.97223 4.79021 9.04295 4.84305 9.12536 4.85565L13.3851 5.50648C13.4253 5.51262 13.4418 5.56169 13.4133 5.59082L10.3211 8.76016C10.2656 8.81696 10.2405 8.89669 10.2533 8.975L10.98 13.4305C10.9868 13.4717 10.943 13.5025 10.9065 13.4823L7.12095 11.3897Z"
																				fill="#ffffff" stroke="#E7AC00" stroke-width="0.5"
																				stroke-linejoin="round"></path></svg>
																	</c:otherwise>
																</c:choose>
																<!--  -->
												        </div>
													</div>
													<!--  -->
												 </div>
											</div>
										</div>
										<div class="css-1fd7prz">
											<span>${review.userName}</span><span class="review" data-review-date="${review.reviewDate}"></span>
										</div>
									</div>
								</div>
								<div class="css-1bzg2xh">
									<span>객실명</span><span>${review.roomName }</span>
								</div>
							</div>
							<div class="css-1byy3oj">
								<div class="css-785xn7">
									<div>${review.reviewComment}</div>
								</div>
							</div>
							<div class="css-1i8i8xt">
							<c:if test="${not empty review.reviewImages}">
								<div>
									<img src="${review.reviewImages}" class="css-26eke0">
								</div>
							</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
		</div>
		</div>
		<!--  -->
		<div class="css-16rt7i9">
			<span>마지막 후기입니다</span>
		</div>
	</div>
</body>
</html>