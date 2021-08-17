<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="plugins/lightbox2/dist/css/lightbox.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="plugins/animate/animate.css">
    <!-- Slick Carousel -->
    <link rel="stylesheet" href="plugins/slick/slick.css">
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body id="body">
    <jsp:include page="../home/header.jsp" />
    <section class="d-flex justify-content-between align-items-center mx-5" style="height: 150vh;">
        <form action="login.do" method="post">
            <div class="form-group">
                <label for="email">이메일</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="form-group form-check">
                <input class="form-check-input" type="radio" name="memberSort" id="general" value="general" checked>
                <label class="form-check-label" for="general">일반회원</label>
                <input class="form-check-input" type="radio" name="memberSort" id="partner" value="partner">
                <label class="form-check-label" for="partner">파트너회원</label>
            </div>
            <button type="submit">로그인</button> <button type="reset">취소</button>
        </form>
        <form action="memInsert.do" method="post">
            ID (Email) : <input type="text" id="memEmail" name="memEmail"><br>
            비밀번호 : <input type="password" id="memPassword" name="memPassword"><br>
            이름 : <input type="text" id="memName" name="memName"><br>
            성별 : <input type="radio" id="memGender" name="memGender" value="남">남 <input type="radio" id="memGender"
                name="memGender" value="여">여<br>
            생일 : <input type="date" id="memBirth" name="memBirth"><br>
            전화번호 : <input type="text" id="memPhone" name="memPhone"><br>
            주소 : <input type="text" id="memAddress" name="memAddress"><br> <!-- 추후 api 적용 -->
            <button type="submit">회원가입</button> <button type="reset">취소</button>
        </form>
    </section>
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
</body>

</html>