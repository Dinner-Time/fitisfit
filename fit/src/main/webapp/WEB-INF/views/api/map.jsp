<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<title>피트다 피트!!</title>
	<!-- CSS ================================================== -->
	<!-- Themefisher Icon font -->
	<link rel="stylesheet" href="plugins/themefisher-font/style.css">
	<!-- bootstrap.min css -->
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
	<!-- Lightbox.min css -->
	<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
	<!-- animation css -->
	<link rel="stylesheet" href="plugins/animate/animate.css">
	<!-- Slick Carousel -->
	<link rel="stylesheet" href="plugins/slick/slick.css">
	<!-- Main Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<style type="text/css">
		section {
			min-height: 90vh;
		}

		#map {
			height: 80vh;
			width: 50vw;
		}
	</style>
</head>

<body>
	<!-- 페이지 로딩 효과 -->
	<div id="preloader">
		<div class='preloader'>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span>
		</div>
	</div>
	<!-- 페이지 로딩 효과 -->
	<jsp:include page="../home/header.jsp" />

	<section class="container-fluid p-5">
		<div class="row">
			<!-- 지도 로딩 -->
			<div id="map" class="col-lg-6 col-md-12 col-12"></div>
			<div id="partners" class="col-lg-6 col-md-12 col-12"></div>
		</div>
	</section>

	<!-- db에서 넘어온 자료 저장 -->
	<div id="partnerData" style="display: none;">
		<c:forEach var="partner" items="${list }">
			<div id="${partner.parId }">
				<span class="parName">${partner.parName }</span>
				<span class="parAddress">${partner.parAddress }</span>
				<span class="parPhone">${partner.parPhone }</span>
				<span class="parIntro">${partner.parIntro }</span>
				<span class="parPhoto">${partner.parPhoto }</span>
			</div>
		</c:forEach>
	</div>
	<!-- db에서 넘어온 자료 저장 -->

	<jsp:include page="../home/footer.jsp" />
	<!-- 자바 스크립트 -->
	<!-- Main jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<!-- Form Validation -->
	<script src="plugins/form-validation/jquery.form.js"></script>
	<script src="plugins/form-validation/jquery.validate.min.js"></script>
	<!-- Bootstrap4 -->
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Parallax -->
	<script src="plugins/parallax/jquery.parallax-1.1.3.js"></script>
	<!-- lightbox -->
	<script src="plugins/lightbox2/dist/js/lightbox.min.js"></script>
	<!-- Owl Carousel -->
	<script src="plugins/slick/slick.min.js"></script>
	<!-- filter -->
	<script src="plugins/filterizr/jquery.filterizr.min.js"></script>
	<!-- Smooth Scroll js -->
	<script src="plugins/smooth-scroll/smooth-scroll.min.js"></script>
	<!-- Custom js -->
	<script src="js/script.js"></script>
	<!-- For Map -->
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ugsxrg676w">
	</script>
	<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ugsxrg676w&submodules=geocoder"></script>
	<!-- Custom this Page -->
	<script>
		// ********** 여기서 부터 지도 생성 ********** 
		let currLoc; // 현재 위치의 좌표를 저장할 변수

		// 지도 옵션 : 확대, 축소 가능
		let mapOptions = {
			scaleControl: false,
			mapDataControl: false,
			zoom: 17 // 확대정도 : 높을 수록 크게 확대 된다.
		};

		let map = new naver.maps.Map('map', mapOptions);

		// 현재 위치 가져오기
		navigator.geolocation.getCurrentPosition(function (position) {
			// 현재 위치 초기화
			currLoc = new naver.maps.LatLng(position.coords.latitude, position.coords.longitude);
			// 현재 위치를 중심으로 지도를 로딩한다
			map.setCenter(currLoc);
			// 현재 위치에 마커 생성
			let currentMarker = new naver.maps.Marker({
				position: currLoc,
				map: map
			});
			naver.maps.Event.addListener(currentMarker, 'click', function (e) {
				$('#partners').text('현재위치')
			});
		}, function () {
			alert('error');
		});

		// 사용자 정의 컨트롤 이벤트 추가 -> 현재위치로 가는 버튼 생성
		let initBtn = '<button class="btn btn-primary">현재위치로</button>'; // 버튼
		// CustomControl설정
		let customCtrl = new naver.maps.CustomControl(initBtn, {
			position: naver.maps.Position.BOTTOM_RIGHT
		});

		naver.maps.Event.once(map, 'init_stylemap', function () {
			// 지도에 CustomControl추가
			customCtrl.setMap(map);
			// 버튼을 클릭하면 현재 위치로 이동한다
			naver.maps.Event.addDOMListener(customCtrl.getElement(), 'click', function () {
				map.setCenter(currLoc);
			});
		});

		let data = $('#partnerData');
		let marker;
		for (let i = 0; i < $(data).children().size(); i++) {
			let parAddress = $(data).children().eq(i).children().eq(1).text();
			console.log(); // 주소
			// 주소 -> 좌표
			naver.maps.Service.geocode({
				query: parAddress // 좌표를 구하고자 하는 주소
			}, function (status, response) {
				if (status === naver.maps.Service.Status.ERROR) {
					return alert('Something wrong!'); // 좌표를 구하는데 실패했을때
				}
				// 좌표 구하는데 성공
				marker = new naver.maps.Marker({
					position: new naver.maps.LatLng(response.v2.addresses[0].y, response.v2.addresses[0].x),
					map: map
				});

				naver.maps.Event.addListener(marker, 'click', function (e) {
					alert('good');
				});
			});

		}
	</script>
</body>

</html>