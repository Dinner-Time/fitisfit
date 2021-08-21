<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>피트다 피트!!</title>
<!-- Mobile Specific Meta ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS ================================================== -->
<!-- Themefisher Icon font -->
<link rel="stylesheet" href="plugins/themefisher-font/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<!-- Lightbox.min css -->
<link rel="stylesheet"
	href="plugins/lightbox2/dist/css/lightbox.min.css">
<!-- animation css -->
<link rel="stylesheet" href="plugins/animate/animate.css">
<!-- Slick Carousel -->
<link rel="stylesheet" href="plugins/slick/slick.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">
</head>

<body id="body">
    <jsp:include page="../home/header.jsp" />
	
	<!-- section title -->
			<div class="col-12">
			<div class="title text-center" >
				
			</div>
			</div>
			<!-- /section title -->


    <section class="d-flex justify-content-center align-items-center" style="min-height: 100vh;">
        <div class="container">
      	  <div class="row">
            <div class="card col-md-6" >
                <form action="login.do" method="post">
                    <div class="card-header text-black" align="center" style="background-color:white; border:none margin-top:10px">
                        <h1 class="mt-2 font-weight-normal">Login</h1>
                    </div>
                     <div class="card-body">
                        <div class="form-group" align="center">
                        
                      <img style="width:300px;height: 230px;" class="logo-white" src="images/logo.png" alt="logo" />

                        
                        </div>
                     </div>
                        
                    <div class="card-body">
                        <div class="form-group">
                            <label for="email">이메일</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="password">비밀번호</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <div class="form-group form-check">
                            <span class="m-3">
                                <input class="form-check-input" type="radio" name="memberSort" id="general"
                                    value="general" checked>
                                <label class="form-check-label" for="general">일반회원</label>
                            </span>
                            <span class="m-3">
                                <input class="form-check-input" type="radio" name="memberSort" id="partner"
                                    value="partner">
                                <label class="form-check-label" for="partner">파트너회원</label>
                            </span>
                        </div>
                    </div>
                    <div class="card-footer" style="background-color:white">
                    	<div align="center">
                        	<button class="btn btn-primary" type="submit">로그인</button>
                        	<button class="btn btn-primary" type="reset">취소</button>
                   		</div>
                    </div>
                </form>
            </div>
            
            <div class="card col-md-6">
                <form id="signUp" action="memInsert.do" method="post">
                    <div class="card-header bg-primary text-white">
                        <h1 class="mt-2 font-weight-normal">회원 가입</h1>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="email">이메일</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="password">비밀번호</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <div class="form-group">
                            <label for="name">이름</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="form-group form-check">
                            <span class="m-3">
                                <input class="form-check-input" type="radio" name="gender" id="male" value="남" checked>
                                <label class="form-check-label" for="male">남</label>
                            </span>
                            <span class="m-3">
                                <input class="form-check-input" type="radio" name="gender" id="female" value="여">
                                <label class="form-check-label" for="female">여</label>
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="birth">생년월일</label>
                            <input type="date" class="form-control" id="birth" name="birth" value="2000-01-01" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">전화번호</label>
                            <input type="text" class="form-control" id="phone" name="phone" required>
                        </div>
                        <div class="form-group">
                            <label for="address">주소</label>
                            <div class="d-flex justify-content-end">
                                <input type="text" class="form-control" id="roadFullAddr" name="roadFullAddr" required readonly>
                                <input type="button" class="btn btn-primary ml-2" onClick="goPopup();" value="검색"/>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary" type="button" onclick='(function(){
                        	alert("환영합니다!!");
                        	$("#signUp").submit();
                        })()'>회원가입</button>
                        <button class="btn btn-primary" type="reset">취소</button>
                    </div>
                </form>
            </div>
		</div>
       </div>
    </section>
    
    	<!-- section title -->
			<div class="col-12">
			<div class="title text-center" >
				
			</div>
			</div>
		<!-- /section title -->
			
    <jsp:include page="../home/footer.jsp" />

    <!-- 자바 스크립트 -->
    <!-- Main jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
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
    


	<script type='text/javascript'>
		
		function goPopup() {
			// 호출된 페이지(jusoPopup.do)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("jusoPopup.do", "pop",
					"width=570,height=420, scrollbars=yes, resizable=yes");
		}
		function jusoCallBack(roadFullAddr) {
			$('#roadFullAddr').val(roadFullAddr);
		}
		$(document).ready(function(){
			let fail = "<c:out value='${fail}' />";
			if(fail == 'fail'){
				alert('로그인에 실패하였습니다.');
			}
		});
	</script>
</body>

</html>