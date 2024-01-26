<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<body>
	<section class="RegionDiscovery_container__3Qw7P">
		<div class="RegionDiscovery_wrapper__2iF_9">
			<div class="RegionDiscoveryButtons_container__3dY_J">
				<h2 class="RegionDiscoveryButtons_title__12Ask">어디로 갈까요?</h2>
				<div class="RegionDiscoveryButtons_buttonContainer__1o-Fo">

					<!--  -->
					<button id="selectRegion" class="BaseButton_button__tzyL8 RectButton_basic__3QCM- RegionButton_button__1oXz3 RegionButton_custom__I-C1w">
						<div class="RegionButton_wrapper__1TlnV RectButton_icon__315ok">
							<span class="RegionButton_titleContainer__3gopu"> <span class="Icon_icon__2BP_o RegionButton_iconLocation__1P-O6" aria-hidden="true"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
								<path d="M12 2c3.87 0 7 3.13 7 7 0 5.25-7 13-7 13l-.412-.473C10.087 19.767 5 13.475 5 9c0-3.87 3.13-7 7-7zm0 4.5c1.38 0 2.5 1.12 2.5 2.5s-1.12 2.5-2.5 2.5S9.5 10.38 9.5 9s1.12-2.5 2.5-2.5z"></path>
							</svg>
							</span>
								<div class="RegionButton_title__3Ay2i">지역 선택</div>
							</span> <span class="Icon_icon__2BP_o RegionButton_iconArrow__3iXcq" aria-hidden="true"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
								<path d="M6.49 20.13L8.26 21.9 18.16 12 8.26 2.1 6.49 3.87 14.62 12 6.49 20.13z"></path>
							</svg>
							</span>
						</div>
					</button>
					<!--  -->
					<a href="/around/keyword-hotel?advert=AROUND&amp;sourcePage=Hotel" as="link" class="BaseButton_pseudo__2cnN7 RectButton_basic__3QCM- AroundButton_button__Q1qa7 AroundButton_custom__285dc RegionDiscoveryButtons_fixedButton__U9n3L">
						<div class="AroundButton_wrapper__37SWL RectButton_icon__315ok">
							<span class="Icon_icon__2BP_o AroundButton_icon__3BPrO" aria-hidden="true"> <svg viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path clip-rule="evenodd" d="M17.5 2.5L11.2167 17.5H10.4L8.2 11.8L2.5 9.59167V8.775L17.5 2.5Z" fill="black"></path>
							</svg>
							</span>
							<div class="AroundButton_title__KpoD_">내주변</div>
						</div>
					</a>
				</div>
			</div>
			<!-- 내가 조회한 지역 -->
			<c:if test="${not empty localselected}">
			<div class="RecentRegion_container__3k9d3">
				<h2 class="RecentRegion_title__ZTKia">최근 선택 지역</h2>
				<div class="RecentRegion_chipContainer__25Z_i">
					<c:forEach items="${localselected}" var="local">
					
						<div class="RecentRegion_chip__39wm5">
						<a href="/localHotel.do?entireRegion=${local.regionName}" style="text-decoration: none;">
						<span class="RecentRegion_chipTitle__17TAF">${local.regionName}</span>
						</a>
							<button class="RecentRegion_closeBtn__3fLEP">
								<span class="Icon_icon__2BP_o RecentRegion_closeIcon__WAQUW" aria-hidden="true">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path d="M18.742 4.575L19.449 5.282 12.732 12 19.449 18.718 18.742 19.425 12.025 12.707 5.307 19.425 4.6 18.718 11.318 12 4.6 5.282 5.307 4.575 12.025 11.293z"></path>
                        </svg>
								</span>
							</button>
						</div>
					</c:forEach>
				</div>
			</div>
			<!--  -->
			</c:if>
		</div>
	</section>
	
	<script>
    var userNo = ${userNo};
	console.log(userNo);
	</script>
</body>
</html>