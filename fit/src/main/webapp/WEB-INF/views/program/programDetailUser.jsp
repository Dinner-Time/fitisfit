<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
.hover-me a {font-size: 15px;}
.hover-me a:hover {
font-size:0;
}
.hover-me a:hover:before {
    content: '0/12';
    font-size:15px;
}


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
	

</head>

<body id="body">
<jsp:include page="/WEB-INF/views/home/header.jsp" />
 

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
            <div class="card-body"><p>프로그램 설명 ${detailList[0].proDesc }</p></div>
            </div>
            <br/> 
            
                <div class="card">
            <div class="card-body">
               <table class="table table-bordered text-center">
                        <thead>
                            <tr class="bg-light-gray">
                               
                                <th>월</th>
                                <th>화</th>
                                <th>수</th>
                                <th>목</th>
                                <th>금</th>
                                <th>토</th>
                                <th>일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                               
                                <td>
                                    <span class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom font-size16 xs-font-size13">Dance</span>
                                    <div class="margin-10px-top font-size14">9:00-10:00</div>
                                </td>
                                <td>
                                    <span class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom font-size16 xs-font-size13">Dance</span>
                                    <div class="margin-10px-top font-size14">9:00-10:00</div>
                                </td>

                                <td>
                                </td>
                                
                                <td>
                                </td>
                                
                                <td>
                                </td>
                                
                                <td>
                                    <span class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom font-size16 xs-font-size13">Dance</span>
                                    <div class="margin-10px-top font-size14">9:00-10:00</div> 
                                </td>
                                
                                <td>
                                </td>
                            </tr>
                        </tbody>
                    </table>
            </div>
            </div>
            <br/>
        
               <div class="card">
            <div class="card-body">
            	<p><a href=""><span class="iconify-inline" data-icon="ion:open-outline" style="color: #4343fe;" data-width="30" data-height="30"></span></a> 
            	&nbsp; 강사소개 ${detailList[0].insName }</p>
            <p>간단한 소개입니다.</p> </div>
            		
            </div>
            <br/>
             <div class="card">
              <div class="card-body">
           		 <p><a href=""><span class="iconify-inline" data-icon="ion:open-outline" style="color: #4343fe;" data-width="30" data-height="30"></span></a> 
           		 &nbsp; 업체소개 ${detailList[0].parName }</p>
         	<p>간단한 소개입니다.</p> </div>
            </div>
            <br/>
            <!-- blockquote -->
		 <div class="card">
		 <div class="card-body">
		 <p>기간선택</p>
            <div class="container">
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Open modal
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
        <div class="modal-body">
          Modal body..
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
</div>
<br/>
            </div>
            </div>


   <br/>
   <div class="card">
    <div class="card-body">
   <p><h2>후기</h2></p>
		<div class="col-4">
			<div class="card" align="left" style="width:40rem;">
			  <ul class="list-group list-group-flush">
			  
			    <li class="list-group-item">
			    <!-- 별 모양은 자바스크립트로 구현.. -->
			    	<h5 class="card-title">리뷰점수</h5>
			    	<h6 class="card-subtitle mb-2 text-muted">날짜 , 작성자</h6>
			    	<hr>
					내용ssdsfdf입니다어림ㄴ어라ㅣㅇ너리나ㅓ라ㅣㄴ러ㅣㅏ얾니ㅏ런아ㅣㅓㄹ니ㅓㅇ란이ㅓ림널
			    </li>
			  </ul>
			</div>
		</div>
</div>
</div>
<br/>
		<div class="card">
		 <div class="card-body">
		<p><h2>다른 프로그램들과 비교해보세요!</h2>
			<div class="container">
		<div class="row">
		
			<!-- single blog post -->
			<article class="col-md-4 col-sm-6 col-xs-12 clearfix ">
				<div class="card">
				<div class="post-item">
					<div class="media-wrapper">
						<img src="images/blog/post-1.jpg" alt="amazing caves coverimage" class="img-fluid">
					</div>

					<div class="content">
						<h3><a href="single-post.html">프로그램명</a></h3>
						<p>설명</p>
						<p>날짜</p>
						<div align="center">
						<a class="btn btn-main" href="" style="background-color: #4343FE; border:none;">가격</a>
						</div>
					</div>
				</div>
				</div>
			</article>
			<!-- /single blog post -->
			
				<!-- single blog post -->
			<article class="col-md-4 col-sm-6 col-xs-12 clearfix ">
				<div class="card">
				<div class="post-item">
					<div class="media-wrapper">
						<img src="images/blog/post-1.jpg" alt="amazing caves coverimage" class="img-fluid">
					</div>

					<div class="content">
						<h3><a href="single-post.html">프로그램명</a></h3>
						<p>설명</p>
						<p>날짜</p>
						<div align="center">
						<a class="btn btn-main" href="" style="background-color: #4343FE; border:none;">가격</a>
						</div>
					</div>
				</div>
				</div>
			</article>
			<!-- /single blog post -->
		</div> 		<!-- End row -->
		</div>
	</div>
		</div>
            
          </div>
    
     
      </div>
      <div class="col-lg-4">
        <!-- sidebar -->
        <aside class="sidebar" style="position:sticky; top:200px;">
      
        <div class="card" style="width:359px">
		  <div class="card-body text-center">
		    <div class="hover-me"><a class="btn btn-main" href="#" style="background-color:#4343fe; border:none">예약가능인원</a></div><br/>
		   <a class="btn btn-main" href="#" style="background-color:#4343fe; border:none">위시리스트 담기</a><br/><br/>
		    <a class="btn btn-main" href="#" style="background-color:#4343fe; border:none">등록</a><br/>
		  </div>
		</div>
      
        </aside>
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
<script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>

  </body>
  </html>

</body>
</html>