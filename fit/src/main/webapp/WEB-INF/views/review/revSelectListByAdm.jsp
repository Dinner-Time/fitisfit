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

<title>Review Select List By Admin</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">

<script>
	function getRecord(n) {
		frm.revId.value = n;
		frm.submit();
	}	
</script>

<style type="text/css">
.custom-nav {
	border: 1px solid #4343FE;
	border-radius: 20px;
	position: relative;
	left: 50%;
	top: 27%;
	transform: translate(-50%, -50%);
}
li {
	font-family: 'Gowun Dodum', sans-serif;
	font-size: 15px;
	margin-left: 10px;
	margin-right: 10px;
}
.custom-p {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  width: 300px;
  height: 20px;
  color: black;
}

</style>

</head>
<body id="body">
	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<br><br><br><br>
	
	<!-- 관리자 측에서 후기를 상세보기 할 수 있는 페이지 -->
	<div align="center">
		<div class="col-12">
			<!-- section title -->
			<div class="title text-center">
				<h3>후기 관리</h3>
				<div class="border"></div>
			</div>
			<!-- /section title -->
		</div>
		<div class="col-8">
		    <nav class="navbar navbar-expand-lg navbar-light custom-nav" style="z-index: 999;">
      			<div class="collapse navbar-collapse" id="navigation">
        			<ul class="navbar-nav ml-auto text-center">
          				<li class="nav-item dropdown active">
				            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
				              data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				              전체
				            </a>
				            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
				              <a class="dropdown-item" href="#">프로그램명</a>
				              <a class="dropdown-item" href="#">지역</a>
				              <a class="dropdown-item" href="#">카테고리</a>
				            </div>
          				</li>
          				<li>
          					<form class="form-inline" role="form">
	  							<input type="text" class="form-control" placeholder="키워드 입력">
							</form>
          				</li>
          				<li>
          					<button type="button" class="btn btn-outline-primary">검색</button>
          				</li>
         			</ul>
          		</div>
          	</nav>
		</div>
		<div class="col-8">
			<table class="table table-hover">
				<thead>
					<tr align="center">
						<th scope="col" class="col-1">번호</th>
						<th scope="col" class="col-3">프로그램</th>
						<th scope="col" class="col-4">내용</th>
						<th scope="col" class="col-2">작성일</th>
						<th scope="col" class="col-2">작성자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="review" items="${list}">
						<tr style="cursor: pointer;" onclick="getRecord('${review.revId}')">
							<td align="center">${review.revId}</td>
							<td align="center"><p class="custom-p">${review.revProName}</p></td>
							<td><p class="custom-p">${review.revContent}</p></td>
							<td align="center">${review.revDate}</td>
							<td align="center">${review.revWriter}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="revInsertForm.do">후기 입력 (임시)</a><br>
			<a href="revSelectListByPar.do">파트너 관리창의 후기 조회 (임시)</a>
		</div>
	</div>
	<div>
		<form id="frm" action="revSelectByAdm.do" method="post">
			<input type="hidden" id="revId" name="revId">
		</form>
	</div>
	
	<br><br><br><br>
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