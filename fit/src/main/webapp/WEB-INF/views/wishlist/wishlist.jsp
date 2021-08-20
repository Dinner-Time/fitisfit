<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>피트다 피트!!</title>
	<!-- Mobile Specific Meta ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
		.custom-btn {
			background-color: #4343FE;
			border: none;
			transition: all .3s;
		}

		.custom-del:hover {
			background-color: #E50914;
		}

		.custom-go:hover {
			background-color: #00A170;
		}
	</style>
</head>

<body id="body">
	<!-- 페이지 로딩 효과 -->
	<div id="preloader">
		<div class='preloader'>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span>
		</div>
	</div>
	<!-- 페이지 로딩 효과 -->
	<jsp:include page="../home/header.jsp" />


	<section class="about" id="about">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="title text-center ">
						<h2>위시리스트</h2>
						<div class="border"></div>
					</div>
				</div>
				<!-- /section title -->

				<c:forEach var="wish" items="${list }">
					<!-- single blog post -->
					<article class="col-xl-3 col-lg-4 col-md-6 col-sm-12 clearfix ">
						<div class="card">
							<div class="post-item">
								<div class="media-wrapper">
									<!-- src="images/program/ + ${wish.proPhoto}" -->
									<img src="images/blog/post-1.jpg" alt="amazing caves coverimage" class="img-fluid">
								</div>

								<div class="content">
									<h4>
										${wish.proName }
									</h4>
									<p class="font-weight-bold">${wish.proSince } ~ <c:if test="">${wish.proPeriod}개월
										</c:if>
									</p>
									<p class="font-weight-bold">${wish.proPrice*(100 - wish.proSale3)*0.01}&#8361부터
									</p>
									<div class="d-flex align-items-center justify-content-end">
										<button class="btn btn-main custom-btn custom-go"
											data-id="${wish.proId}">등록하기</button>
										<div style="width: 5px"></div>
										<button class="btn btn-main custom-btn custom-del"
											data-id="${wish.proId}">비우기</button>
									</div>
								</div>
							</div>
						</div>
					</article>
					<!-- /single blog post -->
				</c:forEach>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->
	<form id="wishListForm" method="POST">
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
	<!-- Script for this Page -->
	<script>
		let form = $('#wishListForm');
		let proId = $(form).find('#proId');

		$('.custom-go').click(function () {
			formSubmit('', $(this).attr('data-id'))
		});
		$('.custom-del').click(function () {
			if(confirm('정말 삭제하시겠습니까?')){
				formSubmit('wisDelete.do', $(this).attr('data-id'));
			}
		});

		function formSubmit(action, value){
			$(form).attr('action', action);
			$(proId).val(value);
			$(form).submit();
		}
	</script>
</body>

</html>