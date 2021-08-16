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
	마이페이지 - 회원정보<br>
	${member.memName }<br>
	${member.memEmail }<br>
	${member.memPassword }<br>
	${member.memBirth }<br>
	${member.memGender }<br>
	${member.memPhone }<br>
	${member.memSubDate }<br>
<jsp:include page="../home/footer.jsp" />
</body>
</html>