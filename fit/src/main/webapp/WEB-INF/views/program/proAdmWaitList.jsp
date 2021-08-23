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

  <section class="about" id="about">
    <div align="center">
      <h2>프로그램 관리</h2>
    </div><br />
    <div class="container">
      <table class="table table-hover">
        <thead align="center">
          <tr>
            <th width="10%">식별번호</th>
            <th width="30%">파트너</th>
            <th width="60%">프로그램</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="pro" items="${list }">
            <tr>
              <td class="text-center">${pro.proId }</td>
              <td>${pro.parName }</td>
              <td class="d-flex justify-content-between">
                <span>${pro.proName}</span>
                <span>
                  <button class="btn btn-primary doConfirm" data-proid="${pro.proId }" data-oriid="${pro.proOriId }">
                    <c:if test="${pro.proState == 'E' }">
                      등록 승인
                    </c:if>
                    <c:if test="${pro.proState == 'M' }">
                      수정 승인
                    </c:if>
                  </button>
                </span>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
      <div>
        <form id="frm" action="proReqConfirm.do" method="post">
          <input type="hidden" id="proId" name="proId">
          <input type="hidden" id="proOriId" name="proOriId">
        </form>
      </div>
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
  <script src="plugins/google-map/gmap.js"></script>

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


  <script>
    let form = $('#frm');
    let message = "<c:out value='${confirm}' />";

    if (message == 'confirm') {
      alert('승인이 완료되었습니다');
    }

    $('.doConfirm').click(function () {
      $(form).find('#proId').val($(this).attr('data-proid'));
      $(form).find('#proOriId').val($(this).attr('data-oriid'));
      $(form).submit();
    });
  </script>


</body>

</html>