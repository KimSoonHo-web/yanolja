<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- css 시작 -->
<link rel="stylesheet"
	href="/css/main/sub_hotel/local_hotel/local_hotel1.css">
<link rel="stylesheet"
	href="/css/main/sub_hotel/local_hotel/local_hotel2.css">
<!-- 자바스크립트  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/main/sub_hotel/local_calendar.js?ver=2023092"></script>



</head>


<body>
	<div class="ReactModalPortal">
		<div
			class="FullScreenModal_overlay__3hzGh FullScreenModal_contentAfterOpen__1McJq">
			<div
				class="FullScreenModal_content__1w_Bv FullScreenModal_contentWithTitle__smQTh FullScreenModal_contentAfterOpen__1McJq"
				tabindex="-1" role="dialog">
				<div
					class="page-title PageTitle_container__wVTJI PageTitle_hasBottomBorder__1vShE white FullScreenModal_title__1D3y-">
					<div class="PageTitle_pageTitleWrap__3xlVE">
						<div class="PageTitle_leftWrap__1DN6c">
							<div>
								<button type="button" id="calendar_clear" class="PageTitleImageButton_button__3MXeo">
									<img
										src="//yaimg.yanolja.com/joy/sunny/static/images/btn-close.svg"
										alt="닫기">
								</button>
							</div>
						</div>
						<h1 class="PageTitle_pageTitle__Q5MEn">날짜 지정</h1>
						<div class="PageTitle_rightWrap__18rRe">
							<div style="display: none;"  role="button" class="DateRangePicker_reset__309eB">초기화</div>
						</div>
					</div>
				</div>
				<section
					class="FullScreenModal_contentBody__1astu DateRangePicker_modalBody__233TM">
					<section class="DateRangePicker_caption__1xTEV">
						<strong>미리예약</strong> : 180일 후까지 가능 | <strong>연박</strong> : 최대
						9박까지 가능
					</section>
					<section class="DateRangePicker_selectedDateInfoContainer__csGOn">
						<div class="DateRangePicker_selectedDateInfoLeft__2BPX_">
							<div class="selected-date-title">체크인</div>
							<div id="check_in" class="selected-date--left"></div>
						</div>
						<img class="DateRangePicker_selectedDateInfoArrow__2jYkG"
							src="//yaimg.yanolja.com/joy/sunny/static/images/icon-arrow-calendar.svg"
							alt="" height="25px" width="40px" style="left: calc(50% - 2rem);">
						<div class="DateRangePicker_selectedDateInfoRight__3Jje0">
							<div  class="selected-date-title">체크아웃</div>
							<div id="check_out" class="selected-date--right"></div>
						</div>
					</section>
					<section style="height: 713px;">
						<div
							class="DayPicker DayPicker_1 DayPicker__verticalScrollable DayPicker__verticalScrollable_2">
							<div>
								<div class>
									<!-- 요일 시작 -->
									<div role="presentation" aria-hidden="true"
										class="DayPicker_weekHeaders DayPicker_weekHeaders_1">
										<div class="DayPicker_weekHeader DayPicker_weekHeader_1 DayPicker_weekHeader__vertical DayPicker_weekHeader__vertical_2 DayPicker_weekHeader__verticalScrollable DayPicker_weekHeader__verticalScrollable_3">
											<ul class="DayPicker_weekHeader_ul DayPicker_weekHeader_ul_1">
											<!-- 동적으로 <li> 요소 삽입 요일  -->
											</ul>
										</div>
									</div>
									<!-- 요일 끝 -->
									<div aria-roledescription="datepicker" aria-label="Calendar" role="application" tabindex="-1" class="DayPicker_focusRegion DayPicker_focusRegion_1">
										<div class="DayPicker_transitionContainer DayPicker_transitionContainer_1 DayPicker_transitionContainer__vertical DayPicker_transitionContainer__vertical_2 DayPicker_transitionContainer__verticalScrollable DayPicker_transitionContainer__verticalScrollable_3">
											<div class="DayPickerNavigation DayPickerNavigation_1 DayPickerNavigation__vertical DayPickerNavigation__vertical_2 DayPickerNavigation__verticalDefault DayPickerNavigation__verticalDefault_3 DayPickerNavigation__verticalScrollable DayPickerNavigation__verticalScrollable_4  DayPickerNavigation__verticalScrollable_prevNav DayPickerNavigation__verticalScrollable_prevNav_6">
												<div aria-label="Move backward to switch to the previous month." tabindex="0" role="button" class="DayPickerNavigation_button DayPickerNavigation_button_1 DayPickerNavigation_button__default DayPickerNavigation_button__default_2 DayPickerNavigation_button__vertical DayPickerNavigation_button__vertical_3 DayPickerNavigation_button__verticalDefault DayPickerNavigation_button__verticalDefault_4 DayPickerNavigation_prevButton__verticalDefault DayPickerNavigation_prevButton__verticalDefault_5 DayPickerNavigation_prevButton__verticalScrollableDefault DayPickerNavigation_prevButton__verticalScrollableDefault_6">
													<svg class="DayPickerNavigation_svg__vertical DayPickerNavigation_svg__vertical_1" focusable="false" viewBox="0 0 1000 1000">
														<path d="M32 713l453-453c11-11 21-11 32 0l453 453c5 5 7 10 7 16 0 13-10 23-22 23-7 0-12-2-16-7L501 309 64 745c-4 5-9 7-15 7-7 0-12-2-17-7-9-11-9-21 0-32z"></path>
													</svg>
												</div>
											</div>
											<div class="CalendarMonthGrid CalendarMonthGrid_1 CalendarMonthGrid__vertical_scrollable CalendarMonthGrid__vertical_scrollable_2" style="transform: translateY(0px); width: 370px;">
												<div class >
											        <!-- 각 월의 달력을 렌더링하는 부분 시작 -->
											        <div id="calendar1" class="CalendarMonth CalendarMonth_1" data-visible="true" style="padding: 0px 13px;">
											            <!-- 월 헤더 -->
											            <div class="CalendarMonth_caption CalendarMonth_caption_1 CalendarMonth_caption__verticalScrollable CalendarMonth_caption__verticalScrollable_2">
											                <strong></strong>
											            </div>
											            <!-- 날짜를 표시할 테이블 -->
											            <table class=" CalendarMonth_table CalendarMonth_table_1" role="presentation">
											                <tbody>
											                	
											                
											                </tbody>
											            </table>
											        </div>
												</div>
												
											</div>
											
										</div>
									</div>

								</div>
							</div>
						</div>
					</section>
					<!-- 버튼  -->
					<section class="DateRangePicker_modalBottomButton__18h2D">
						<button id="button" class="DateRangePicker_rangePickerConfirmButton__2c41H" >확인</button>
					</section>
				</section>
			</div>
		</div>
	</div>
	
</body>
</html>