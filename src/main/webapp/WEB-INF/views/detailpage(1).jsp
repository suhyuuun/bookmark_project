<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="javax.servlet.annotation.WebServlet"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
String lat = request.getParameter("latitude");
String lng = request.getParameter("longitude");
%>
<title>상세페이지</title>
<link href="css/main.css" type="text/css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
<link href="css/main.css" type="text/css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/edd4d6d779.js" crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=85e3a2b784700813659ca3ae8da46d29"></script>
</head>
<body>
	<div class="header container col-12 colmun-row mt-4">
		<div class="row">
			<div class="logo col-3">
				<a href="index.do"><img src="images/logo2.png" id="logo_img" /></a>
			</div>
			<div class="header-menu column-row col-9">
				<div class="row">
					<div class="login mt-3">
						<div class="row">
							<div class="black col-8"></div>
							<div class="login-button col-4">
								<span>
									<button type="button" class="btn btn-secondary" id="login"
										value="로그인" onclick="login();">로그인</button>
									<button type="button" class="btn btn-secondary" id="sign_up"
										value="회원가입" onclick="sign_up();">회원가입</button>
								</span>
							</div>
						</div>
					</div>
					<nav
						class="navbar navbar-expand-lg navbar-mainmanu bg-warning mt-3">
						<div class="container-fluid">
							<div class="collapse navbar-collapse" id="navbarColor03">
								<ul class="navbar-nav me-auto">
									<li class="nav-item"><a class="nav-link active"
										href="index.do">Home<span class="visually-hidden">(current)</span>
									</a></li>
									<li class="nav-item"><a class="nav-link"
										href="team_vita500.do">TeamVita500</a></li>
									<li class="nav-item"><a class="nav-link"
										href="curation_page.do">Curation</a></li>
									<li class="nav-item"><a class="nav-link"
										href="one_km_map.do">반경1km</a></li>
									<li class="nav-item"><a class="nav-link"
										href="magazine_page.do">Magazine</a></li>
									<li class="nav-item"><a class="nav-link" href="my_page.do">My
											Page</a></li>
								</ul>
								<form class="d-flex">
									<input class="form-control me-sm-4" type="search"
										placeholder="검색어를 입력하세요">
									<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
								</form>
							</div>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<div class="detailpage" id="detailpage">
		<div class="detailpage">
			<div id="staticMap" style="width: 350px; height: 350px"></div>
		</div>
	</div>
	<script>
		var lat =<%=lat%>;
		var lng =<%=lng%>;
	</script>
	<script src="js/main.js"></script>
	<script src="js/detail_page.js"></script>
</body>
</html>