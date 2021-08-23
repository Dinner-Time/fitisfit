<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<style type="text/css">

.memSlideMenu, .parSlideMenu, .admSlideMenu {
	display: none;
}

.slideLi {
	margin-right: 50px;
}

</style>

<script type="text/javascript">
	$(document).ready(function() {
		$("#memberPage").click(function() {
			$(".memSlideMenu").slideToggle(400);
		})

		$("#partnerPage").click(function() {
			$(".parSlideMenu").slideToggle(400);
		})

		$("#adminPage").click(function() {
			$(".admSlideMenu").slideToggle(400);
		})
	})
</script>

<header class="navigation fixed-top">
  <div class="container">
    <!-- main nav -->
    <nav class="navbar navbar-expand-lg navbar-light">
      <!-- logo -->
      <a class="navbar-brand logo" href="main.do">
        <img style="width:118px;height: 82px;" class="logo-default" src="images/logo.png" alt="logo" />
        <img style="width:118px;height: 82px;" class="logo-white" src="images/logo.png" alt="logo" />
      </a>
      <!-- /logo -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation"
        aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navigation">
        <ul class="navbar-nav ml-auto text-center">
          <c:if test="${session.author != 'A' and session.author != 'P'}">
            <li class="nav-item ">
              <a class="nav-link" href="parInsertForm.do">파트너 등록</a>
            </li>
          </c:if>
          <c:if test="${session == null }">
            <li class="nav-item ">
              <a class="nav-link" href="loginForm.do">로그인</a>
            </li>
          </c:if>
          <c:if test="${session != null }">
            <li class="nav-item ">
              <a class="nav-link" href="#" onclick="(function(){
                  if(confirm('로그아웃 하시겠습니까?')){
                    location.href = 'logout.do';
                  }})()">로그아웃</a>
            </li>
            <c:if test="${session.author == 'M'}">
	            <li class="nav-item ">
	              <a class="nav-link" href="#" id="memberPage">마이 페이지</a>
	            </li>
            </c:if>
            <c:if test="${session.author == 'A'}">
	            <li class="nav-item ">
	              <a class="nav-link" href="#" id="adminPage">관리자 페이지</a>
	            </li>
	        </c:if>
	        <c:if test="${session.author == 'P'}">
	            <li class="nav-item ">
	              <a class="nav-link" href="#" id="partnerPage">파트너 페이지</a>
	            </li>
            </c:if>
          </c:if>
        </ul>
      </div>
    </nav>
    <!-- /main nav -->
   
    
  </div>
  
	<!-- 회원 메뉴 시작 -->
	<div class="memSlideMenu">
		<nav class="navbar justify-content-center navbar-expand-sm bg-light">
		  <ul class="navbar-nav">
		    <li class="slideLi nav-item">
		      <a class="nav-link" href="memSelect.do">회원정보</a>
		    </li>
		    <li class="slideLi nav-item">
		      <a class="nav-link" href="mypageHistory.do">수강내역</a>
		    </li>
		    <li class="slideLi nav-item">
		      <a class="nav-link" href="wisList.do">위시리스트</a>
		    </li>
		  </ul>
		</nav>
	</div>
	<!-- 회원 메뉴 끝 -->
	
	<!-- 관리자 메뉴 시작 -->
	<div class="admSlideMenu">
		<nav class="navbar justify-content-center navbar-expand-sm bg-light">
		  <ul class="navbar-nav">
		    <li class="slideLi nav-item">
		      <a class="nav-link" href="adminMemSelectList.do">회원관리</a>
		    </li>
		    <li class="slideLi nav-item">
		      <a class="nav-link" href="parAdmWaitList.do">파트너관리</a>
		    </li>
		    <li class="slideLi nav-item">
		      <a class="nav-link" href="proAdmWaitList.do">프로그램관리</a>
		    </li>
		    <li class="slideLi nav-item">
		      <a class="nav-link" href="revSelectListByAdm.do">후기관리</a>
		    </li>
		  </ul>
		</nav>
	</div>
	<!-- 관리자 메뉴 끝 -->

	<!-- 파트너 메뉴 시작 -->
	<div class="parSlideMenu">
		<nav class="navbar justify-content-center navbar-expand-sm bg-light">
		  <ul class="navbar-nav">
		    <li class="slideLi nav-item">
		      <a class="nav-link" href="parSelect.do">파트너정보</a>
		    </li>
		    <li class="slideLi nav-item">
		      <a class="nav-link" href="insListPartner.do">강사관리</a>
		    </li>
		    <li class="slideLi nav-item">
		      <a class="nav-link" href="proParSimpleList.do">프로그램관리</a>
		    </li>
		    <li class="slideLi nav-item">
		      <a class="nav-link" href="revSelectListByPar.do">후기관리</a>
		    </li>
		  </ul>
		</nav>
	</div>
	<!-- 파트너 메뉴 끝 -->
	
</header>
<div style="height: 150px;"></div>