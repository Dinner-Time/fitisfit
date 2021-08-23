<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- 마이페이지 수강내역 페이지 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Bingo One page parallax responsive HTML Template ">

<meta name="author" content="Themefisher.com">

<title>수강내역 | Fit is Fit</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
<link rel="stylesheet" href="plugins/animate/animate.css">
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="css/style.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<style type="text/css">
@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);
@import url(https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css);

.stateBanner {
	font-family: 'NanumSquare', sans-serif;
	text-align: center;
	font-size: 18px;
	border-radius: 0px;
	position: relative;
	width: 100%;
}

h3, h5, p {
	font-family: 'NanumSquare', sans-serif;
}

</style>

</head>

<body id="body">

	<jsp:include page="/WEB-INF/views/home/header.jsp" />
	<br><br><br>
	<!-- section title -->
	<div class="title text-center">
		<h3>수강 내역</h3>
		<div class="border"></div>
	</div>
	<!-- /section title -->
	<div class="container">
		<form id="frm" name="frm" action="revInsertForm.do" method="post">
		<div class="row text-center">
			<c:forEach var="history" items="${list}" varStatus="status">
				<div class="col-3">
					<div class="post-item" data-idx="${status.index}">
						<div class="stateBanner badge-primary"></div>
						<div class="media-wrapper">
							<img src="images/program/${history.proPhoto}" alt="Program Photo" class="img-fluid">
						</div>
						<div class="content" data-hisDate="${history.hisDate }" data-hisPeriod="${history.hisPeriod }">
							<h5>${history.proName}</h5>
							<p>${history.hisDate} ~</p>
						</div>
						<div>
							<input type="hidden" id="hisId" name="hisId" value="${history.hisId}">
							<input type="hidden" id="hisMemEmail" name="hisMemEmail" value="${history.hisMemEmail}">
						</div>
						<div>
							<button type="submit" class="btn btn-primary">후기작성</button>
							<button type="button" class="btn btn-outline-danger" onclick="delConfirm(${history.hisId})">수강취소</button>
							<br><br>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		</form>
	</div>
	<br><br><br>
	<jsp:include page="/WEB-INF/views/home/footer.jsp" />

	<script src="plugins/jquery/jquery.min.js"></script>
	<script src="plugins/form-validation/jquery.form.js"></script>
	<script src="plugins/form-validation/jquery.validate.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="plugins/parallax/jquery.parallax-1.1.3.js"></script>
	<script src="plugins/lightbox2/dist/js/lightbox.min.js"></script>
	<script src="plugins/slick/slick.min.js"></script>
	<script src="plugins/filterizr/jquery.filterizr.min.js"></script>
	<script src="plugins/smooth-scroll/smooth-scroll.min.js"></script>
	<script src="js/script.js"></script>
	
	<script type="text/javascript">
		let today = new Date(); 
		let hisState = $('.post-item');
		let lastIdx = $(hisState).last().attr("data-idx")*1;


		for (let i=0; i<=lastIdx; i++) {
			let date = new Date($('.content').eq(i).attr('data-hisDate'));
			let period = $('.content').eq(i).attr('data-hisPeriod')*1;
			date.setMonth(date.getMonth()+1+period);

			
			if (today > date) {
				$(hisState).eq(i).children().first().text('수강완료');
			} else {
				$(hisState).eq(i).children().first().text('수강중');
			}
			
			if ($(hisState).eq(i).children().first().text() == "수강완료") {
				$(hisState).eq(i).children().first().css({'background-color' : 'gray'});
			}
		}
		
		function delConfirm(hisId) {
			var result = confirm('정말로 수강취소하시겠습니까?');
			if (result) {
				var form = document.createElement('form');
				form.setAttribute('method','post');
				form.setAttribute('action', 'hisDelete.do');
				document.charset = "utf-8";
				
				var hidden = document.createElement('input');
				hidden.setAttribute('type','hidden');
				hidden.setAttribute('name','hisId');
				hidden.setAttribute('value', hisId);
					
				form.appendChild(hidden);
				document.body.appendChild(form);
				form.submit();
			}

		}
	</script>
</body>
</html>