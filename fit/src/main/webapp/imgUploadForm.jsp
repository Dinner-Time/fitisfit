<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image Upload Test</title>

<style type="text/css">


</style>

</head>
<body>
<div class="upload">
	<form method="post" action="imgUpload.jsp" enctype="multipart/form-data">
	  <input type="file" name="memPhoto" id="memPhoto">
		<input type="submit" value="upload" />
	</form>
</div>
</body>
</html>