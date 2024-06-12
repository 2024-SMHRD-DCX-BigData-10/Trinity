<%@page import="model.MemberDTO"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
   Arcana by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>농부 초기자본계산사이트</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<style type="text/css">
button#sign {
   margin-left: 1000px;
   margin-bottom: 20px;
   background-color: #9acd32;
}

button#login {
   margin-left: 10px;
   background-color: #9acd32;
}

button#mypage {
   margin-left: 1000px;
   margin-bottom: 20px;
   background-color: #9acd32;
}
button#admin {
   margin-left: 1000px;
   margin-bottom: 20px;
   background-color: #9acd32;
}

button#logout {
   margin-left: 10px;
   background-color: #9acd32;
}

h1 {
   font-size: 30px;
   color: black;
}

.title{
    font-size: 72px;
     background: linear-gradient(to bottom, green, yellow);
     -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

a#join {
   color: black;
}

a#login {
   color: black;
}

a#mypage {
   color: black;
}

a#logout {
   color: black;
}
a{
   color: black;
}
li{
   list-style-type: none;
   font-size: 25px;
}
h3{
   font-size: 30px;
   margin-left: 30px;
   margin-bottom: 15px;
}
</style>
</head>
<body class="is-preload">
   <%
   MemberDTO user_info = (MemberDTO) session.getAttribute("user_info");
   %>
   <div id="page-wrapper">

      <!-- Header -->
      <div id="header">

         <!-- Logo -->
         <h1>
            <a href="Main.jsp" class="title"><Strong>농부樂</Strong></a>
         </h1>
         <%
         if (user_info != null) {
         %>
         <%
         if (user_info.getId().equals("admin")) {
         %>
         <button id="admin"><a href="adminpage.jsp">관리자 페이지</a></button> 
         <button id="logout">
            <a href="LogoutCon.do" id="Logout">로그아웃</a>
         </button>
          
         <%} else {%>
         <button id="mypage">
            <a href="Mypage.jsp" id="mypage">마이페이지</a>
         </button>
         <button id="logout">
            <a href="LogoutCon.do" id="logout">로그아웃</a>
         </button>
         <%
         }
         %>
         <%
         } else {
         %>
         <button id="sign">
            <a href="Join.jsp" id="join">회원가입</a>
         </button>
         <button id="login">
            <a href="Login.jsp" id="login">로그인</a>
         </button>
         <%
         }
         %>
         <!-- Nav -->
         <nav id="nav">
            <ul>
               <li class="current"><a href="Main.jsp">Home</a></li>
               <li><a href="Calculator.jsp">계산기</a></li>
               <li><a href="BoardMain.jsp">게시판</a></li>
               <li><a href="Notice.html">공지사항</a></li>
            </ul>
         </nav>

      </div>

      <!-- Banner -->
      <section id="banner">
               <header>
                  <h2>환영합니다!</h2><br>
                  <h2>Copyright 2024. Trinity 농부樂.all rights reserved. </h2>
               </header>
      </section>
      
      <!-- <h3> [사이트 이용안내] </h3>
         <ul>
            <li><b> 저희 사이트는 초기자본을 계산해줍니다.</b></li>
            <li><b> 1. 회원가입 하기 </b></li>
            <li><b> 2. 로그인 하기 </b></li>
            <li><b> 3. 계산기 클릭한후 계산하세요. </b></li>
            <li><b> 4. 게신판에는 사람들과 소통 및 공유를 할 수 있습니다. </b></li>
            <li><b> 5. 가급적 게시판 이용시 안좋은 말은 삼가해주시면 좋겠습니다. </b></li><br>
            <li><b><i> <strong> 저희는 예비농부들을 위해 최선을 다해 사이트의 도움이 되도록 노력하겠습니다.</strong></i> </b></li>
         </ul> -->

      <!-- Scripts -->
      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/jquery.dropotron.min.js"></script>
      <script src="assets/js/browser.min.js"></script>
      <script src="assets/js/breakpoints.min.js"></script>
      <script src="assets/js/util.js"></script>
      <script src="assets/js/main.js"></script>
</body>
</html>