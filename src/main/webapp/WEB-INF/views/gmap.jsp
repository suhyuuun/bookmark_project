<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function getLocation() {
		if (navigator.geolocation) { // GPS를 지원하면
			navigator.geolocation.getCurrentPosition(function(position) {
				location.href = "https://google.com/maps/place/"
						+ position.coords.latitude + ","
						+ position.coords.longitude;
			}, function(error) {
				console.error(error);
			}, {
				enableHighAccuracy : false,
				maximumAge : 0,
				timeout : Infinity
			});
		} else {
			alert('GPS를 지원하지 않습니다');
		}
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		getLocation();
	</script>
</body>
</html>