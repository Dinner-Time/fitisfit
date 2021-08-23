<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image Upload Test</title>

</head>
<body>
	<form method="post" action="imgUpload.jsp" enctype="multipart/form-data">
	  <input type="file" name="memPhoto">
		<input type="submit" value="업로드" />
	</form>
</body>
</html>