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

<div class="css-1jmw03p">
	<div class="css-1ge9yaw">
		<div class="css-1tkw7tm">
			<div class="css-1jmw03p">
				<div class="css-1ge9yaw">
					<div class="css-1tkw7tm">
						<div class="css-1830rfa">
							<h4 class="css-1y0mank">안내</h4>
							<div class="css-1d3lw0b">
								<div class="css-dps5x9">
									<div class="css-1t0ax21" >이용안내</div>
									<c:forEach var="hotelInfoLists" items="${categoryContentMap}">
										<div class="css-l65sr1">
											<div class="css-1lcli59">
												<div class="title">${hotelInfoLists}</div>
												<div class="description">
													<div class="isBullet"></div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


</body>
</html>