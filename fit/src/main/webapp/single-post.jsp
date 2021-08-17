<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'/>


<style>




.inner-star::before{color: #FF9600;}
.outer-star {position: relative;display: inline-block;color: #CCCCCC;}
.inner-star {position: absolute;left: 0;top: 0;width: 0%;overflow: hidden;white-space: nowrap;}
.outer-star::before, .inner-star::before {content: '\f005 \f005 \f005 \f005 \f005';font-family: 'Font Awesome 5 free';font-weight: 900;}
</style>

<script>
ratings = {RatingScore: 4.5} 
totalRating = 5;table = document.querySelector('.RatingStar');function rateIt() {for (rating in ratings) {ratingPercentage = ratings[rating] / totalRating * 100;ratingRounded = Math.round(ratingPercentage / 10) * 10 + '%';star = table.querySelector(`.${rating} .inner-star`);numberRating = table.querySelector(`.${rating} .numberRating`);star.style.width = ratingRounded;numberRating.innerText = ratings[rating];}}rateIt()
</script>

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


</head>

<body id="body">

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
<header class="navigation fixed-top">
  <div class="container">
    <!-- main nav -->
    <nav class="navbar navbar-expand-lg navbar-light">
      <!-- logo
      <a class="navbar-brand logo" href="index.html">
        <img class="logo-default" src="images/logo.png" alt="logo"/>
        <img class="logo-white" src="images/logo-white.png" alt="logo"/>
      </a> -->
      <!-- /logo -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation"
        aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navigation">
        <ul class="navbar-nav ml-auto text-center">
          <li class="nav-item dropdown ">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              Homepage
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="index.html">Homepage</a>
              <a class="dropdown-item" href="onepage-slider.html">Onepage</a>
              <a class="dropdown-item" href="onepage-text.html">Onepage 2</a>
            </div>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="about.html">About Us</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="service.html">Services</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="portfolio.html">Portfolio</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="team.html">Team</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="pricing.html">Pricing</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="contact.html">Contact</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              Pages
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="404.html">404 Page</a>
              <a class="dropdown-item" href="blog.html">Blog Page</a>
              <a class="dropdown-item" href="single-post.html">Blog Single Page</a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <!-- /main nav -->
  </div>
</header>
<!--
End Fixed Navigation
==================================== -->

<section class="single-page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>Blog Single</h2>
				<ol class="breadcrumb header-bradcrumb">
				  <li><a href="index.html">Home</a></li>
				  <li class="active">Blog Single</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<!-- blog details part start -->
<section class="blog-details section">
  <div class="container">
    <div class="row">
      <div class="col-lg-8">
        <article class="post">
	        <div class="card">
	    		<div class="card-body"><h1>프로그램명 ${detailList[0].proName }</h1></div>
	  		</div>
         <br/>
 		<div class="card">
            <img class="img-fluid w-100" src="images/blog/post-1.jpg" alt="post-image">
        </div>
            
          <!-- Post Content -->
          <div class="post-content">
           <br/>    
          	<div class="card">
            <p>프로그램 설명${detailList[3].proDesc } </p>
            </div>
               <div class="card">
            <p>강사소개 ${detailList[14].proDesc } </p>
            </div>
            
             <div class="card">
            <p>업체소개</p>
            </div>
            <br/>
            <!-- blockquote -->
            
<c:if test="${proPeriod == 0 }">             
<div class="card">
<div class="container">
  <h2>기간선택</h2>
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    1달권
  </button>
 
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    2달권
  </button>
  
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    3달권
  </button>

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" align="center">
       <div class="row" >
        
      <form name="해당 폼의 이름" action="값을 보낼 주소" method="post">
        <input type='date' name='startDate' value=''/>&nbsp;~&nbsp;
    </form>
    <form name="해당 폼의 이름" action="값을 보낼 주소" method="post">
        <input type='date' name='endDate' value=''/>
    </form>
        </div>
        </div>
     
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</c:if>  
   <br/>
   <div class="card">
   <h2>후기</h2>
          <table>
          <tr>
          <td>
          <div class='RatingStar'>
  			<div class='RatingScore'>
  			  <div class='outer-star'>
  			  <div class='inner-star'></div>
  			 </div>
  		   </div>
		 </div>
         </td>
          <td>
          <div class="container">
			  <div class="progress">
			    <div class="progress-bar" style="width:70%"></div>
			  </div>
			</div></td>
          </tr>
          </table>
  			<li class="comment-list-item">
                <div class="comment-list-item-content">
                  <h5>Anke Kirsch</h5>
                  <h6>Aug 20, 2018</h6>
                  <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolor emque laudant tota rem
                    ape riamipsa eaque. </p>
                </div>
             </li>
             <li class="comment-list-item">
                <div class="comment-list-item-content">
                  <h5>Falk Burger</h5>
                  <h6>Aug 20, 2018</h6>
                  <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolor emque laudant tota rem
                    ape riamipsa eaque. </p>
                </div>
              </li>
</div>
<br/>
		<div class="card">
		<h2>다른 프로그램들과 비교해보세요!</h2>
		<div class="row filtr-container">
					<div class="col-md-3 col-sm-6 col-xs-6 filtr-item " data-category="mix, design" >
						<div class="portfolio-block">
							<img class="img-fluid" src="images/portfolio/portfolio-1.jpg" alt="">
							<div class="caption">
								<a class="search-icon" href="images/portfolio/portfolio-1.jpg" data-lightbox="image-1">
									<i class="tf-ion-ios-search-strong"></i>
								</a>
								<h4><a href="">AirBnB Postcard</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 filtr-item " data-category="mix, design, ios">
						<div class="portfolio-block">
							<img class="img-fluid" src="images/portfolio/portfolio-2.jpg" alt="">
							<div class="caption">
								<a class="search-icon" href="images/portfolio/portfolio-2.jpg" data-lightbox="image-1">
									<i class="tf-ion-ios-search-strong"></i>
								</a>
								<h4><a href="">AirBnB Postcard</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 filtr-item " data-category="mix, photography, development">
						<div class="portfolio-block">
							<img class="img-fluid" src="images/portfolio/portfolio-3.jpg" alt="">
							<div class="caption">
								<a class="search-icon" href="images/portfolio/portfolio-3.jpg" data-lightbox="image-1">
									<i class="tf-ion-ios-search-strong"></i>
								</a>
								<h4><a href="">AirBnB Postcard</a></h4>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 filtr-item " data-category="mix, photography, ios">
						<div class="portfolio-block">
							<img class="img-fluid" src="images/portfolio/portfolio-4.jpg" alt="">
							<div class="caption">
								<a class="search-icon" href="images/portfolio/portfolio-4.jpg" data-lightbox="image-1">
									<i class="tf-ion-ios-search-strong"></i>
								</a>
								<h4><a href="">AirBnB Postcard</a></h4>
							</div>
						</div>
					</div>
				</div>
		</div>
            
          </div>
        </article>
      </div>
      <div class="col-lg-4">
        <!-- sidebar -->
        <aside class="sidebar" style="position:sticky; top:0;">
      
        <div class="card" style="width:359px">
		  <div class="card-body text-center">
		    <a class="btn btn-main" href="#" style="background-color:#4343fe; border:none">예약가능인원</a><br/><br/>
		   <a class="btn btn-main" href="#" style="background-color:#4343fe; border:none">위시리스트 담기</a><br/><br/>
		    <a class="btn btn-main" href="#" style="background-color:#4343fe; border:none">등록</a><br/>
		  </div>
		</div>
      
        </aside>
      </div>
    </div>
  </div>
</section>
<!-- blog details part end -->

 <footer id="footer" class="bg-one">
    <div class="footer-bottom">
    <h5>Copyright 2016. All rights reserved.</h5>
    <h6>Design and Developed by <a href="">Themefisher</a></h6>
  </div>
</footer> <!-- end footer -->


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

</body>
</html>