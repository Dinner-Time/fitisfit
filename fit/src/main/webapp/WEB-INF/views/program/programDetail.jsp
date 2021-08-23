<!-- 파트너 - 프로그램 상세보기 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>프로그램 관리 | Fit is Fit</title>

<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

<style type="text/css">
.hover-me a {
	font-size: 15px;
}

.hover-me a:hover {
	font-size: 0;
}

.hover-me a:hover:before {
	content: '${detailList[0].proPeople }/${detailList[0].proMaxPeople }';
	font-size: 15px;
}

.list:before {
	content: "\f375";
	font-family: "themefisher-font";
	opacity: 1;
	border-radius: 50%;
	padding: 2px 8px;
	font-size: 20px;
	color: #4343fe;
}
</style>
</head>

<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />

	<!-- blog details part start -->
	<section class="blog-details section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<img class="card-img-top img-thumbnail" src="images/program/${detailList[0].proPhoto }"
								alt="program image" style="width: 100%">
						</div>
						<div class="card-footer">
							<form id="photoFrm" name="photoFrm" action="proUpdatePhoto.do" method="post" enctype="multipart/form-data">
								<input type="file" id="proPhoto" name="proPhoto"><br>
								<input type="hidden" id="proId" name="proId" value="${detailList[0].proId}">
								<button type="submit" class="btn btn-primary" style="float: right;">수정</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<article class="post">
						<div class="card">
							<div class="card-header">
								<h1>${detailList[0].proName}</h1>
							</div>
							<div class="card-body">
								<p>${detailList[0].proDesc }</p>
							</div>
						</div>
						<br />
						<!-- Post Content -->
						<div class="post-content">
							<div class="card">
								<div class="card-body">
									<div class="custom-border">
										<ul class="checklist">
											<li class="list" style="color: gray;">카테고리 : ${detailList[0].catName }</li>
										</ul>
									</div>
								</div>
							</div>
							<br />
							<div class="card">
								<div class="card-body">
									<div class="custom-border">
										<ul class="checklist">
											<li class="list" style="color: gray;">강사 :
												${detailList[0].insName }</li>
										</ul>
									</div>
								</div>
							</div>
							<br />
							<div class="card">
								<div class="card-body">
									<div class="custom-border">
										<ul class="checklist">
											<li class="list" style="color: gray;">업체 :
												${detailList[0].parName }</li>
										</ul>
									</div>
								</div>
							</div>
							<br />
							<div class="card">
								<div class="card-body">
									<div class="custom-border">
										<ul class="checklist">
											<li class="list" style="color: gray;">기간 :
												${detailList[0].proSince } ~ <c:if
													test="${detailList[0].proPeriod == 0 }">상설
												</c:if> 
												<c:if test="${detailList[0].proPeriod != 0 }">
													기간: ${detailList[0].proPeriod}개월
												</c:if>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<br />
							<div class="card">
								<div class="card-body">
									<div class="custom-border">
										<ul class="checklist">
											<li class="list" style="color: gray;">등록인원 :
												${detailList[0].proPeople } / ${detailList[0].proMaxPeople }</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>
			</div>
		</div>
	</section>

	<form action="" method="POST">
		<input type="hidden" name="" value="">
	</form>

	<jsp:include page="/WEB-INF/views/home/footer.jsp" />

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
	<script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
	<script>
		let session = "<c:out value='${session}' />"
		let form = $('form');
		let input = $(form).find('input');

		let proId = "<c:out value='${detailList[0].proId }' />";
		let insId = "<c:out value='${detailList[0].insId }' />";
		let parId = "<c:out value='${detailList[0].proParId }' />";

		let canEnroll = '<c:out value="${detailList[0].proPeople }"/>' == '<c:out value="${detailList[0].proMaxPeople }"/>';

		function sessionCheck() {
			if (session == '') {
				alert('로그인이 필요한 서비스입니다.');
				location.href = 'loginForm.do';
				return false;
			}
			return true;
		}

		function enrollCheck() {
			if (canEnroll) {
				alert('등록 가능 인원이 모두 찼습니다.')
				return false;
			}
			return true;
		}

		$('#insSelect').click(function() {
			$(form).attr('action', 'insSelect.do');
			$(input).attr('name', "insId").val(insId);
			$(form).submit();
		});

		$('#parSelect').click(function() {
			$(form).attr('action', 'memPartnerSelect.do');
			$(input).attr('name', "parId").val(parId);
			$(form).submit();
		});

		$('#goWishList').click(function() {
			if (sessionCheck()) {
				$(form).attr('action', 'wisInsert.do');
				$(input).attr('name', "proId").val(proId);
				$(form).submit();
			}
		});

		$('#goEnroll').click(function() {
			if (sessionCheck() && enrollCheck()) {
				$(form).attr('action', 'hisInsertForm.do');
				$(input).attr('name', "proId").val(proId);
				$(form).submit();
			}
		});
	</script>
</body>

</html>