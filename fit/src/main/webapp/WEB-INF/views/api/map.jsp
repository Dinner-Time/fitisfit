<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>간단한 지도 표시하기</title>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ugsxrg676w"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ugsxrg676w&submodules=geocoder"></script>
</head>
<body>
	<div id="map" style="width: 100%; height: 400px;"></div>

	<script>
		
		var mapOptions = {
				scaleControl: false,
			    logoControl: false,
			    mapDataControl: false,
			    zoomControl: true,
			center : new naver.maps.LatLng(37.3595704, 127.105399),
			zoom : 10
		};

		var map = new naver.maps.Map('map', mapOptions);
		
		var marker = new naver.maps.Marker({
		    position: new naver.maps.LatLng(37.3595704, 127.105399),
		    map: map
		});
		
		var contentString = [
		    '<div class="iw_inner">',
		    '   <h3>서울특별시청</h3>',
		    '   <p>서울특별시 중구 태평로1가 31 | 서울특별시 중구 세종대로 110 서울특별시청<br>',
		    '       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
		    '   </p>',
		    '</div>'
		].join('');
		
		var infowindow = new naver.maps.InfoWindow({
		    content: contentString
		});
		
		naver.maps.Event.addListener(marker, 'click', function(e) {
			if (infowindow.getMap()) {
		        infowindow.close();
		    } else {
		        infowindow.open(map, marker);
		    }
		});
		
		naver.maps.Service.geocode({ query: '대구광역시 수성구 화랑로 34길 31' }, function(status, response) {
		    if (status === naver.maps.Service.Status.ERROR) {
		        return alert('Something wrong!');
		    }
		    new naver.maps.Marker({
			    position: new naver.maps.LatLng(response.v2.addresses[0].y, response.v2.addresses[0].x),
			    map: map
			});
		});
	</script>
</body>
</html>