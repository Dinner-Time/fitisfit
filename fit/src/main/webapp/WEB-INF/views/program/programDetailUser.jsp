<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>피트다 피트!!</title>

  <!-- CSS ================================================== -->
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
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

  <!-- 폰트 시작 -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
  <!-- 폰트 끝 -->

  <style type="text/css">
    .hover-me a {
      font-size: 15px;
    }

    .hover-me a:hover {
      font-size: 0;
    }

    .hover-me a:hover:before {
      content: '${detailList[0].proPeople }/${detailList[0].proMaxPeople }';
      font-size: 15px;
    }
  </style>
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
              <div class="card-body">
                <h1>${detailList[0].proName}
                </h1>
              </div>
            </div>
            <br />
            <div class="card">
              <img class="img-fluid w-100" src="${detailList[0].proPhoto }" alt="post-image">
            </div>
            <!-- Post Content -->
            <div class="post-content">
              <br />
              <div class="card">
                <div class="card-body">
                  <p>${detailList[0].proDesc }</p>
                </div>
              </div>
              <br />

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
                      <tr style="font-size: x-small">
                        <td>
                          <span
                            class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom font-size16 xs-font-size13">${timetable.timMon
                            }</span>
                        </td>
                        <td>
                          <span
                            class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom font-size16 xs-font-size13">${timetable.timTue
                            }</span>
                        </td>
                        <td>
                          <span
                            class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom font-size16 xs-font-size13">${timetable.timWen
                            }</span>
                        </td>
                        <td>
                          <span
                            class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom font-size16 xs-font-size13">${timetable.timThu
                            }</span>
                        </td>
                        <td>
                          <span
                            class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom font-size16 xs-font-size13">${timetable.timFri
                            }</span>
                        </td>
                        <td>
                          <span
                            class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom font-size16 xs-font-size13">${timetable.timSat
                            }</span>
                        </td>
                        <td>
                          <span
                            class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom font-size16 xs-font-size13">${timetable.timSun
                            }</span>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <br />
              <div class="card">
                <div class="card-body">
                  <p><a id="insSelect"><span class="iconify-inline" data-icon="ion:open-outline"
                        style="color: #4343fe;" data-width="30" data-height="30"></span></a>
                    &nbsp; 강사소개 : ${detailList[0].insName } </p>
                </div>
              </div>
              <br />
              <div class="card">
                <div class="card-body">
                  <p><a id="parSelect"><span class="iconify-inline" data-icon="ion:open-outline"
                        style="color: #4343fe;" data-width="30" data-height="30"></span></a>
                    &nbsp; 업체소개 : ${detailList[0].parName }</p>
                </div>
              </div>
              <br />
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
                  <br />
                </div>
              </div>
              <br />
              <div class="card">
                <div class="card-body">
                  <p>
                    <h2>후기</h2>
                  </p>
                  <div class="col-4">
                    <div class="card" align="left" style="width:40rem;">
                      <ul class="list-group list-group-flush">
                        <c:forEach var="review" items="${detailList }">
                          <li class="list-group-item">
                            <!-- 별 모양은 자바스크립트로 구현.. -->
                            <h5 class="card-title">리뷰점수 : ${review.revScore}</h5>
                            <h6 class="card-subtitle mb-2 text-muted">내용 : ${review.revContent }
                            </h6>
                            <hr>
                            날짜 : ${review.revDate } , 작성자 : ${review.revWriter}
                          </li>
                        </c:forEach>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <br />

              <!-- <div class="card">
                <div class="card-body">
                  <p>
                    <h2>다른 프로그램들과 비교해보세요!</h2>
                    <div class="container">
                      <div class="row">
                       
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
                       /single blog post -->


            </div>
        </div>
        <div class="col-lg-4">
          <!-- sidebar -->
          <aside class="sidebar" style="position:sticky; top:150px;">
            <div class="card" style="width:359px">
              <div class="card-body text-center">
                <a id="goWishList" class="btn btn-main" href="#" style="background-color:#4343fe; border:none">위시리스트 담기</a><br /><br />
                <div class="hover-me">
                  <a id="goEnroll" class="btn btn-main" href="#" style="background-color:#4343fe; border:none">등록</a>
                </div><br />
              </div>
            </div>
          </aside>
        </div>
  </section>

  <form action="" method="POST">
    <input type="hidden" name="" value="">
  </form>

  <jsp:include page="/WEB-INF/views/home/footer.jsp" />

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
  <!-- Custom for this Page -->
  <script>
    let session = "<c:out value='${session}' />"
    let form = $('form');
    let input = $(form).find('input');

    let proId = "<c:out value='${detailList[0].proId }' />";
    let insId = "<c:out value='${detailList[0].insId }' />";
    let parId = "<c:out value='${detailList[0].proParId }' />";

    let canEnroll = '<c:out value="${detailList[0].proPeople }"/>' == '<c:out value="${detailList[0].proMaxPeople }"/>';

    function sessionCheck(){
      if(session == ''){
        alert('로그인이 필요한 서비스입니다.');
        location.href = 'loginForm.do';
        return false;
      }
      return true;
    }

    function enrollCheck(){
      if(canEnroll){
        alert('등록 가능 인원이 모두 찼습니다.')
        return false;
      }
      return true;
    }

    $('#insSelect').click(function(){
      $(form).attr('action', 'insSelect.do');
      $(input).attr('name', "insId").val(insId);
      $(form).submit();
    });

    $('#parSelect').click(function(){
      $(form).attr('action', 'memPartnerSelect.do');
      $(input).attr('name', "parId").val(parId);
      $(form).submit();
    });

    $('#goWishList').click(function(){
      if(sessionCheck()){
        $(form).attr('action', 'wisInsert.do');
        $(input).attr('name', "proId").val(proId);
        $(form).submit();
      }
    });

    $('#goEnroll').click(function(){
      if(sessionCheck() && enrollCheck()){
        $(form).attr('action', 'hisInsertForm.do');
        $(input).attr('name', "proId").val(proId);
        $(form).submit();
      }
    });
  </script>
</body>

</html>