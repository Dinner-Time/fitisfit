<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <title>피트다 피트!!</title>

   <!-- CSS ================================================== -->
   <!-- Favicon -->
   <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
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

   <!-- 폰트 시작 -->
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
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
		<!-- container-fluid -->
		<div class="container-fluid">
			<!-- title(카테고리 이름) -->
			<div class="row">
				<div class="col-12 custom-title d-flex align-items-center justify-content-center">
					<h1>${catName}</h1>
				</div>
				<div style="height: calc(50vh - 150px);"></div>
			</div>
			<!-- title(카테고리 이름) -->
		</div>
		<!-- container-fluid -->
		<!-- container -->
		<div class="container">
			<div class="row">
				<div class="portfolio-filter">
					<div class="row">
						<c:forEach var="region" items="${regList }" varStatus="status">
							<div class="col-xl-2 col-lg-3 col-md-4 col-6" style="margin-bottom: 5px;">
								<button class="btn custom-btn" style="font-size: 24px;"
									onclick="showPrograms(${status.count})">${region.regName }</button>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div id="programs" class="row">
				<c:forEach var="pro" items="${proList }">
					<article class="col-lg-3 col-md-4 col-sm-6 col-12" data-regId="${pro.parRegId}">
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
								<a class="custom-btn pro-submit" data-proId="${pro.proId}" style="cursor: pointer;">${pro.proPrice*(100 -
									pro.proSale3)*0.01}&#8361부터</a>
							</div>
						</div>
					</article>
				</c:forEach>
			</div>
			<!-- 높이 맞추기(없을경우 footer가 위로 올라온다) -->
			<div style="min-height: 10vh;"></div>
		</div>
		<!-- container -->
	</section>
	<!-- End section -->

	<form id="frm" action="programDetailUser.do">
		<input type="hidden" name="proId">
	</form>

   <jsp:include page="/WEB-INF/views/home/footer.jsp" />

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
	<!-- Custom for this Page -->
	<script type="text/javascript">

		// 선택한 카테고리에 해당하는 프로그램만 보여주는 함수
		// db에서 모든 프로그램을 가져와 regId가 내가 선택한 버튼의 regId와 같은 것만 보여준다.
		let programs = $('#programs');
		function showPrograms(n) {
			$(programs).slideUp(400, function () {
				programs.children().hide();
				for (let i = 0; i < programs.children().length; i++) {
               console.log($(this).children().eq(i).attr('data-regId'));
					if ($(this).children().eq(i).attr('data-regId') == n) {
						$(this).children().eq(i).show()
					}
				}
				$(this).slideDown(400);
			});
		}

		// 해당 프로그램으로 이동하는 함수
		let form = $('#frm');
		$('.pro-submit').click(function(){
			let proId = $(this).attr('data-proId');
			$(form).find('input').val(proId)
			$(form).submit();
		});
	</script>

</body>

</html>