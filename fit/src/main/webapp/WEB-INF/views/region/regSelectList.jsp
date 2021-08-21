<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="description" content="Bingo One page parallax responsive HTML Template ">
		<meta name="author" content="Themefisher.com">

		<title>FitIsFit REGION</title>

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

		<link rel="stylesheet" href="plugins/themefisher-font/style.css">
		<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
		<link rel="stylesheet" href="plugins/animate/animate.css">
		<link rel="stylesheet" href="plugins/slick/slick.css">
		<link rel="stylesheet" href="css/style.css?after">

		<!-- 폰트 시작 -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
		<!-- 폰트 끝 -->


		<style type="text/css">
			.custom-btn {
				letter-spacing: 1px;
				border-radius: 40px;
				width: 100%;
				height: 80px;
			}

			.custom-border {
				height: 2px;
				margin: 20px auto 20px;
				position: relative;
				width: 200px;
				background: #4343FE;
			}

			h1 {
				font-family: 'Gowun Dodum', sans-serif;
				color: white;
				text-shadow: 5px 5px 5px black;
			}

			.custom-title {
				background-image: url('images/region/Seoul.jpg');
				background-size: cover;
				background-position: center;
				height: 40vh;
				position: absolute;
				top: 10vh;
				left: 0;
			}

			td {
				width: 1250px;
				height: 300px;
			}
		</style>

	</head>

<body id="body">
	<jsp:include page="../home/header.jsp" />
	<!-- 페이지 로딩 효과 -->
	<div id="preloader">
		<div class='preloader'>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span>
		</div>
	</div>
	<!-- 페이지 로딩 효과 -->

	<section class="portfolio section-sm" id="portfolio">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12 custom-title d-flex align-items-center justify-content-center">
					<h1>${regName}</h1>
				</div>
				<div style="height: calc(50vh - 150px);"></div>
			</div>
			<div class="row">
				<div class="col-2"></div>
				<div class="portfolio-filter col-8">
					<div class="row">
						<c:forEach var="category" items="${catList }" varStatus="status">
							<div class="col-2" style="margin-bottom: 5px;">
								<button class="btn custom-btn" style="font-size: 24px;"
									onclick="showPrograms(${status.count})">${category.catName }</button>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div id="programs" class="row">
				<c:forEach var="pro" items="${proList }">
					<article class="col-3" data-catId="${pro.proCatId}">
						<div class="post-item">
							<div class="media-wrapper">
								<img src="${pro.proPhoto }" alt="Program Photo" class="img-fluid">
							</div>
							<div class="content">
								<h3>
									<a href="#">${pro.proName }</a>
								</h3>
								<p>${pro.proDesc }</p>
								<p>${pro.proSince } ~ ${pro.proPeriod }개월</p>
								<a class="custom-btn" href="single-post.html">${pro.proPrice*(100 -
									pro.proSale3)*0.01}&#8361부터</a>
							</div>
						</div>
					</article>
				</c:forEach>
			</div>
		</div>

	</section>
	<!-- End section -->

	<jsp:include page="/WEB-INF/views/home/footer.jsp" />

	<script src="plugins/jquery/jquery.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
	<script src="plugins/google-map/gmap.js"></script>

	<script src="plugins/form-validation/jquery.form.js"></script>
	<script src="plugins/form-validation/jquery.validate.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="plugins/parallax/jquery.parallax-1.1.3.js"></script>
	<script src="plugins/lightbox2/dist/js/lightbox.min.js"></script>
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/filterizr/jquery.filterizr.min.js"></script>
	<script src="plugins/smooth-scroll/smooth-scroll.min.js"></script>
	<script src="js/script.js"></script>

	<script type="text/javascript">
		let programs = $('#programs');
		function showPrograms(n) {
			$(programs).slideUp(400, function(){
				programs.children().hide();
				for(let i =0; i<programs.children().length; i++){
					if($(this).children().eq(i).attr('data-catId') == n){
						$(this).children().eq(i).show()
					}
				}
				$(this).slideDown(400);
			});
		}
	</script>

</body>

</html>