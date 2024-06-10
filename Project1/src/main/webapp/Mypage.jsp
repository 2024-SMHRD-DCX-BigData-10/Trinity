<%@page import="java.util.ArrayList"%>
<%@page import="model.MemberDTO"%>
<%@ page import="model.MemberDAO"%>
<%@ page isELIgnored="false" language="java"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
   Arcana by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>농초계-마이페이지</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<style type="text/css">
button#logout {
   margin-left: 1000px;
   margin-bottom: 20px;
   background-color: #9acd32;
}

h1 {
   font-size: 30px;
   color: black;
}

a#logo {
   color: black;
   padding-bottom: 15px;
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

p {
   color: red;
}
</style>
</head>
<body class="is-preload">
   <%
   MemberDTO user_info = (MemberDTO) session.getAttribute("user_info");
   String gen;
   if (user_info.getGender().equals("m")) {
      gen = "남자";
   } else {
      gen = "여자";
   }
   %>


   <div id="page-wrapper"></div>

   <!-- Header -->
   <div id="header">

      <!-- Logo -->
      <h1>
         <a href="Main.jsp" id="logo"> <Strong>농부 초기자본계산 사이트</Strong></a>
      </h1>

      <%
      if (user_info != null) {
      %>
      <button id="logout">
         <a href="LogoutCon.do" id="logout">로그아웃</a>
      </button>
      <%
      } else {
      %>
      <button id="sign">
         <a href="Join.jsp" id="join">회원가입</a>
      </button>
      <button id="login">
         <a href="Login.html" id="login">로그인</a>
      </button>
      <%
      }
      %>
      <!-- Nav -->
      <nav id="nav">
         <ul>
            <li><a href="Main.jsp">Home</a></li>
            <li><a href="Calculator.html">계산기</a></li>
            <li><a href="BoardMain.jsp">게시판</a></li>
            <li><a href="Notice.html">공지사항</a></li>
         </ul>
      </nav>

   </div>

   <!-- Main -->
   <section class="wrapper style1">
      <div class="container">
         <div class="row gtr-200">
            <div class="col-4 col-12-narrower">
               <div id="sidebar">

                  <!-- Sidebar -->

                  <section></section>

                  <section>
                     <h3>마이페이지</h3>
                     <ul class="links">
                        <li><a href="Mypage.jsp">내 정보 조회</a></li>

                        <li><a href="MemberDel.jsp">회원탈퇴</a></li>
                        <li><a href="#">내가 쓴 글</a></li>
                        <li><a href="#">내가 쓴 댓글</a></li>
                     </ul>
                     <footer> </footer>
                  </section>

               </div>
            </div>
            <div class="col-8  col-12-narrower imp-narrower">
               <div id="content">

                  <!-- Content -->

                  <article>
                     <header>
                        <h2>내 정보 조회</h2>
                     </header>


                     <table>

                        <tr>
                           <td>ID</td><td><%=user_info.getId()%></td>
                        </tr>
                        <tr>
                        	<td>Pw</td><td><%=user_info.getPw()%></td>
                        </tr>
                         <tr>
                        	<td>닉네임</td><td><%=user_info.getName()%></td>
                        </tr>
                         <tr>
                        	<td>이메일</td><td><%=user_info.getEmail()%></td>
                        </tr>
                         <tr>
                        	<td>성별</td> <td><%=gen%></td>
                        </tr>
                         <tr>
                        	<td>생일</td><td><%=user_info.getBirthday()%></td>
                        </tr>
                         <tr>
                        	<td>가입일자</td><td><%=user_info.getSignday()%></td>
                        </tr>

						</table>

                     <a href="EditProfile.jsp">
                        <button>회원정보 수정</button>
                     </a>

                  </article>

               </div>
            </div>
         </div>
      </div>

   </section>



   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.dropotron.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>
</body>
</html>