<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>지도</h3>
	<div style="width: 500px; height: 400px;" id="map"></div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb47c5ab2a62810712d005d5bf9eabff"></script>

	<script>
		var mapContainer = document.getElementById('map'),
		mapOption = {
			center : new kakao.maps.LatLng(37.2681,127.0051),
			level : 3
		};
		var map = new kakao.maps.Map(mapContainer, mapOption);
		var markerPosition = new kakao.maps.LatLng(37.2681,127.0051);
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});
		marker.setMap(map);
	</script>
</body>
</html>