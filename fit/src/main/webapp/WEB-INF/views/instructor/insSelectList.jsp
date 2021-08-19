<!-- 파트너-강사관리페이지 -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>

</style>

<meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Bingo One page parallax responsive HTML Template ">
  <meta name="author" content="Themefisher.com">

  <title>Bingo | Responsive Multipurpose Parallax HTML5 Template</title>

<!-- Mobile Specific Meta
  ================================================== -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
  
  <!-- CSS
  ================================================== -->
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  <!-- Lightbox.min css -->
  <link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
  <!-- animation css -->
  <link rel="stylesheet" href="plugins/animate/animate.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="css/style.css">  

<script>
	function getRecord(n) {
		frm.insId.value = n;
		frm.submit();
	}
</script>

</head>

<body id="body">
<jsp:include page="/WEB-INF/views/home/header.jsp" />
 <!--
  Start Preloader
  ==================================== -->
  <div id="preloader">
    <div class='preloader'>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
      <span></span>
    </div>
  </div> 
  <!--
  End Preloader
  ==================================== -->
<!--  
<section class="single-page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>Blog Single</h2>
				<ol class="breadcrumb header-bradcrumb">
				  <li><a href="index.html">Home</a></li>
				  <li class="active">Blog Single</li>
				</ol>
			
</section>-->
<section class="about" id="about">
	<div align="center"><h2>강사관리</h2></div><br/>
<div class="container">
  <table class="table table-hover" >
    <thead align="center">
			<tr>
				<th>식별번호</th>
				<th>이름</th>
				<th>프로그램명</th>
				<th>연락처</th>
			</tr>
    </thead>
    <tbody align="center">
      <c:forEach var="ins" items="${list }">
				<tr onclick="getRecord('${ins.insId}')">
					<td>${ins.insId }</td>
					<td>${ins.insName}</td>
					<td>${ins.programVO.proName}</td>
					<td>${ins.insPhone}</td>
				</tr>
			</c:forEach>
    </tbody>
  </table>
  		<div>
			<form id="frm" action="insSelect.do" method="post">
				<input type="hidden" id="insId" name="insId">
			</form>
		</div>
		<div align="right">
		 <a class="btn btn-main" href="insInsertForm.do" style="background-color:#4343fe; border:none">강사추가</a>
		
		</div>
		
		<a href="insInfo.do">유저가 보는 강사 화면</a>
</div>
</section>


<jsp:include page="/WEB-INF/views/home/footer.jsp" />
    
    <!-- 
    Essential Scripts
    =====================================-->
    <!-- Main jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Google Map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
    <script  src="plugins/google-map/gmap.js"></script>

    <!-- Form Validation -->
    <script src="plugins/form-validation/jquery.form.js"></script> 
    <script src="plugins/form-validation/jquery.validate.min.js"></script>
    
    <!-- Bootstrap4 -->
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Parallax -->
    <script src="plugins/parallax/jquery.parallax-1.1.3.js"></script>
    <!-- lightbox -->
    <script src="plugins/lightbox2/dist/js/lightbox.min.js"></script>
    <!-- Owl Carousel -->
    <script src="plugins/slick/slick.min.js"></script>
    <!-- filter -->
    <script src="plugins/filterizr/jquery.filterizr.min.js"></script>
    <!-- Smooth Scroll js -->
    <script src="plugins/smooth-scroll/smooth-scroll.min.js"></script>
    
    <!-- Custom js -->
    <script src="js/script.js"></script>

</body>
</html>