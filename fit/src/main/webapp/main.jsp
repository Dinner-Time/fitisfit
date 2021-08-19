<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>메인</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">

<!-- 폰트 시작 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<!-- 폰트 끝 -->

<style type="text/css">
.container-nav {
	position: absolute;
	left: 0;
	right: 0;
	top: 50%;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
	left: 0;
	right: 0;
	top: 40%;
	-webkit-transform: translateY(-50%);
}
.reg-cat-title {
	font-family: 'Black Han Sans', sans-serif;
	font-size: 70px;
	text-align: center;
	color: white;
	text-shadow: 5px 5px 5px black;
	filter: brightness(100%);
}
.reg-cat-detail {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 25px;
	text-align: center;
	color: white;
	text-shadow: 2px 2px 2px black;
	vertical-align: bottom;
	filter: brightness(100%);
	vertical-align: bottom;
}
.service-item {
	position: relative;
	overflow: hidden;
	background-position: center;
	object-fit: cover;
	cursor: pointer;
	height: 300px;
}
.service-item .filter {
	background-color: gray;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	opacity: .4;
	transition: all .5s;
}
.btn-main {
	background: #4343fe;
}
.btn-main:hover {
	background: white;
	border-color: #4343fe;
	color: black;
}

.testimonial {
	background: #4343fe;
}
.service-item:hover .filter {
	transition: all .5s;
	opacity: 0;
}
.custom-nav {
	border: 1px solid #4343FE;
	border-radius: 20px;
	position: absolute;
	left: 50%;
	top: 27%;
	transform: translate(-50%, -50%);
}
li {
	font-family: 'Gowun Dodum', sans-serif;
	font-size: 20px;
	margin-left: 10px;
	margin-right: 10px;
}
h2 {
	font-family: 'Gowun Dodum', sans-serif;
}

#toc-content {
  display: none;
}

</style>

<script>
  function openCloseToc() {
    if(document.getElementById('toc-content').style.display === 'block') {
      document.getElementById('toc-content').style.display = 'none';
      document.getElementById('toc-toggle').innerText = '더보기';
    } else {
      document.getElementById('toc-content').style.display = 'block';
      document.getElementById('toc-toggle').innerText = '접기';
    }
  }
</script>

