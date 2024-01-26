<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="/css/reservation/reservation.css">
<script type="text/javascript" src="/js/reservation/reservation.js?ver=20231101"></script>
</head>
<body>
	<div style="position: relative; z-index: 0; height: 100%">
		<div class="platform-site-gxgxde">
			<!-- 헤더 부분  -->
			<div height="48" class="platform-site-1r33zt9">
				<div height="48" class=" platform-site-1qwzcgf">
					<div class="borderless platform-site-1bx0lkg" id="background">
						<div class="platform-site-1ago99h">
							<div class="platform-site-1am8kzc">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="platform-site-uqnpib">
								<path fill-rule="evenodd" d="M17.51 3.87 15.73 2.1 5.84 12l9.9 9.9 1.77-1.77L9.38 12z"></path></svg>
								<div class="center platform-site-1bjp9og">예약</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="platform-site-z5lflz">
				<section class="platform-site-1lfzket">
					<div class="platform-site-br0i6g">
						<section class="platform-site-odikhg">
							<h1 class="platform-site-plvcpk">숙소</h1>
							<div class="platform-site-18yhoc3">
								<div class="platform-site-1wy1wsq">
									<div class="platform-site-0">
										<div class="platform-site-0">
											<div class="platform-site-1btmzaf">
												<div>예약 완료 후 무료취소 안내</div>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" class="more platform-site-1m2rgzu">
													<path fill="#000" fill-rule="evenodd" d="m13.637 11.89 1.18-1.18-6.6-6.6-6.6 6.6 1.18 1.18 5.42-5.42 5.42 5.42z"></path></svg>
											</div>
										</div>
										<!--  -->
										<div height="0" class="platform-site-1hjxylh">
											<div>
												<ul class="platform-site-mp1r9s">
													<li>예약일시 기준 체크인 시각 이전일 경우 무료취소가 가능합니다.</li>
													<li>숙소 정책에 따라 일부 상품은 무료취소가 불가능합니다.</li>
												</ul>
												<div class="platform-site-fu7xh8">
													<div class="platform-site-17q8y57">
														<span>호텔/펜션/게하</span>
														<div>
															<p>
																<b>10분 이내 무료 취소</b>
															</p>
															<p>(단, 숙소 정책에 따라 취소수수료 부가 예외 규정이 적용되지 않을 수 있습니다.)</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--  -->
									</div>
								</div>
							</div>
							<div class="platform-site-kvf8wd">
								<div class="platform-site-jcm3c4">
									<div class="platform-site-y0hyy9">${roomDetails.accommodationName}</div>
									<div class="platform-site-1ae7zq3">${roomDetails.roomType}(${roomDetails.description1})</div>
								</div>
								<div class="platform-site-bb9mp">
									<div class="platform-site-sv14di e1328mzl7">${roomDetails.badge1}</div>
									<div class="platform-site-sv14di e1328mzl7">${roomDetails.badge2}</div>
									<div class="platform-site-sv14di e1328mzl7">${roomDetails.badge3}</div>
								</div>
								<div class="platform-site-e6efv">
									<div class="platform-site-yp9swi">
										<p class="platform-site-1zqgq7">체크인</p>
										<div class="platform-site-2mpvem">
											<p class="platform-site-8lzo6f">${checkIn}(${checkInDay})</p>
											<p class="platform-site-fwxc9v">${roomDetails.checkInTime}</p>
										</div>
									</div>
									<div class="platform-site-yp9swi">
										<p class="platform-site-1zqgq7">체크아웃</p>
										<div class="platform-site-2mpvem">
											<p class="platform-site-8lzo6f">${checkOut}(${checkOutDay})</p>
											<p class="platform-site-fwxc9v">${roomDetails.checkOutTime}</p>
										</div>
									</div>
								</div>
								<div class="platform-site-1djaqst">
									<div class="platform-site-ehgg3l">
										<div class="platform-site-vqg4fa">${roomDetails.roomOption}/${totalDays }박</div>
										<div class="platform-site-8ubyic">
											<b>${formattedPrice}</b>원
										</div>
									</div>
								</div>
								<div>
									<div color="#dc0328" class="platform-site-3zsvls e1wiag5j1">
										<span class="platform-site-1txq9pd e1wiag5j0">취소 및 환불불가</span>
									</div>
								</div>
								<div class="platform-site-1diyz6t"></div>
								<div class="platform-site-1wtmzum">
									<div class="platform-site-bajujj">
										<div class="platform-site-1g328ip">방문수단 선택</div>
										<div class="platform-site-14e290j">
											<label class="platform-site-cq33m0">
												<div style="margin-right: 8px" class="platform-site-1rv702g">
													<input type="radio" name="visitTypes.0" class="platform-site-pcxqtt" value="WALK">
													<div color="gray400" class="platform-site-zssjtl"></div>
												</div> <span class="platform-site-iwimyv">도보</span>
											</label><label disabled="" class="platform-site-14cn0d8"><div style="margin-right: 8px" class="platform-site-1rv702g">
													<input type="radio" name="visitTypes.0" disabled="" class="platform-site-pcxqtt" value="VEHICLE">
													<div disabled="" color="gray200" class="platform-site-1cxei73"></div>
												</div> <span disabled="" class="platform-site-tcm2rp">차량</span></label> <input type="hidden" value="">
										</div>
									</div>
									<p style="display: none" class="platform-site-1qvfizd">필수 선택을 해주셔야 합니다.</p>
								</div>
								<div style="margin-top: 4px">
									<div color="yaOrange" class="platform-site-1jm1pur">주차장 없는 숙소 (주차장 이용 불가)</div>
								</div>
							</div>
						</section>
						<!-- 	예약자 정보   -->
						<section id="user-section" class="platform-site-1lfzket">
							<input type="hidden" name="authInfo.memberNo" value="49407510"> <input type="hidden" name="authInfo.phone" value="01035718619">

							<!--   -->
							<div class="platform-site-6rx8hd">
								<div type="large" class="platform-site-1bx4qut">
									<div>
										<div class="platform-site-10fxb0u">
											<span class="platform-site-11aukek">예약자 정보</span>
										</div>
										<div class="platform-site-1fvu3ef">
											<div>${userInfo.userName }/${userInfo.phoneNo}</div>
										</div>
									</div>
									<button class="platform-site-1nstup5">변경하기</button>
								</div>
							</div>

							<!-- 내정보 수정  -->
							<div style="display: none;" class="platform-site-br0i6g">
								<div class="platform-site-1eg1023">
									<div>
										<label required="" class="platform-site-t1cgvl">성명</label>
										<div class="platform-site-164z9ie">
											<div class="platform-site-1fdg34h">
												<div class="platform-site-cssveg">
													<input type="text" placeholder="성명을 입력해주세요." name="authInfo.name_" autocorrect="off" autocapitalize="none" class="platform-site-1nmbaf9" value="${userInfo.userName }">
												</div>
												<input type="hidden" name="authInfo.name" value="김순호">
											</div>
											<div class="platform-site-12yf6u2"></div>
										</div>
									</div>
								</div>
								<div class="platform-site-1eg1023">
									<label required="" class="platform-site-t1cgvl">휴대폰 번호</label>
									<div class="platform-site-1knbux5">
										<div class="platform-site-1ytij0w">${userInfo.phoneNo}</div>
										<button type="button" height="32" class=" platform-site-1u28z64" style="margin-top: 0px;">
											<div>인증 변경하기</div>
										</button>
									</div>
								</div>
							</div>
							<!--  -->
						</section>
						<!--  -->
						<section id="visitor-section" class="platform-site-1lfzket">
							<div class="platform-site-hvtrc9">
								<div type="small" class="platform-site-fl33rf">
									<div>
										<div class="platform-site-10fxb0u">
											<span class="platform-site-11aukek">이용자 정보</span>
										</div>
									</div>
								</div>
							</div>
							<div class="platform-site-br0i6g">
								<div class="platform-site-1be69yi">상품 이용 시 필요한 필수 정보입니다.</div>
								<div style="padding: 14px 0">
									<label class="platform-site-1463o8k"><div style="margin-right: 8px" class="platform-site-1s974w9">
											<input type="checkbox" class="platform-site-pcxqtt" value="">
											<div class="platform-site-1w3cgof"></div>
										</div>예약자 정보와 동일합니다.</label>
								</div>
								<div class="platform-site-env1z2">
									<div>
										<label required="" class="platform-site-t1cgvl">성명</label>
										<div class="platform-site-164z9ie">
											<div class="platform-site-1fdg34h">
												<div class="platform-site-cssveg">
													<input type="text" placeholder="성명을 입력해주세요" name="user.name_" autocorrect="off" autocapitalize="none" class="platform-site-1nmbaf9" value="김순호">
												</div>
												<input type="hidden" name="user.name" value="김순호">
											</div>
											<div class="platform-site-12yf6u2"></div>
										</div>
									</div>
								</div>
								<div class="platform-site-env1z2">
									<div>
										<label required="" class="platform-site-t1cgvl">휴대폰 번호</label>
										<div class="platform-site-164z9ie">
											<div class="platform-site-1fdg34h">
												<div class="platform-site-cssveg">
													<input type="tel" placeholder="휴대폰 번호를 입력해주세요" name="user.phone_" autocorrect="off" autocapitalize="none" class="platform-site-1nmbaf9" value="010-3571-8619">
												</div>
												<input type="hidden" name="user.phone" value="01035718619">
											</div>
											<div class="platform-site-12yf6u2"></div>
										</div>
									</div>
								</div>
								<div class="platform-site-myk0ma">입력하신 번호는 안심번호로 변경되어 숙소에 전달됩니다. 단, 안심번호로 처리가 어려운 경우에 한해 제한적으로 개인정보 제공 동의에 근거하여 실제 휴대폰번호가 전달 될 수 있습니다.</div>
							</div>
						</section>
						<section class="platform-site-1lfzket">
							<div class="platform-site-hvtrc9">
								<div type="small" class="platform-site-fl33rf">
									<div>
										<div class="platform-site-10fxb0u">결제 금액</div>
									</div>
								</div>
							</div>
							<div class="platform-site-d3kn9q">
								<ul class="platform-site-1rycj53">
									<li class="platform-site-1auk1rf"><div>
											<h4>상품 금액</h4>
											<span>${formattedPrice}원</span>
										</div></li>
									<!-- <li class="platform-site-1auk1rf"><div>
											<h4>할인 금액</h4>
											<span>-0원</span>
										</div></li>
									<li class="platform-site-1auk1rf"><div>
											<h4>포인트</h4>
											<span>-0P</span>
										</div></li> -->
								</ul>
								<div class="platform-site-j3dtkl">
									<h3>총 결제 금액</h3>
									<span>${formattedPrice}원</span>
								</div>
								<div class="platform-site-7tm1xx">
									<span class="label">NOL 카드 첫 결제 시 </span>
									<div class="platform-site-1tx6twl">
										<div>
											<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 14 14" class="helperIcon">
												<path fill="#008161" fill-rule="evenodd"
													d="M6.417 10.5h1.166V9.333H6.417V10.5zM7 1.167A5.835 5.835 0 0 0 1.167 7 5.835 5.835 0 0 0 7 12.833 5.835 5.835 0 0 0 12.833 7 5.835 5.835 0 0 0 7 1.167zm0 10.5A4.673 4.673 0 0 1 2.333 7 4.673 4.673 0 0 1 7 2.333 4.673 4.673 0 0 1 11.667 7 4.673 4.673 0 0 1 7 11.667zM7 3.5a2.333 2.333 0 0 0-2.333 2.333h1.166A1.17 1.17 0 0 1 7 4.667a1.17 1.17 0 0 1 1.167 1.166c0 1.167-1.75 1.021-1.75 2.917h1.166c0-1.313 1.75-1.458 1.75-2.917A2.333 2.333 0 0 0 7 3.5z"></path></svg>
										</div>
									</div>
									<span>${formattedPrice}원</span>
								</div>
							</div>
						</section>
						<!-- 결제  -->
						<section style="display: block; padding: 0 2rem 2rem" class="platform-site-1lfzket">
							<input type="hidden" name="payments[1].type" value="PG"><input type="hidden" name="payments[1].method" value="CARD"><input type="hidden" name="payments[1].amount" value="340000">
							<div class="platform-site-1avfvsa e1bd0a1t0">
								<div class="platform-site-l5ywzr e1pee3gy0">
									<img src="https://image6.yanolja.com/payment/iXzQDaHnEdJELK5x" alt="결제 혜택 프로모션 메인배너">
								</div>
							</div>
							<div class="platform-site-krnbgx e1bd0a1t2">
								<div class="platform-site-hvtrc9">
									<div type="small" class="platform-site-fl33rf">
										<div>
											<div class="platform-site-10fxb0u">결제 수단</div>
										</div>
									</div>
								</div>
							</div>
							<ul class="platform-site-dtub4s e1lbhe610">
								<li class="platform-site-1krup1h er4amzh0"><div class="image platform-site-1vx1dtt e1lbhe613">
										<img src="https://image6.yanolja.com/payment/27s55gEb8xD8FPH8" alt="NOL 카드 페이" class="platform-site-10klw3m e1lbhe614">
									</div> <span class="platform-site-1wi81s e1lbhe611"><span class="display-name platform-site-115k8d8 e1lbhe612">NOL 카드 페이</span></span></li>
								<li class="platform-site-sut3yw er4amzh0"><div class="image platform-site-1vx1dtt e1lbhe613">
										<img src="https://image6.yanolja.com/payment/KQS5BVf5P2vhdQe0" alt="카카오페이" class="platform-site-10klw3m e1lbhe614">
									</div> <span class="platform-site-9wbgxu er4amzh1"><span class="platform-site-1bjn4t er4amzh2">혜택</span></span></li>
								<li class="platform-site-1krup1h er4amzh0"><div class="image platform-site-1vx1dtt e1lbhe613">
										<img src="https://image6.yanolja.com/payment/1cM6cHS76R8P8ru0" alt="네이버페이" class="platform-site-10klw3m e1lbhe614">
									</div></li>
								<li selected="" class="platform-site-1krup1h er4amzh0"><span class="display-name platform-site-115k8d8 e1lbhe612">카드</span></li>
								<li class="platform-site-1krup1h er4amzh0"><div class="image platform-site-1vx1dtt e1lbhe613">
										<img src="https://image6.yanolja.com/payment/HgI6KCtCogfkYvkc" alt="KB Pay" class="platform-site-10klw3m e1lbhe614">
									</div> <span class="platform-site-9wbgxu er4amzh1"><span class="platform-site-1bjn4t er4amzh2">혜택</span></span></li>
								<li class="platform-site-1krup1h er4amzh0"><div class="image platform-site-1vx1dtt e1lbhe613">
										<img src="https://image6.yanolja.com/payment/cjDMzWuYxWQ6uqK2" alt="페이코" class="platform-site-10klw3m e1lbhe614">
									</div> <span class="platform-site-9wbgxu er4amzh1"><span class="platform-site-1bjn4t er4amzh2">혜택</span></span></li>
								<li class="platform-site-1krup1h er4amzh0"><div class="image platform-site-1vx1dtt e1lbhe613">
										<img src="https://image6.yanolja.com/payment/0pioMlyR7FIuNFFD" alt="토스페이" class="platform-site-10klw3m e1lbhe614">
									</div> <span class="platform-site-9wbgxu er4amzh1"><span class="platform-site-1bjn4t er4amzh2">혜택</span></span></li>
								<li class="platform-site-1krup1h er4amzh0"><span class="display-name platform-site-115k8d8 e1lbhe612">간편계좌결제</span></li>
								<li class="platform-site-1krup1h er4amzh0"><span class="display-name platform-site-115k8d8 e1lbhe612">휴대폰</span></li>
								<li class="platform-site-1krup1h er4amzh0"><div class="image platform-site-1vx1dtt e1lbhe613">
										<img src="https://image6.yanolja.com/payment/49HoSLMtu5FthFH3" alt="스마일페이" class="platform-site-10klw3m e1lbhe614">
									</div></li>
								<li class="platform-site-1krup1h er4amzh0"><div class="image platform-site-1vx1dtt e1lbhe613">
										<img src="https://image6.yanolja.com/payment/KfNz3BoJTXQMrjj3" alt="SSG페이" class="platform-site-10klw3m e1lbhe614">
									</div></li>
								<li class="platform-site-1krup1h er4amzh0"><div class="image platform-site-1vx1dtt e1lbhe613">
										<img src="https://image6.yanolja.com/payment/OxLcSahIdDAVNuWI" alt="엘페이" class="platform-site-10klw3m e1lbhe614">
									</div></li>
								<li class="platform-site-1krup1h er4amzh0"><span class="display-name platform-site-115k8d8 e1lbhe612">실시간계좌이체</span></li>
								<li class="platform-site-1krup1h er4amzh0"><span class="display-name platform-site-115k8d8 e1lbhe612">법인 카드</span><span class="platform-site-9wbgxu er4amzh1"><span class="platform-site-1bjn4t er4amzh2">혜택</span></span></li>
								<li class="platform-site-1krup1h er4amzh0"><span class="display-name platform-site-115k8d8 e1lbhe612">해외 발급 카드</span></li>
							</ul>
							<div class="platform-site-1n1c6cf en71c3x0">
								<div class="platform-site-11l3lb9 en71c3x5">
									<button class=" secondary  platform-site-w786y4">
										<div class="platform-site-f3ru63">
											<span>결제 혜택 전체보기</span>
										</div>
									</button>
								</div>
							</div>
						</section>
						<section style="padding: 1.2rem 0" class="platform-site-1lfzket">
							<div class="platform-site-br0i6g">
								<ul class="platform-site-1g4ix0t">
									<li class="platform-site-1os60kt"><h5>현장결제</h5>
										<div>추가인원 비용등의 현장결제 발생 상품을 확인하세요.</div></li>
									<li class="platform-site-1os60kt"><h5>취소불가 및 수수료</h5>
										<div>취소 및 환불규정에 따라 취소불가, 수수료가 발생 할 수 있습니다.</div></li>
									<li class="platform-site-1os60kt"><h5>미성년자 및 법정대리인 필수</h5>
										<div>미성년자는 법정대리인 동행 없이 투숙이 불가능합니다.</div></li>
								</ul>
								<div class="platform-site-1oibb5e">
									<label class="platform-site-1463o8k">
										<div style="margin-right: 8px" class="platform-site-1s974w9">
											<input type="checkbox" class="platform-site-pcxqtt" value="">
											<div class="platform-site-nkgnmt"></div>
										</div> <span>필수 약관 전체 동의</span>
									</label>
								</div>
								<div class="platform-site-15uuw1m">
									<label class="platform-site-1463o8k">
										<div style="margin-right: 0" class="platform-site-1s974w9">
											<input type="checkbox" class="platform-site-pcxqtt" value="">
											<div class="platform-site-1ykgzse"></div>
										</div> <span class="platform-site-1sto47j">[필수] 개인정보 수집 및 이용</span>
									</label><a href="#" class="platform-site-1790iw">보기</a>
								</div>
								<div class="platform-site-15uuw1m">
									<label class="platform-site-1463o8k">
										<div style="margin-right: 0" class="platform-site-1s974w9">
											<input type="checkbox" class="platform-site-pcxqtt" value="">
											<div class="platform-site-1ykgzse"></div>
										</div> <span class="platform-site-1sto47j">[필수] 개인정보 제 3자 제공</span>
									</label><a href="#" class="platform-site-1790iw">보기</a>
								</div>
								<div class="platform-site-18whv6n">
									<a href="#" class="platform-site-r8t6mj">이용규칙</a>
									<!-- -->
									,
									<!-- -->
									<a href="#" class="platform-site-r8t6mj">취소 및 환불 규칙</a>
									<!-- -->
									에 동의하실 경우 결제하기를 클릭해주세요.
								</div>
								<div style="margin-top: 12px">
									<form method="post" action="/kakaoPay">
										<input type="hidden" name="userNo" value="${userInfo.userNo}"> <input type="hidden" name="phoneNo" value="${userInfo.phoneNo}"> <input type="hidden" name="userEmail" value="${userInfo.userEmail}"> <input type="hidden" name="userName" value="${userInfo.userName}">
										<input type="hidden" name="accommodationNo" value="${roomDetails.accommodationNo}"> <input type="hidden" name="roomNo" value="${roomDetails.roomNo}"> <input type="hidden" name="price" value="${roomDetails.price}"> <input type="hidden" name="totalPeople"
											value="${totalPeople}"> <input type="hidden" name="accommodationName" value="${roomDetails.accommodationName}"> <input type="hidden" name="checkInDate" value="${checkIn}"> <input type="hidden" name="checkOutDate" value="${checkOut}">

										<button type="submit" class="platform-site-128od1m" disabled="">
											${formattedPrice}원
											<!-- -->
											결제하기
										</button>
									</form>
								</div>
								<div class="platform-site-1tgdinw">(주)야놀자는 통신판매중개업자로서, 통신판매의 당사자가 아니라는 사실을 고지하며 상품의 결제, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다.</div>
								<div class="open platform-site-19vo6gd">
									<div class="wrapper">

										<button class="platform-site-1s0nat5">
											<img
												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjUiIGhlaWdodD0iMjUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGNsaXBQYXRoIGlkPSJhIj48cGF0aCBkPSJNMzExNiAwdjU3MDVIMFYwaDMxMTZ6Ii8+PC9jbGlwUGF0aD48Y2xpcFBhdGggaWQ9ImIiPjxwYXRoIGQ9Ik0uNzEgMGw5Ljg5IDkuOS05LjkgOS45LS43LS43IDkuMi05LjJMLjAwMy43MDMuNzEgMHoiLz48L2NsaXBQYXRoPjwvZGVmcz48ZyBjbGlwLXBhdGg9InVybCgjYSkiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMjY3IC0zNzQxKSI+PGcgY2xpcC1wYXRoPSJ1cmwoI2IpIiB0cmFuc2Zvcm09InJvdGF0ZSgtOTAgMzAxNC4yMSA3NDQuNTc5KSI+PHBhdGggZmlsbD0iIzYxNjE2MSIgZD0iTTAgMGgxMC42djE5LjhIMFYweiIvPjwvZz48L2c+PC9zdmc+"
												alt="맨 위로">
										</button>
									</div>
								</div>
							</div>
						</section>
					</div>
				</section>
			</div>
		</div>
	</div>

</body>
</html>