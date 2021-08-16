<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Select By Admin</title>
</head>
<body>
	<jsp:include page="../home/header.jsp" />
	<!-- 관리자가 후기 목록에서 하나를 클릭했을 때, 상세보기를 해주는 페이지
	프로그램ID를 기준으로 review와 program을 join하여 프로그램명도 출력해줌 -->
	<div align="center">
		<div>
			<table border="1" rules="all" cellpadding="10">
				<tr>
					<td>${review.revId}</td>
					<td>${review.revScore}</td>
					<td>${review.revProName}</td>
					<td>${review.revDate}</td>
					<td>${review.revWriter}</td>
				</tr>
				<tr>
					<td></td>
					<td colspan="2">${review.revContent}</td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
		<br>
		<div>
		<button type="button">수정</button>&nbsp;&nbsp;
		<button type="button">삭제</button>
		</div>
	</div>
	<jsp:include page="../home/footer.jsp" />
</body>
</html>