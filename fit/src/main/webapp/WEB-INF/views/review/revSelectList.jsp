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

<title>Review Select List</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body id="body">
	<jsp:include page="../home/header.jsp" />
	<!-- 권한이 없어도 프로그램 상세보기에서 후기를 보여주는 부분. 
	프로그램 상세보기 페이지에 합치면 됨..
	그러려면 프로그램 id 받아와서 해당 프로그램에 대한 후기만 보여줘야 됨 -->
	<div class="col-12" align="center">
	<h3>프로그램 페이지와 합칠 부분!! (독자적인 페이지 아님~)</h3>
		<div class="col-8">
			<div class="card" align="left" style="width: 50rem;">
			  <ul class="list-group list-group-flush">
			  <c:forEach var="review" items="${list}">
			    <li class="list-group-item">
			    <!-- 별 모양은 자바스크립트로 구현.. -->
			    	<h5 class="card-title">${review.revScore}</h5>
			    	<h6 class="card-subtitle mb-2 text-muted">${review.revDate} · ${review.revWriter}</h6>
			    	<hr>
					${review.revContent}<br>
			    </li>
			  </c:forEach>
			  </ul>
			</div>
		</div>
	</div>
	<br><br>
	<jsp:include page="../home/footer.jsp" />
</body>
</html>