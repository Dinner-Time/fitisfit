<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../home/header.jsp" />
	<form id="frm" name="frm" action="login.do" method="post">
		<input type="text" id="email" name="email">
		<input type="password" id="password" name="password">
		<button type="submit">로그인</button> <button type="reset">취소</button>
	</form>
	<hr>
	<form id="frm" name="frm" action="memInsert.do" method="post">
		ID (Email) : <input type="text" id="memEmail" name="memEmail"><br>
		비밀번호 : <input type="password" id="memPassword" name="memPassword"><br>
		이름 : <input type="text" id="memName" name="memName"><br>
		성별 : <input type="radio" id="memGender" name="memGender" value="남">남 <input type="radio" id="memGender" name="memGender" value="여">여<br>
		생일 : <input type="date" id="memBirth" name="memBirth"><br>
		전화번호 : <input type="text" id="memPhone" name="memPhone"><br>
		주소 : <input type="text" id="memAddress" name="memAddress"><br> <!-- 추후 api 적용 -->
		<button type="submit">회원가입</button> <button type="reset">취소</button>
	</form>
<jsp:include page="../home/footer.jsp" />
</body>
</html>