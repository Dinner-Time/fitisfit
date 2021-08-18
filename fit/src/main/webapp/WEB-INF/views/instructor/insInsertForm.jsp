<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html> <!--<![endif]-->
<head>
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
Fixed Navigation
==================================== -->

<!--
End Fixed Navigation
==================================== -->




	<!--
Start About Section
==================================== -->
<section class="about" id="about">
<form id="frm" name="frm" action="insInsert.do" method="post">
	<div class="container">
		<div class="row">
		
			<!-- section title -->
			
		
			<div class="col-md-4">
			<div class="card" style="width:300px">
    <img class="card-img-top" src="images/team/member-1.jpg" alt="Card image" style="width:100%">
    <div class="card-body" >
    <input type="file" id = "insPhoto" name="insPhoto">
 
    </div>
  </div>
  <br>
			</div>
			<div class="col-md-8">
				<p>
				<!-- Contact Form -->
			<div class="contact-form" >
					<div class="form-group">
						<input type="text" placeholder="이름" class="form-control" name="insName" id="insName" required="required">
					</div>
					
					<div class="form-group">
					
						<input type="text" placeholder="전화번호" class="form-control" name="insPhone" id="insPhone" required="required">
					</div>
					
					<div class="form-group">
						<input type="text" placeholder="성별" class="form-control" name="insGender" id="insGender" required="required">
					</div>
					
					<div class="form-group">
						<input type="text" placeholder="인스타" class="form-control" name="insInsta" id="insInsta" required="required">
					</div>
					
					<div class="form-group">
						<input type="text" placeholder="카카오톡" class="form-control" name="insKakao" id="insKakao" required="required">
					</div>
					
					<div class="form-group">
						<textarea rows="6" placeholder="이력" class="form-control" name="insHistory" id="insHistory" required="required"></textarea>	
					</div>
					
					<div class="form-group">
						<input type="text" placeholder="업체" class="form-control" name="insParId" id="insParId" required="required">
					</div>
					
			</div>
			<!-- ./End Contact Form -->
		

				</p>
				
			<div align="right">
			<button type="submit" class="btn btn-primary">강사추가</button>
			 </div>
			</div>
		</div> 		<!-- End row -->
		
	</div>
	</form>
	   	<!-- End container -->
</section>   <!-- End section -->



	



	<jsp:include page="/WEB-INF/views/home/footer.jsp" />


    <!-- end Footer Area
    ========================================== -->


    
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