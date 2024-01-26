<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="css-1iyoj2o">
		<div class="filter-button-wrapper css-1tka3zs">
			<article class="css-i3xioc">
				<button id="calendar-Button" class="css-shte7">
					<img
						src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTEwIDEuMzMzaDEuMzMzdjEuMzM0aDEuMzM0QzEzLjQwMyAyLjY2NyAxNCAzLjI2NCAxNCA0djkuMzMzYzAgLjczNy0uNTk3IDEuMzM0LTEuMzMzIDEuMzM0SDMuMzMzQTEuMzMzIDEuMzMzIDAgMDEyIDEzLjMzM1Y0YzAtLjczNi41OTctMS4zMzMgMS4zMzMtMS4zMzNoMS4zMzRWMS4zMzNINnYxLjMzNGg0VjEuMzMzem0yLjY2NyA1LjMzNEgzLjMzM3Y2LjY2Nmg5LjMzNFY2LjY2N3pNNiA4djEuMzMzSDQuNjY3VjhINnptMi42NjcgMHYxLjMzM0g3LjMzM1Y4aDEuMzM0em0yLjY2NiAwdjEuMzMzSDEwVjhoMS4zMzN6bTEuMzM0LTRIMy4zMzN2MS4zMzNoOS4zMzRWNHoiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPjwvc3ZnPg=="
						class="css-1jlrsog">

					<!-- 선택 날짜 지정 -->
					<span class="css-1cq8r2w"> <span>${checkIn} (${checkInDay})~ ${checkOut} (${checkOutDay})</span> <span class="css-pjwrcq">•</span> <span>${totalDays}박</span>
					</span>
				</button>
				<!-- 인원 수 지정 -->
				<button id="number-of-people" class="css-gskve1">
					<img
						src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTggOWMxLjkyNyAwIDMuNjgxLjYwOCA0Ljk5IDEuNjAzbC4xNzYuMTM4Yy41MDYuMzc3LjgzNC45OC44MzQgMS42NTl2MS45MzNIMlYxMi40YzAtLjY3LjMxOC0xLjI2NC44MTEtMS42NDJsLS4xMzYuMTE2LjE1NS0uMTNDNC4xNTYgOS42NjYgNS45ODMgOSA4IDl6bTAgMS4zMzNjLTEuNzMgMC0zLjMyOS41NzctNC40NTkgMS41NTVhLjcyOC43MjggMCAwMC0uMjA4LjUxMnYuNmg5LjMzNHYtLjZjMC0uMjM2LS4xMS0uNDUtLjM0Mi0uNjI0LTEuMTIzLS45MTItMi42NjUtMS40NDMtNC4zMjUtMS40NDN6bTAtOC42NjZhMy4zMzIgMy4zMzIgMCAxMTAgNi42NjYgMy4zMzIgMy4zMzIgMCAxMTAtNi42NjZ6TTggM2MtMS4xIDAtMiAuOS0yIDJzLjkgMiAyIDIgMi0uOSAyLTItLjktMi0yLTJ6IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiLz48L3N2Zz4="
						class="css-1jlrsog"><span class="css-0">성인 ${adultCount },&nbsp;</span><span class="css-7zhfhb">유/아동 ${childCount }</span>
				</button>
			</article>
		</div>
		<div class="css-mrkld5" id="value-checker">
		 <c:forEach var="room" items="${availableRooms}">
					<div class="css-d7p7g4">
						<div>
							<div class="css-3ywzdg">
								<section class="css-7lnims">
									<div>
										<div class="photoSwipeItem css-ur11hq">
											<span style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img src="${room.imageUrl}" decoding="async" data-nimg="fill"
												class="css-sr2c7j" style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span>
										</div>
									</div>
									<div class="css-1eb2c8e">
										<div type="prev" class="css-1mtkg4f"></div>
										<div type="next" class="css-ln49wb"></div>
									</div>
									<div class="css-nb5aab">
										<figcaption class="css-mp47bi">
											<span>1</span><span>/</span><span>2</span>
										</figcaption>
									</div>
								</section>
							</div>
							<div class="css-nm7tus">
								<div class="css-1ux2lue">${room.roomType}</div>
							</div>
							<div class="css-adgfa3">
								<div>
									<span class="bold">${room.description2}</span><span>${room.description3}</span>
								</div>
							</div>
							<div class="css-1c5up92">
								<div>
									<div class="css-pz1bv">
										<div></div>
										<div>
											<div class="css-iwolxb">
												<div class="css-befmx8">
													<b>숙박</b><span>(${room.checkInTime}~)</span>
												</div>
											</div>
											<div class="css-1mni002">
												<div class="css-xkgp56">
													<span class="css-1uj0yw8"></span>
													<span class="css-17ymi7c roomPrice">${room.price}</span><span class="won">원~</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="css-lowdl0">
								<button id="room-selection" class="css-1lw0g5m" data-hotel-id="${room.accommodationNo }" data-room-no="${room.roomNo}">객실 선택하기</button>
							</div>
						</div>
					</div>
				</c:forEach>
		</div>
   
		<div class="css-1k4il6d" id="no-room-message">
			<div class="css-sxri4m">선택하신 인원정보로 이용가능한 객실이 없습니다.</div>
		</div>


		<div id="calendar" style="display: none;">
			<jsp:include page="calendar_modal.jsp" />
		</div>
		<div id="personnel" style="display: none;">
			<jsp:include page="number_of_people_modal.jsp" />
		</div>
	</div>

	<script>
		
	</script>
</body>
</html>