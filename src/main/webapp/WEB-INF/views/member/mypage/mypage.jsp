<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<!-- css 시작 -->
<link rel="stylesheet" href="/css/mypage/mypage1.css">
<link rel="stylesheet" href="/css/mypage/mypage2.css">
 <!-- 자바스크립트  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/js/mypage/myPage.js?ver=20230918"></script>
</head>
    
 <body>
	<header class="CollapsingNav_container__qxFvQ" style="animation-delay:-0s">
	    <nav class="CollapsingNav_top__34wpX">
	        <section class="MyPageNav_topContainer__3SBtS">
	            <div class="CollapsingNavTopButtons_wrap__F8d4I MyPageNav_topContainerBody__2Xfc1">
	                <a class="MyPageNav_pushBoxBtn__3ICd6">
	                    <span class="Icon_icon__2BP_o" aria-hidden="true">
	                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
	                            <path d="M12 22c1.1 0 2-.9 2-2h-4c0 1.1.9 2 2 2zm6-6v-5c0-3.07-1.63-5.64-4.5-6.32V4c0-.83-.67-1.5-1.5-1.5s-1.5.67-1.5 1.5v.68C7.64 5.36 6 7.92 6 11v5l-2 2v1h16v-1l-2-2zm-2 1H8v-6c0-2.48 1.51-4.5 4-4.5s4 2.02 4 4.5v6z"></path>
	                        </svg>
	                    </span>
	                </a>
	                <div class="CollapsingNavTopButtons_cartButton__1TS1W MyPageNav_cartBtn__3TQWk"></div>
	            </div>
	        </section>
	    </nav>
	    <div class="CollapsingNav_body__2fPi_">
	        <section class="MyPageNav_container__2QOsu">
	            <div class="MyPageNav_containerBody__2Sz2I">
	                <div class="MyPageNav_background__3FVb8"></div>
	                <section class="mypage_titleContainer__1yV00">
	                    <h2 class="mypage_title__1NaG1">MY 야놀자</h2>
	                </section>
	            </div>
	        </section>
	    </div>
	</header>
        <div id="__next">
            <main class="mypage_mypageContainer__3R426">
                <div class="">
				</div>
				<div class="MyPageBody_container__1VPNP">
   				<div class="MyPageBody_mwBg__K6qYF"></div>
   				<div class="MyPageBody_containment__2oJw9">
      				<div class="MyPageBody_padding__3VuJv">
        				<c:if test="${UserEmailSession == null}">
							<section class="MyPageCardSection_container__3Atox MyPageMyInfo_container__3IF5O">
   								<section class="MyPageMyInfo_card__3AR4q">
      							  <div class="LoginLink_container__mBldU">
           							 <a href="/login.do" class="LoginLink_messageContainer__V_NLh">
									 	<p class="LoginLink_catch__2vSs_">가입하고 놀자, 계산적으로</p>
						             	<h2 class="LoginLink_link__pp7An">로그인 및 회원가입 하기</h2>
						         	 </a>
            							<a href="/mybenefit" class="LoginLink_button__1g4HB">MY 혜택</a>
								  </div>
								</section>
							</section>
						</c:if>
						<c:if test="${UserEmailSession != null}" >
						<section class="MyPageMyInfo_card__3AR4q">
						    <div class="MyNick_container__1lMx4">
						        <a href="/userDet.do" data-test="profileMenu">
						            <img class="MyNick_profile__3Dl9Q" src="<%= session.getAttribute("UserImageSession") %>" alt=""/>
						</a>
						<a href="/userDet.do" class="MyNick_nickname__2Scd9" data-test="profileMenu">
						    <div>${UserNameSession}</div>
						            <span class="MyNick_myInfo__2A6R-">내정보 관리</span>
						        </a>
						        <a href="/mybenefit" class="MyNick_button__vsb4e">MY 혜택</a>
						    </div>
						</section>
						</c:if>
				        <section class="MyPageMyInfo_card__3AR4q">
				            <ul class="MyPageMyInfo_recordLinkList__DiswM">
				                <li class="RecordLink_container__2mlqx MyPageMyInfo_recordA__2oxRN">
				                    <a href="https://point-site-efin.yanolja.com:443/point" class="RecordLink_anchor__3wpsa">
				                        <div class="RecordLink_left__10Az7">
				                            <img class="RecordLink_icon__3CqzC" src="//yaimg.yanolja.com/joy/sunny/static/images/my/icon-point-line-1.svg" alt=""/>
				                            <span class="RecordLink_label__2HIbY">야놀자 포인트</span>
				                        </div>
				                        <div class="RecordLink_right__2qs6s">
				                            <span class="RecordLink_forwardIcon__2NvgZ"></span>
				                        </div>
				                    </a>
				                </li>
				                <li class="RecordLink_container__2mlqx MyPageMyInfo_recordB__1MTTe">
				                    <a href="/yanolja-coin" class="RecordLink_anchor__3wpsa">
				                        <div class="RecordLink_left__10Az7">
				                            <img class="RecordLink_icon__3CqzC" src="//yaimg.yanolja.com/joy/sunny/static/images/my/icon-ycoin-line-1.svg" alt=""/>
				                            <span class="RecordLink_label__2HIbY">야놀자 코인</span>
				                        </div>
				                        <div class="RecordLink_right__2qs6s">
				                            <span class="RecordLink_syncHint__3KhnP">계정연동 후 사용하세요</span>
				                            <span class="RecordLink_forwardIcon__2NvgZ"></span>
				                        </div>
				                    </a>
				                </li>
				                <li class="RecordLink_container__2mlqx MyPageMyInfo_recordC__2XLbM">
				                    <a href="https://global-order-site.yanolja.com:443/myyanolja/coupon" class="RecordLink_anchor__3wpsa">
				                        <div class="RecordLink_left__10Az7">
				                            <img class="RecordLink_icon__3CqzC" src="//yaimg.yanolja.com/joy/sunny/static/images/my/icon-coupon-2-line-1.svg" alt=""/>
				                            <span class="RecordLink_label__2HIbY">쿠폰함</span>
				                        </div>
				                        <div class="RecordLink_right__2qs6s">
				                            <span class="RecordLink_forwardIcon__2NvgZ"></span>
				                        </div>
				                    </a>
				                </li>
				                <li class="RecordLink_container__2mlqx MyPageMyInfo_recordD__k7v0g">
				                    <a href="https://domestic-order-site.yanolja.com:443/review/reviews" class="RecordLink_anchor__3wpsa">
				                        <div class="RecordLink_left__10Az7">
				                            <img class="RecordLink_icon__3CqzC" src="//yaimg.yanolja.com/joy/sunny/static/images/my/icon-review-line-1.svg" alt=""/>
				                            <span class="RecordLink_label__2HIbY">나의 후기</span>
				                        </div>
				                        <div class="RecordLink_right__2qs6s">
				                            <span class="RecordLink_forwardIcon__2NvgZ"></span>
				                        </div>
				                    </a>
				                </li>
				                <li class="RecordLink_container__2mlqx MyPageMyInfo_recordE__2GVZY">
				                    <a href="/wishlist.do" class="RecordLink_anchor__3wpsa">
				                        <div class="RecordLink_left__10Az7">
				                            <img class="RecordLink_icon__3CqzC" src="//yaimg.yanolja.com/joy/sunny/static/images/my/icon-favorite-border-line-1.svg" alt=""/>
				                            <span class="RecordLink_label__2HIbY">찜</span>
				                        </div>
				                        <div class="RecordLink_right__2qs6s">
				                            <span class="RecordLink_forwardIcon__2NvgZ"></span>
				                        </div>
				                    </a>
				                </li>
				            </ul>
				        </section>
						</div>
						<section class="MyPageBanner_container__kvVXZ">
						    <a href="https://www.yanolja.com/promotion/nol-promotion?eventcode=NOYLN" class="MyPageBanner_mypageBannerLink__1LHbZ" style="background-image:url(https://yaimg.yanolja.com/v5/2023/07/31/17/64c7eb6c875a65.18775437.png)"></a>
						</section>
						<div class="MyPageBody_padding__3VuJv MyPageBody_isola__1piJo">
						    <section>
						        <header class="SubHeader_container__mMQq5 SubHeader_titleWrap__3g5at">
						            <h2 class="SubHeader_title__1PFTQ">비회원 예약 내역</h2>
						        </header>
						        <section class="MyPageCardSection_container__3Atox ReservationsMenu_container__3W2dd">
						            <a href="/visitorlogin?type=platformOrder" class="ReservationsMenu_entry__16sWb">
						                <span class="ReservationsMenu_title__3wIfU">국내숙소/놀거리/교통 예약내역</span>
						                <span class="Icon_icon__2BP_o ReservationsMenu_arrow__FTsZ6" aria-hidden="true">
						                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
						                        <path d="M8.11 2.1L7.403 2.803 16.6 12 7.4 21.2 8.1 21.9 18 12z"></path>
						                    </svg>
						                </span>
						            </a>
						        </section>
						        <section class="MyPageCardSection_container__3Atox ReservationsMenu_container__3W2dd">
						            <a href="https://global-order-site.yanolja.com/orders-list" class="ReservationsMenu_entry__16sWb">
						                <span class="ReservationsMenu_title__3wIfU">해외숙소 예약내역</span>
						                <span class="Icon_icon__2BP_o ReservationsMenu_arrow__FTsZ6" aria-hidden="true">
						                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
						                        <path d="M8.11 2.1L7.403 2.803 16.6 12 7.4 21.2 8.1 21.9 18 12z"></path>
						                    </svg>
						                </span>
						            </a>
						        </section>
						   </section>
						</div>
						<section class="MyPageBanner_container__kvVXZ">
						    <a href="https://board.yanolja.com/event/2/index.html" class="MyPageBanner_mypageBannerLink__1LHbZ" style="background-image:url(https://yaimg.yanolja.com/v5/2023/08/17/13/64de1ab8826f28.71731604.png)"></a>
						</section>
						<div>
						    <div class="MyPageBody_isola__1piJo">
						        <section class="MyPageEventMenu_container__3Z5FB">
						            <a href="https://www.yanolja.com/event" class="MyPageEventMenu_item__1PD3I">
						                <img class="MyPageEventMenu_icon__32Ct_" src="//yaimg.yanolja.com/joy/sunny/static/images/my/ic-system-event-36.svg" alt=""/>
						                <span class="MyPageEventMenu_label__2Duuy">이벤트</span>
						            </a>
						            <a href="https://www.yanolja.com/exhibition" class="MyPageEventMenu_item__1PD3I">
						                <img class="MyPageEventMenu_icon__32Ct_" src="//yaimg.yanolja.com/joy/sunny/static/images/my/ic-system-exhibitions-36.svg" alt=""/>
						                <span class="MyPageEventMenu_label__2Duuy">기획전</span>
						            </a>
						            <a href="https://board.yanolja.com/info/list/index.html?tab=winner" class="MyPageEventMenu_item__1PD3I">
						                <img class="MyPageEventMenu_icon__32Ct_" src="//yaimg.yanolja.com/joy/sunny/static/images/my/ic-system-winner-36.svg" alt=""/>
						                <span class="MyPageEventMenu_label__2Duuy">당첨자 발표</span>
						            </a>
						        </section>
							    </div>
							    <div class="MyPageBody_isola__1piJo">
							        <section class="MyPageCSInfo_container__s6NdI">
							            <a href="https://www.yanolja.com/mypage/cs" class="MyPageCSInfo_heading__1qLUX">
						                <header class="SubHeader_container__mMQq5">
						                    <div class="SubHeader_titleWrap__3g5at">
						                        <h2 class="SubHeader_title__1PFTQ">
						                            <div class="MyPageCSInfo_title__3Bf5w">
						                                <img class="MyPageCSInfo_headingIcon__2Eit5" src="//yaimg.yanolja.com/joy/sunny/static/images/icon-helpdesk-line-2.svg"/>고객센터
						                              </div>
						                        </h2>
						                    </div>
						                    <div class="SubHeader_aside__1utqv">
						                        <span class="MyPageCSInfo_captionWrap__fNko-">
						                            <span class="MyPageCSInfo_caption__bQcXO">365일 오전 9시 ~ 익일 오전 3시 운영</span>
						                            <span class="Icon_icon__2BP_o MyPageCSInfo_anchorIcon__1UwUD" aria-hidden="true">
						                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
						                                    <path d="M6.49 20.13L8.26 21.9 18.16 12 8.26 2.1 6.49 3.87 14.62 12 6.49 20.13z"></path>
						                                </svg>
						                            </span>
						                        </span>
						                    </div>
               							</header>
          								</a>
							            <ul class="MyPageCSInfo_endpoints__3a8Bv">
							                <li class="MyPageCSInfo_endpoint__RjbMQ">
							                    <a class="MyPageCSInfo_anchor__R3zUH" href="http://plus.kakao.com/home/@야놀자고객센터" target="_blank">
							                        카카오톡 1:1 문의
							                        <span class="Icon_icon__2BP_o MyPageCSInfo_anchorIcon__1UwUD" aria-hidden="true">
							                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
							                                <path d="M6.49 20.13L8.26 21.9 18.16 12 8.26 2.1 6.49 3.87 14.62 12 6.49 20.13z"></path>
							                            </svg>
							                        </span>
							                    </a>
							                </li>
							            </ul>
        							</section>
  								</div>
							    <div class="MyPageBody_isola__1piJo">
							        <section class="MyPageOtherLinks_container__1SXq1">
							            <a href="https://board.yanolja.com/faq/list/index.html" class="MyPageOtherLinks_link__2EX8L">
							                자주 묻는 질문 FAQ
							                <span class="Icon_icon__2BP_o MyPageOtherLinks_arrow__2HSsW" aria-hidden="true">
							                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
							                        <path d="M6.49 20.13L8.26 21.9 18.16 12 8.26 2.1 6.49 3.87 14.62 12 6.49 20.13z"></path>
							                    </svg>
							                </span>
							            </a>
							            <a href="https://board.yanolja.com/info/list/index.html" class="MyPageOtherLinks_link__2EX8L">
							                공지사항
							                <span class="Icon_icon__2BP_o MyPageOtherLinks_arrow__2HSsW" aria-hidden="true">
							                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
							                        <path d="M6.49 20.13L8.26 21.9 18.16 12 8.26 2.1 6.49 3.87 14.62 12 6.49 20.13z"></path>
							                    </svg>
							                </span>
							            </a>
							            <a href="https://www.yanolja.com/yanoljainfo" class="MyPageOtherLinks_link__2EX8L">
							                야놀자 정보
							                <span class="Icon_icon__2BP_o MyPageOtherLinks_arrow__2HSsW" aria-hidden="true">
							                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
							                        <path d="M6.49 20.13L8.26 21.9 18.16 12 8.26 2.1 6.49 3.87 14.62 12 6.49 20.13z"></path>
							                    </svg>
							                </span>
							            </a>
        							   <!-- 로그인 시 보이기  -->
									<c:if test="${UserEmailSession != null}">
									  <a href="/settings.do" class="MyPageOtherLinks_link__2EX8L">
									    설정
									    <span class="Icon_icon__2BP_o MyPageOtherLinks_arrow__2HSsW" aria-hidden="true">
									        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
									            <path d="M6.49 20.13L8.26 21.9 18.16 12 8.26 2.1 6.49 3.87 14.62 12 6.49 20.13z"></path>
									        </svg>
									    </span>
									</a>
								   </c:if>
                       			 </section>
                    		</div>
             		   </div>
          		  </div>
       		 </div>
   		 </main>
</div>
<!-- pageTabs-->
<jsp:include page="/WEB-INF/views/common/pageTabs.jsp"/>

    </body>
</html>
