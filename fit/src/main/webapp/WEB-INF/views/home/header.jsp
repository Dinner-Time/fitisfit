<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="navigation fixed-top">
  <div class="container">
    <!-- main nav -->
    <nav class="navbar navbar-expand-lg navbar-light">
      <!-- logo -->
      <a class="navbar-brand logo" href="home.do">
        <img style="width:118px;height: 82px;" class="logo-default" src="images/logo.png" alt="logo"/>
        <img style="width:118px;height: 82px;" class="logo-white" src="images/logo.png" alt="logo"/>
      </a>
      <!-- /logo -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation"
        aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navigation">
        <ul class="navbar-nav ml-auto text-center">
          <li class="nav-item ">
            <a class="nav-link" href="loginForm.do">파트너 등록(session)</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="loginForm.do">로그인(session)</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="loginForm.do">마이페이지(session)</a>
          </li>
        </ul>
      </div>
    </nav>
    <!-- /main nav -->
  </div>
</header>