<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="navigation fixed-top">
  <div class="container">
    <!-- main nav -->
    <nav class="navbar navbar-expand-lg navbar-light">
      <!-- logo -->
      <a class="navbar-brand logo" href="home.do">
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
	            <a class="nav-link" href="loginForm.do">파트너 등록</a>
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
            <li class="nav-item ">
              <a class="nav-link" href="memSelect.do">마이페이지</a>
            </li>
          </c:if>
        </ul>
      </div>
    </nav>
    <!-- /main nav -->
  </div>
</header>
<div style="height: 120px;"></div>