</head>
<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<br><br><br><br><br><br><br><br>
<div class="container">
    <!-- 검색바 시작 -->
    <nav class="navbar navbar-expand-lg navbar-light custom-nav" style="z-index: 999;">
      <div class="collapse navbar-collapse" id="navigation">
        <ul class="navbar-nav ml-auto text-center">
          <li class="nav-item dropdown active">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
              data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              지역
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">서울</a>
              <a class="dropdown-item" href="#">인천</a>
              <a class="dropdown-item" href="#">대전</a>
              <a class="dropdown-item" href="#">대구</a>
              <a class="dropdown-item" href="#">울산</a>
              <a class="dropdown-item" href="#">부산</a>
              <a class="dropdown-item" href="#">광주</a>
              <a class="dropdown-item" href="#">경기</a>
              <a class="dropdown-item" href="#">강원</a>
              <a class="dropdown-item" href="#">충청</a>
              <a class="dropdown-item" href="#">경상</a>
              <a class="dropdown-item" href="#">전라</a>
              <a class="dropdown-item" href="#">제주</a>
            </div>
          </li>
          <li class="nav-item dropdown active">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
              data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              카테고리
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">헬스</a>
              <a class="dropdown-item" href="#">요가</a>
              <a class="dropdown-item" href="#">필라테스</a>
              <a class="dropdown-item" href="#">기타</a>
            </div>
          </li>
          <li class="nav-item dropdown active">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
              data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              센터
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">파워짐</a>
              <a class="dropdown-item" href="#">샨띠요가센터</a>
            </div>
          </li>
          <li class="nav-item dropdown active">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
              data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              프로그램
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">파워짐 상설 헬스 프로그램</a>
              <a class="dropdown-item" href="#">샨티요가센터 상반기 그룹요가</a>
            </div>
          </li>
          <li>
          	<button type="button" class="btn btn-outline-primary">검색</button>
          </li>
          <li>
          	<button type="button" class="btn btn-primary">내 주변 찾기</button>
          </li>
        </ul>
      </div>
    </nav>
    <!-- 검색바 끝 -->
  </div>
  
  <!-- 지역별 메뉴 시작 -->
	<section class="service-2 section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<!-- section title -->
					<div class="title text-center">
						<h2>지역별</h2>
						<div class="border"></div>
					</div>
					<!-- /section title -->
				</div>
				<div class="col-md-12">
				<!-- START ROW -->
					<div class="row text-center">
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="service-item" style="background: url('images/region/Seoul.jpg');">
								<div class="filter"></div>
								<p class="reg-cat-title">서울</p>
								<p class="reg-cat-detail">XX여 개의 센터</p>
							</div>
						</div>
						<!-- END COL -->
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="service-item" style="background: url('images/region/Incheon.jpg');">
								<div class="filter"></div>
								<p class="reg-cat-title">인천</p>
								<p class="reg-cat-detail">XX여 개의 센터</p>
							</div>
						</div>
						<!-- END COL -->
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="service-item" style="background: url('images/region/Daejeon.jpg');">
								<div class="filter"></div>
								<p class="reg-cat-title">대전</p>
								<p class="reg-cat-detail">XX여 개의 센터</p>
							</div>
						</div>
						<!-- END COL -->
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="service-item" style="background: url('images/region/Daegu.jpg');">
								<div class="filter"></div>
								<p class="reg-cat-title">대구</p>
								<p class="reg-cat-detail">XX여 개의 센터</p>
							</div>
						</div>
						<!-- END COL -->
					</div>
					<!-- END ROW -->
					
					<div align="center">
						<button type="button" id="toc-toggle" class="btn btn-main mt-20" onclick="openCloseToc()">더보기</button>
						
					<!-- START ROW -->
						<div id="toc-content" class="row text-center">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="service-item" style="background: url('images/region/Seoul.jpg');">
									<div class="filter"></div>
									<p class="reg-cat-title">서울</p>
									<p class="reg-cat-detail">XX여 개의 센터</p>
								</div>
							</div>
							<!-- END COL -->
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="service-item" style="background: url('images/region/Incheon.jpg');">
									<div class="filter"></div>
									<p class="reg-cat-title">인천</p>
									<p class="reg-cat-detail">XX여 개의 센터</p>
								</div>
							</div>
							<!-- END COL -->
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="service-item" style="background: url('images/region/Daejeon.jpg');">
									<div class="filter"></div>
									<p class="reg-cat-title">대전</p>
									<p class="reg-cat-detail">XX여 개의 센터</p>
								</div>
							</div>
							<!-- END COL -->
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="service-item" style="background: url('images/region/Daegu.jpg');">
									<div class="filter"></div>
									<p class="reg-cat-title">대구</p>
									<p class="reg-cat-detail">XX여 개의 센터</p>
								</div>
							</div>
							<!-- END COL -->
						</div>
						<!-- END ROW -->
					</div>
				</div>
			</div>
			<!-- 지역별 메뉴 끝 -->
			<br> <br>
			<hr>
			<br> <br>
			<!-- 카테고리별 메뉴 시작 -->
			<div class="row">
				<div class="col-12">
					<!-- section title -->
					<div class="title text-center">
						<h2>카테고리별</h2>
						<div class="border"></div>
					</div>
					<!-- /section title -->
				</div>
				<div class="col-md-12">
					<div class="row text-center">
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="service-item" style="background: url('images/category/Gym.jpg');">
								<div class="filter"></div>
								<p class="reg-cat-title">헬스</p>
								<p class="reg-cat-detail">XX여 개의 센터</p>
							</div>
						</div>
						<!-- END COL -->
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="service-item" style="background: url('images/category/Yoga.jpg');">
								<div class="filter"></div>
								<p class="reg-cat-title">요가</p>
								<p class="reg-cat-detail">XX여 개의 센터</p>
							</div>
						</div>
						<!-- END COL -->
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="service-item">
								<h4>필라테스</h4>
								<p>XX여 개의 센터</p>
							</div>
						</div>
						<!-- END COL -->
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="service-item">
								<h4>기타</h4>
								<p>XX여 개의 센터</p>
							</div>
						</div>
						<!-- END COL -->
					</div>
					<div align="center">
						<button type="button" class="btn btn-main mt-20">더보기</button>
					</div>
				</div>
			</div>
			<!-- 카테고리별 메뉴 끝 -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->

	<!-- 인기 프로그램 시작 -->
	<section class="testimonial section" id="testimonial">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!-- testimonial wrapper -->
					<div class="testimonial-slider">
						<!-- testimonial single -->
						<div class="item text-center">
							<div align="center">
								<img src="images/program/GymProgram1.jpg" class="img-fluid" alt="">
							</div>
							<br>
							<div class="client-meta">
								<h3>파워짐 상설 헬스 프로그램</h3>
								<span>파워짐</span>
							</div>
						</div>
						<!-- /testimonial single -->

						<!-- testimonial single -->
						<div class="item text-center">
							<div align="center">
								<img src="images/program/YogaProgram1.jpg" class="img-fluid" alt="">
							</div>
							<br>
							<div class="client-meta">
								<h3>샨티요가센터 상반기 그룹요가</h3>
								<span>샨티요가센터</span>
							</div>
						</div>
						<!-- /testimonial single -->

						<!-- testimonial single -->
						<div class="item text-center">
							<div class="client-thumb">
								<img src="images/client-logo/clients-3.jpg" class="img-fluid"
									alt="">
							</div>
							<br>
							<div class="client-meta">
								<h3>인기 프로그램3</h3>
								<span>센터3</span>
							</div>
						</div>
						<!-- /testimonial single -->
					</div>
				</div>
				<!-- end col lg 12 -->
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- 인기 프로그램 끝 -->

	<jsp:include page="/WEB-INF/views/home/footer.jsp" />

	<!-- 자바 스크립트 -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<script src="plugins/form-validation/jquery.form.js"></script>
	<script src="plugins/form-validation/jquery.validate.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="plugins/parallax/jquery.parallax-1.1.3.js"></script>
	<script src="plugins/lightbox2/dist/js/lightbox.min.js"></script>
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/filterizr/jquery.filterizr.min.js"></script>
	<script src="plugins/smooth-scroll/smooth-scroll.min.js"></script>
	<script src="js/script.js"></script>
</body>
</html>