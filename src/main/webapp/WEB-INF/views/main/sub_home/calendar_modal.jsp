<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<body class="css-11zhy3w">
    <div id="_MODAL_DIM_" class="open css-q31e3o">
        <div class="css-12i1j2o">
            <div class="css-1at6ro7">
                <div class="css-11yfoy8">
                    <main class="css-1pytvd0">
                        <div class="css-1pywpk7">
                            <div class="css-169c0fw">
                                <div height="2718" class="css-1mqm0rk">
                                    <div height="372" class="css-galij5">
                                        <div class="css-smi2gg">
                                            <%
                                            int currentMonth = java.time.LocalDate.now().getMonthValue();
                                            int currentYear = java.time.LocalDate.now().getYear();
                                            %>

                                            <%
                                            for (int i = 0; i < 2; i++) {
                                            %>
                                            <!-- 월 -->
                                            <div class="css-1g89ncd">
                                                <div class="css-1pi2o5h"><%=currentMonth + i <= 12 ? currentMonth + i : (currentMonth + i) % 12 %></div>
                                                <div class="css-1x5bkuz">
                                                    <div>월</div>
                                                    <div><%=currentMonth + i <= 12 ? currentYear : currentYear + 1 %></div>
                                                </div>
                                            </div>
                                            <!-- 일 -->
                                            <div class="css-rwdjnq" data-month="<%=currentMonth + i%>" data-year="<%=currentYear%>"></div>
                                            <!-- 라인 -->
                                            <div class="css-10nk57n"></div>
                                            <%
                                            }
                                            %>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 검색 버튼 -->
                            <div class="css-1mesxmb">
                                <button id="date-button" class="css-ijxt52"><span>${empty checkIn ? defaultCheckIn : checkIn} (${checkInDay})</span> 
				        ~ ${empty checkOut ? defaultCheckOut : checkOut} (${checkOutDay})</button>
                            </div>
                            <!--  -->
                        </div>
                    </main>
                    <!-- -->
                    <!-- 헤더 -->
                    <header class="css-14839ox">
                        <div class="css-sevc8p">
                            <div class="css-1v6k278">
                                <img id="calendar-cancel" src="data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24'%3e %3cpath fill-rule='evenodd' d='M18.364 4.222L19.778 5.636 13.414 12 19.778 18.364 18.364 19.778 12 13.414 5.636 19.778 4.222 18.364 10.586 12 4.222 5.636 5.636 4.222 12 10.586z'/%3e%3c/svg%3e" data-testid="back-button"
                                    draggable="false" class="css-1i028dt2">
                                <div data-testid="content" class="css-17e7ihx">
                                    <div>날짜 선택 </div>
                                   
                                </div>
                                <div data-testid="buttons" class="css-4j64ic">
                                    <button class="css-qh6dtv">
                                        <div class="css-1mwn02k">
                                            <div id="reset" class="css-1wwhv0s">초기화</div>
                                        </div>
                                    </button>
                                </div>
                            </div>
                            <div class="css-0">
                                <div class="css-2ul607">
                                    <span>이 숙소는 <strong>최대 9박</strong> 까지 예약 가능합니다. </span>
                                </div>
                                <div class="css-1hppjzv">
                                    <div type="sunday" class="css-1s9dhif">일</div>
                                    <div class="css-1s9dhif">월</div>
                                    <div class="css-1s9dhif">화</div>
                                    <div class="css-1s9dhif">수</div>
                                    <div class="css-1s9dhif">목</div>
                                    <div class="css-1s9dhif">금</div>
                                    <div type="saturday" class="css-1s9dhif">토</div>
                                </div>
                            </div>
                        </div>
                    </header>
                </div>
            </div>
        </div>
    </div>
    <script>
    
	    var currentMonth = <%= currentMonth %>;
	    var currentYear = <%= currentYear %>;

    </script>

</body>

</html>
