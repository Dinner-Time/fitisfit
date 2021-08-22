<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import = "java.io.File" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String filename = "";
		int sizeLimit = 15*1024*1024;
		
		String realPath = request.getServletContext().getRealPath("images/member");
		
		File dir = new File(realPath);
		if (!dir.exists()) dir.mkdirs();
		
		MultipartRequest multipartRequest = null;
		multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		
		filename = multipartRequest.getFilesystemName("photo");
	%>
	
	폼에서 전송된 원래 파일명 : <%=multipartRequest.getOriginalFileName("photo") %><br>
	파일명 : <%=filename %><br>
	업로드한 파일의 경로 : ${pageContext.request.contextPath}/images/member/<%=filename %><br>
	물리적인 저장경로 : <%=realPath %><br>
	<img src="${pageContext.request.contextPath}/images/member/<%=filename %>" />
	
</body>
</html>