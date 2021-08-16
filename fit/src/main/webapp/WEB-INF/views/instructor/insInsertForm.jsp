<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체가 강사 관리하는 페이지 (강사추가)</title>
</head>
<body>
<jsp:include page="../home/header.jsp" />
<div align="center">
	<form id="frm" name="frm" action="insInsert.do" method="post">
		<table border="1" rules="all">
			<tr>
				<th>사진</th>
				<td><input type="file" id = "insPhoto" name="insPhoto"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" id="insName" name="insName" size="60" required="required"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" id="insPhone" name="insPhone" size="60" required="required"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td>  <input type="radio" id = "insGender" name="insGender" value="여성"/>여성
  					  <input type="radio" id = "insGender" name="insGender" value="남성"/>남성</td>
			</tr>
			<tr>
				<th>인스타</th>
				<td><input type="text" id="insInsta" name="insInsta" size="60" required="required"></td>
			</tr>
			<tr>
				<th>카카오</th>
				<td><input type="text" id="insKakao" name="insKakao" size="60" required="required"></td>
			</tr>
			<tr>
				<th>이력</th>
				<td><input type="text" id="insHistory" name="insHistory" size="60" required="required"></td>
			</tr>
			<tr>
				<th>업체</th>
				<td><input type="text" id="insParId" name="insParId" size="60" required="required"></td>
			</tr>
		</table>
		<button type="submit">강사추가</button>
	</form>
</div>
<jsp:include page="../home/footer.jsp" />
</body>
</html>