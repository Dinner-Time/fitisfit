<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	function getRecord(n) {
		frm.insId.value = n;
		frm.submit();
	}
</script>
<body>
<jsp:include page="../home/header.jsp" />
<div align="center">
	<div><h1>업체가 보는 강사목록</h1></div>
	<table border="1" rules="all">
			<tr>
				<th>식별번호</th>
				<th>이름</th>
				<th>프로그램명</th>
				<th>연락처</th>
			</tr>
			<c:forEach var="ins" items="${list }">
				<tr onclick="getRecord('${ins.insId}')">
					<td>${ins.insId }</td>
					<td>${ins.insName}</td>
					<td>${ins.programVO.proName}</td>
					<td>${ins.insPhone}</td>
				</tr>
			</c:forEach>
		</table>
		<div>
			<form id="frm" action="insSelect.do" method="post">
				<input type="hidden" id="insId" name="insId">
			</form>
		</div>
		<div>
		<button type="button" onclick="location.href ='insInsertForm.do'">강사추가</button>
		</div>
		
		<a href="insInfo.do">유저가 보는 강사 화면</a>
</div>
<jsp:include page="../home/footer.jsp" />
</body>
</html>