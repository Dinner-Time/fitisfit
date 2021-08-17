<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<!-- 부트스트랩 CDN -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
		integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<title>프로그램 전체 리스트</title>
</head>

<body>
	<jsp:include page="../home/header.jsp" />
	<c:forEach var="pro" items="${list }">
		<!-- <h1>이름: ${pro.proName }</h1>
		<h1>사진: ${pro.proPhoto }</h1>
		<h1>설명: ${pro.proDesc }</h1>
		<h1>시작: ${pro.proSince }</h1>
		<h1>기간: ${pro.proPeriod }</h1>
		<h1>가격: ${pro.proPrice }</h1>
		<h1>인원: ${pro.proPeople }</h1>
		<h1>최대인원: ${pro.proMaxPeople }</h1> -->
		<form action="proDetail.do">
			<input type="hidden" name="proId" value="${pro.proId }">
			<div class="card" style="width: 18rem; background-color: aqua;">
				<div class="card-body">
					<h5 class="card-title text-center">${pro.proName }</h5>
					<p class="card-text">
						시작: ${pro.proSince} ~ <br>
						기간: ${pro.proPeriod}개월 <br>
						${pro.proPrice*(100 - pro.proSale3)*0.01}&#8361부터
					</p>
					<button class="btn btn-primary" type="submit">자세히보기</button>
				</div>
			</div>
		</form>
	</c:forEach>
	<a href="programAddForm.do">추가하러 ㄱㄱ</a>
	<jsp:include page="../home/footer.jsp" />

	<!-- 부트스트랩 CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
	</script>

	<!-- jquery CDN -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>

</html>