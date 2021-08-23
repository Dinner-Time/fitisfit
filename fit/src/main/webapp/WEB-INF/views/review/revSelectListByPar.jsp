<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
	content="Bingo One page parallax responsive HTML Template ">
<meta name="author" content="Themefisher.com">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Review Select List By Partner</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">


</head>
<body>
	<!-- 파트너 측에서 회원의 후기를 볼 수 있는 페이지 -->
	<jsp:include page="../home/header.jsp" />
	<div class="col-12" align="center">
		<!-- section title -->
		<div class="title text-center">
			<h3>후기</h3>
			<div class="border"></div>
		</div>
		<!-- /section title -->
		<div class="col-8">
			<div class="row">
				<div class="col-3">
					<!-- 프로그램 사진과 이름을 카드형식으로 -->
					<div class="card">
					  <div class="card-body">
					  	<img class="card-img-top" src=${list[0].revProPhoto } alt="Card image">
					  	<p>${list[0].revProName }</p>
					  	<p></p>
					  </div>
					</div>
				</div>
				<div class="col-9">
					<!-- 한 프로그램에 대한 전체 후기
					해당 파트너의 프로그램ID를 가져와서 각각 출력해줘야 함.. -->
					<div class="card">
					  <div class="card-body">
						  <c:forEach var="review" items="${list}">
						    <li class="list-group-item">
						    <!-- 별 모양은 자바스크립트로 구현.. -->
						    	
						    	<h5 class="card-title">${review.revScore}</h5>
						    	<h6 class="card-subtitle mb-2 text-muted">${review.revDate} · ${review.revWriter}</h6>
						    	<hr>
								${review.revContent}<br>
						    </li>
						  </c:forEach>
					  </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br><br>
	<jsp:include page="../home/footer.jsp" />
</body>
</html>