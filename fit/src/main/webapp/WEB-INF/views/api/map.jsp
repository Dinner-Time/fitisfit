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
		}

		#partners {
			height: 80vh;
			overflow-y: hidden;
			transition: all .3s;
		}

		.custom-border {
			height: 1px;
			margin: 20px auto 20px;
			position: relative;
			width: 100%;
			background: gray;
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
			<!-- 파트너사 정보 -->
			<div id="partners" class="col-lg-6 col-md-12 col-12">
				<section class="about-2 section" id="about">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<div id="partnerName">업체명</div>
							</div>
							<div class="col-12">
								<img src="images/about/" id="partnerPhoto" class="img-fluid" alt="">
							</div>
							<div class="col-12">
								<div class="custom-border"></div>
								<br>
								<ul class="checklist">
									<li id="partnerAddress">업체 주소</li>
									<li id="partnerPhone">업체 전화번호</li>
									<li id="partnerIntro">업체 소개</li>
								</ul>
								<button id="partnerSubmit" class="btn btn-main mt-20">프로그램 보러가기</button> <br>
								<br>
								<div class="custom-border"></div>
							</div>
						</div>
						<!-- End row -->
					</div>
					<!-- End container -->
				</section>
			</div>
		</div>
	</section>

	<!-- db에서 넘어온 자료 저장 -->
	<div id="partnerData" style="display: none;">
		<c:forEach var="partner" items="${list }">
			<div>
				<span>${partner.parName }</span>
				<span>${partner.parAddress }</span>
				<span>${partner.parPhone }</span>
				<span>${partner.parIntro }</span>
				<span>${partner.parPhoto }</span>
				<span>${partner.parId }</span>
			</div>
		</c:forEach>
	</div>
	<!-- db에서 넘어온 자료 저장 -->

	<!-- db로 보내는 form -->
	<form id="partnerFrm" action="proDetail.do" method="post">
		<!-- name을 parId로 변경 필수!! -->
		<input type="hidden" id="proId" name="proId">
	</form>

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
		// 파트너의 정보가 들어갈 위치
		let partners = $('#partners');

		// ********** 여기서 부터 지도 생성 ********** 
		let currLoc; // 현재 위치의 좌표를 저장할 변수

		// 지도 옵션
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
			// 현재 위치를 중심으로 지도를 로딩
			map.setCenter(currLoc);
			// 현재 위치에 마커 생성
			let currentMarker = new naver.maps.Marker({
				position: currLoc,
				map: map
			});
			// 현재 위치에 생성된 마커 클릭 이벤트
			naver.maps.Event.addListener(currentMarker, 'click', function (e) {
				$(partners).hide('slow', function () {
					$(partners).attr('id', 'partners');
					$(partners).find('#partnerName').html('현재위치');
					$(partners).find('#partnerPhoto').attr('src', 'images/about/');
					$(partners).find('#partnerAddress').html('업체 주소');
					$(partners).find('#partnerIntro').html('업체 전화번호');
					$(partners).find('#partnerPhone').html('업체 소개');
					$(partners).show('slow');
				});

			});
		}, function () {
			// 현재 위치를 가져오는데 실패했을경우
			alert('error');
		});

		// 사용자 정의 컨트롤 이벤트 추가 -> 현재위치로 가는 버튼 생성
		let initBtn = '<button class="btn btn-primary">현재위치로</button>'; // 버튼
		// CustomControl설정
		let customCtrl = new naver.maps.CustomControl(initBtn, {
			position: naver.maps.Position.BOTTOM_RIGHT // 지도 오른쪽 아래
		});

		naver.maps.Event.once(map, 'init_stylemap', function () {
			// 지도에 CustomControl추가
			customCtrl.setMap(map);
			// 버튼을 클릭하면 현재 위치로 이동한다
			naver.maps.Event.addDOMListener(customCtrl.getElement(), 'click', function () {
				map.setCenter(currLoc);
				map.setZoom(17);
			});
		});

		// db에서 가져온 데이터활용 
		let data = $('#partnerData');
		let marker;
		for (let i = 0; i < $(data).children().size(); i++) {
			let parName = $(data).children().eq(i).children().eq(0).text(); // 이름
			let parAddress = $(data).children().eq(i).children().eq(1).text(); // 주소
			let parPhone = $(data).children().eq(i).children().eq(2).text(); // 번호
			let parIntro = $(data).children().eq(i).children().eq(3).text(); // 소개
			let parPhoto = $(data).children().eq(i).children().eq(4).text(); // 사진
			let parId = $(data).children().eq(i).children().eq(5).text(); // 식별번호

			let parInfo = $('<div />');

			$(parInfo).append(parName, parAddress, parPhone, parIntro, parPhoto, parId);

			console.log(parInfo);
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
					$(partners).hide('slow', function () {
						$(partners).attr('id', parId);
						$(partners).find('#partnerName').html(parName);
						$(partners).find('#partnerPhoto').attr('src', 'images/about/about-2.png'); //  + parPhoto
						$(partners).find('#partnerAddress').html(parAddress);
						$(partners).find('#partnerIntro').html(parIntro);
						$(partners).find('#partnerPhone').html(parPhone);
						$(partners).show('slow');
					});
				});
			});

			// 프로그램 더보기
			$('#partnerSubmit').click(function () {
				if($(partners).attr('id') == "partners"){
					alert('잘못된 업체입니다. 다시 한번 확인해주세요');
				} else{
					$('#partnerFrm').find('#proId').val($(partners).attr('id'));
					$('#partnerFrm').submit();
				}
			});
		}
	</script>
</body>

</html>