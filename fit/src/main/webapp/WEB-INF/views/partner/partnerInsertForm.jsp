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
	업체 등록 폼<br>
	<form id="frm" name="frm" action="parInsert.do" method="post">
		ID (Email) : <input type="text" id="parEmail" name="parEmail"><br>
		비밀번호 : <input type="password" id="parPassword" name="parPassword"><br>
		업체명 : <input type="text" id="parName" name="parName"><br>
		지역 : <select id="parRegId" name="parRegId"><option value="21">서울</option></select><br> <!-- 추가 예정  -->
		주소 : <input type="text" id="parAddress" name="parAddress"><br> <!-- 추후 api 적용 -->
		전화번호 : <input type="text" id="parPhone" name="parPhone"><br>
		업체 소개 : <textarea rows="2" cols="20" id="parIntro" name="parIntro"></textarea>
		<button type="submit">회원가입</button> <button type="reset">취소</button>
	</form>
<jsp:include page="../home/footer.jsp" />
</body>
</html>