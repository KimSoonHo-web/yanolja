<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=s16c13u2ur&submodules=geocoder"></script>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

</head>
<body>

	<div class="css-1ge9yaw">
		<div class="css-1tkw7tm">
			<div data-testid="content" class="css-1830rfa">
				<h4 class="css-1y0mank">위치</h4>
				<div data-testid="sub-content" class="css-1d3lw0b">
					<div class="css-1m33i0a">
						<div class="css-1bt1892">
							<div class="css-98v8hx">
								<div id="naver-map" class="css-s08p0c" tabindex="0"
									style="width: calc(768px - 4rem); height: calc(( 768px - 4rem)/2); position: relative; overflow: hidden; background: rgb(248, 249, 250);">
								</div>
							</div>
						</div>
					</div>
					<!--  -->
					<div class="css-dps5x9">
					    <div class="css-o8j33g"
					        style="display: flex; flex-direction: row; align-items: flex-start; font-size: 1.4rem; font-weight: normal; color: rgb(97, 97, 97);">
					        <div
					            style="flex: 3 1 0%; display: flex; flex-direction: row; align-items: flex-start; line-height: 2rem;">
					            <img
					                src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTggMS4zMzNBNC42NjMgNC42NjMgMCAwMTEyLjY2NyA2QzEyLjY2NyA5LjUgOCAxNC42NjcgOCAxNC42NjdsLS4yNzUtLjMxNmMtMS0xLjE3My00LjM5Mi01LjM2Ny00LjM5Mi04LjM1MUE0LjY2MyA0LjY2MyAwIDAxOCAxLjMzM3ptLjIxMiAxMi4wNTJjLjUzNS0uNjYgMS4wNy0xLjM3MyAxLjU2OS0yLjExMi42NTMtLjk2OSAxLjE5My0xLjkwNyAxLjU3OC0yLjc4M0MxMS43OCA3LjUzOCAxMiA2LjY5NiAxMiA2YzAtMi4yMTItMS43ODgtNC00LTQtMi4yMTIgMC00IDEuNzg4LTQgNCAwIC42OTYuMjIxIDEuNTM4LjY0IDIuNDkuMzg2Ljg3Ni45MjYgMS44MTQgMS41OCAyLjc4My4zOTguNTkxLjgyIDEuMTY2IDEuMjQ4IDEuNzFsLjMyLjQwMi4yMTIuMjU3LjIxMi0uMjU3ek04IDcuNjY3YTEuNjY3IDEuNjY3IDAgMTAwLTMuMzM0IDEuNjY3IDEuNjY3IDAgMDAwIDMuMzM0eiIgZmlsbC1ydWxlPSJldmVub2RkIi8+PC9zdmc+"
					                class="css-1x6sjfk"
					                style="width: 1.6rem; height: 1.6rem; margin-right: 0.6rem;">
					            <span id="addressText">${hotelDetail.streetAddress}</span>
					        </div>
					        <button id="copy-address"
					            style="display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center; width: 5rem; height: 2rem; font-size: 1.2rem; font-weight: normal; color: rgb(1, 82, 204); background-color: transparent; outline: none; border: transparent; white-space: nowrap; margin-left: 1.2rem;"
					            class="css-71fuuc">주소복사</button>
					    </div>
					</div>
					<!--  -->
					<div class="css-dps5x9">
						<div class="css-l65sr1">
							<div class="css-1dkom2a"
								style="display: flex; flex-direction: row; width: 100%; align-items: flex-start; font-size: 1.4rem; font-weight: normal; color: rgb(97, 97, 97); line-height: 2rem;">
								<img
									style="width: 1.6rem; height: 1.6rem; margin-right: 0.6rem;"
									src="https://yaimg.yanolja.com/stay/static/images/icon-subway-border-line-1.svg"
									alt="https://yaimg.yanolja.com/stay/static/images/icon-subway-border-line-1.svg">
								<div style="display: flex; flex-direction: column;">
									<span>9호선 국회의사당역</span><span>5호선 여의도역</span><span>9호선
										여의도역</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





	<script>
	var mapOptions = {
		    center: new naver.maps.LatLng(37.3595704, 127.105399),
		    zoom: 17
		};

		var map = new naver.maps.Map('naver-map', mapOptions);

		naver.maps.Service.geocode({
		    query: '${hotelDetail.streetAddress}'
		}, function(status, response) {
		    if (status !== naver.maps.Service.Status.OK) {
		        return alert('Something wrong!');
		    }

		    var result = response.v2, // 검색 결과의 컨테이너
		        items = result.addresses; // 검색 결과의 배열

		    if (items.length > 0) {
		        var firstAddress = items[0],
		            latlng = new naver.maps.LatLng(firstAddress.y, firstAddress.x);

		     // 커스텀 마커 아이콘 설정
		        var customMarkerIcon = {
		            content: '<img src="data:image/svg+xml,%3csvg width=\'36\' height=\'44\' viewBox=\'0 0 36 44\' xmlns=\'http://www.w3.org/2000/svg\' xmlns:xlink=\'http://www.w3.org/1999/xlink\'%3e %3cdefs%3e %3cfilter x=\'-23.2%25\' y=\'-15.3%25\' width=\'146.4%25\' height=\'136.1%25\' filterUnits=\'objectBoundingBox\' id=\'a\'%3e %3cfeOffset dy=\'1\' in=\'SourceAlpha\' result=\'shadowOffsetOuter1\'/%3e %3cfeGaussianBlur stdDeviation=\'2\' in=\'shadowOffsetOuter1\' result=\'shadowBlurOuter1\'/%3e %3cfeColorMatrix values=\'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4 0\' in=\'shadowBlurOuter1\'/%3e %3c/filter%3e %3cpath d=\'M14 36c9.333-9.134 14-16.346 14-21.635C28 6.431 21.732 0 14 0S0 6.431 0 14.365c0 5.29 4.667 12.5 14 21.635z\' id=\'b\'/%3e %3c/defs%3e %3cg fill=\'none\' fill-rule=\'evenodd\'%3e %3cg transform=\'translate(4 3)\'%3e %3cuse fill=\'black\' filter=\'url(%23a)\' xlink:href=\'%23b\'/%3e %3cuse fill=\'%23DE2E5F\' xlink:href=\'%23b\'/%3e %3c/g%3e %3cpath d=\'m18.373 10.081 5.786 3.543c.212.13.341.36.341.609v9.235c0 .394-.32.714-.714.714l-3.349-.001v-4.776h-4.875v4.776h-3.348a.714.714 0 0 1-.714-.713v-9.235c0-.249.13-.48.341-.609l5.786-3.543a.714.714 0 0 1 .746 0z\' fill=\'white\'/%3e %3c/g%3e%3c/svg%3e" alt="" style="width: 36px; height: 44px;">',
		            size: new naver.maps.Size(36, 44),
		            anchor: new naver.maps.Point(18, 44) // 마커의 중앙 하단이 위치 좌표에 오도록 설정
		        };


		        var marker = new naver.maps.Marker({
		            position: latlng,
		            map: map,
		            icon: customMarkerIcon // 마커 아이콘으로 설정
		        });

		        map.setCenter(latlng); // 마커 위치로 중심 이동
		    }

		    console.log(response);
		});


		
		
	</script>
</body>
</html>