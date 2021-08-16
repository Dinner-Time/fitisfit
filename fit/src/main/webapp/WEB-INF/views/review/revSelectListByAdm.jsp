<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Select List By Admin</title>
<script>
	function getRecord(n) {
		frm.revId.value = n;
		frm.submit();
	}
</script>
</head>
<body>
	<!-- 관리자 측에서 후기를 상세보기 할 수 있는 페이지 -->
	<jsp:include page="../home/header.jsp" />
	<div align="center">
		<h3>후기 목록</h3>
		<table border="1" rules="all" cellpadding="5">
			<tr>
				<th>번호</th>
				<th>프로그램</th>
				<th>내용</th>
				<th>작성일</th>
				<th>작성자</th>
			</tr>
			<c:forEach var="review" items="${list}">
				<tr align="center" onmouseover="this.style.background='lightgray'"
					onmouseout="this.style.background='white'"
					onclick="getRecord('${review.revId}')">
					<td>${review.revId}</td>
					<td>${review.revProName}</td>
					<td>${review.revContent}</td>
					<td>${review.revDate}</td>
					<td>${review.revWriter}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div>
		<form id="frm" action="revSelectByAdm.do" method="post">
			<input type="hidden" id="revId" name="revId">
		</form>
	</div>
	<jsp:include page="../home/footer.jsp" />

</body>
</html>