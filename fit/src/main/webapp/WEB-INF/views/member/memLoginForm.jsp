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

    <section class="d-flex justify-content-center align-items-center" style="min-height: 100vh;">
        <div class="container card-group">
            <div class="card">
                <form action="login.do" method="post">
                    <div class="card-header bg-primary text-white">
                        <h1 class="mt-2">로그인</h1>
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
                    <div class="card-footer">
                        <button class="btn btn-primary" type="submit">로그인</button>
                        <button class="btn btn-primary" type="reset">취소</button>
                    </div>
                </form>
            </div>
            <div class="card">
                <form action="memInsert.do" method="post">
                    <div class="card-header bg-primary text-white">
                        <h1 class="mt-2">회원 가입</h1>
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
                            <label for="birth">생일</label>
                            <input type="date" class="form-control" id="birth" name="birth" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">전화번호</label>
                            <input type="text" class="form-control" id="phone" name="phone" required>
                        </div>
                        <div class="form-group">
                            <label for="address">주소</label>
                            <input type="text" class="form-control" id="address" name="address" required>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary" type="submit">회원가입</button>
                        <button class="btn btn-primary" type="reset">취소</button>
                    </div>
                </form>
            </div>
        </div>
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