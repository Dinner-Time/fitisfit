<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체가 강사 관리하는 페이지 (강사한건보기)</title>
</head>
<body>
<jsp:include page="../home/header.jsp" />
<div align="center">
		<table border="1" rules="all">
			<tr>
				<th>사진</th>
				<td>${ins.insPhoto}</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${ins.insName}</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>${ins.insPhone}</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>${ins.insGender}</td>
			</tr>
			<tr>
				<th>인스타</th>
				<td>${ins.insInsta}</td>
			</tr>
			<tr>
				<th>카카오</th>
				<td>${ins.insKakao}</td>
			</tr>
			<tr>
				<th>이력</th>
				<td>${ins.insHistory}</td>
			</tr>
		</table>
		<div>
		<button type="button" onclick="location.href ='insUpdateForm.do'">수정</button>
		</div>
</div>
<jsp:include page="../home/footer.jsp" />
</body>
</html>