<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <form method=post action="fileUp.jsp"
         enctype="multipart/form-data"> <!-- 파일 업로드시에만 사용 가능한 프로토콜(없으면 안됨) -->
	  파일첨부:<input type="file" name="photo" >
	  <input type=submit value="upload">
      </form>

</body>
</html>