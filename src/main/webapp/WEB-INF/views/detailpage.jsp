<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지 맵</title>
</head>
<body>


	<div id="map" style="width: 284px; height: 300px"></div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=85e3a2b784700813659ca3ae8da46d29&libraries=services"></script>
	<form name=frm id=frm method="get">
		<input type="hidden" name="unique_num"
			value="${'unique_numList.unique_num'}" /> <input type="hidden"
			name="address" value="${'addressList.address'}" />
	</form>
	<script src="js/detail_page_develop.js"></script>
</body>
</html>