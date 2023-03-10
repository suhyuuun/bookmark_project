<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.servlet.annotation.WebServlet"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<%
String lat = request.getParameter("latitude");
String lng = request.getParameter("longitude");
%>
<title>Jimat - Food choice for you</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous" />
<script src="https://kit.fontawesome.com/edd4d6d779.js"
	crossorigin="anonymous"></script>

<link href="css/main.css" type="text/css" rel="stylesheet" />
<link href="css/shop_detail.css" type="text/css" rel="stylesheet" />
<link href="css/review.css" type="text/css" rel="stylesheet" />

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=952441bca7c2877c20d98599bb8b06bd&amp;libraries=LIBRARY"></script>
<script charset="UTF-8"
	src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.8/kakao.js"></script>
<script>
$(document).ready(function(){
	$('#bookmark').attr("action","").submit();
});
</script>
</head>
<body>
	<div class="body-wrap container col-12 column-row">
		<div class="row">
			<div data-include-path="main_menu.do"
				class="header container d-flex col-12 mt-4" id="main_menu"></div>
			<script>
				window.addEventListener("load", function() {
					var allElements = document.getElementsByTagName("*");
					Array.prototype.forEach.call(allElements,
							function(el) {
								var includePath = el.dataset.includePath;
								if (includePath) {
									var xhttp = new XMLHttpRequest();
									xhttp.onreadystatechange = function() {
										if (this.readyState == 4
												&& this.status == 200) {
											el.outerHTML = this.responseText;
										}
									};
									xhttp.open("GET", includePath, true);
									xhttp.send();
								}
							});
				});
			</script>
		</div>
		<div class="row">
			<div class="shop-detail-wrap col-12 mt-2 column-row"
				id="shop-detail-wrap">
				<div class="row">
					<div class="shop-detail-header container d-flex">
						<div class="col-9 container shop-left column-row p-2 ms-0 me-0">
							<div class="shop-main-image">
								<img src="images/shop-main1.jpg" id="shop-main-image" />
							</div>
							<div class="shop-info-body column-row p-4">
								<div class="row">
									<div class="shop-info d-flex">
										<div class="shop-name col-7 pe-3">
											<p id="shop-name">????????? ??????</p>
											<!-- ????????????-->
										</div>
										<div class="col-3 shop-category">
											<p id="shop-category">?????? / ??????</p>
											<!-- 1???/2??? ????????????-->
										</div>
										<div class="d-flex col-2">
											<div>
												<p id="shop-rating">4.0</p>
											</div>
											<div class="bookmark">
												<form name="bookmark" method=GET>
													<input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off" /> 
													<label class="btn btn-bookmark" for="btncheck1">
													<i class="fa-solid fa-heart fa-2x"></i></label>
													
												</form>
											</div>
										</div>
									</div>
								</div>
								<div class="shop-info-detail d-flex mt-1">
									<div class="shop-address">
										<p id="shop-address">?????? ?????? ???????????? 62-29 (???)04546</p>
										<p id="shop-phone">02-2265-0151</p>
									</div>
									<div class="shop-etc">
										<p id="shop-close">????????? : ?????? ?????????</p>
										<p id="shop-etc">????????????, ????????????, ????????????</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-4 shop-right column-row p-2 mx-0">
							<!-- ????????? ????????? ????????? div ????????? -->
							<div class="shop-map" id="staticMap"
								style="width: 284px; height: 300px"></div>
							<div class="shop-menu column-low mt-3 p-3" id="shop-menu">
								<div class="row">
									<p id="shop-menu">??????</p>
								</div>
								<div class="d-flex">
									<div class="col-9" id="shop-menu-detail">
										<p id="shop-menu-detail">???????????? (1??????)(150g)</p>
										<p id="shop-menu-detail">??????????????????</p>
										<p id="shop-menu-detail">????????????????????????</p>
										<p id="shop-menu-detail">??????</p>
										<p id="shop-menu-detail">??????????????????</p>
										<p id="shop-menu-detail">?????????</p>
										<p id="shop-menu-detail">9?????????</p>
										<p id="shop-menu-detail">????????????</p>
										<p id="shop-menu-detail">?????????</p>
									</div>
									<div class="col-3" id="shop-menu-price">
										<p id="shop-menu-price">16,000???</p>
										<p id="shop-menu-price">16,000???</p>
										<p id="shop-menu-price">16,000???</p>
										<p id="shop-menu-price">16,000???</p>
										<p id="shop-menu-price">16,000???</p>
										<p id="shop-menu-price">15,000???</p>
										<p id="shop-menu-price">15,000???</p>
										<p id="shop-menu-price">15,000???</p>
										<p id="shop-menu-price">0,000???</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row m-0">
			<div data-include-path="review.do"
				class="container d-flex col-12 mt-4" id="review"></div>
			<script>
				window.addEventListener("load", function() {
					var allElements = document.getElementsByTagName("*");
					Array.prototype.forEach.call(allElements,
							function(el) {
								var includePath = el.dataset.includePath;
								if (includePath) {
									var xhttp = new XMLHttpRequest();
									xhttp.onreadystatechange = function() {
										if (this.readyState == 4
												&& this.status == 200) {
											el.outerHTML = this.responseText;
										}
									};
									xhttp.open("GET", includePath, true);
									xhttp.send();
								}
							});
				});
			</script>
		</div>
		<script>
			var lat =
		<%=lat%>
			;
			var lng =
		<%=lng%>
			;
		</script>
		<script src="js/main.js"></script>
		<script src="js/detail_page.js"></script>
	</div>
</body>
</html>
