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
.title{
 	font-size: 72px;
  	background: linear-gradient(to bottom, green, yellow);
  	-webkit-background-clip: text;
 	-webkit-text-fill-color: transparent;
}
</style>
</head>
<body class="is-preload">
	<%
	MemberDTO user_info = (MemberDTO) session.getAttribute("user_info");
	%>


	<div id="page-wrapper"></div>

	<!-- Header -->
	<div id="header">

		<!-- Logo -->
		<h1>
			<a href="Main.jsp" class="title"> <Strong>농부樂</Strong></a>
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
								<li><a href="EditProfile.jsp">회원정보 수정</a></li>
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
								<h2>회원 탈퇴</h2>
							</header>
							<p>※주의 사항</p>
							<p>1.회원탈퇴시 회원정보는 바로 삭제 되면 되돌릴수 없습니다.</p>
							<p>2.회원탈퇴시 기존의 서비스들은 이용불가합니다.</p>
							<p>3.회원탈퇴시의 불이익은 책임지지않으니 신중하시길 바랍니다.</p>
							<a href="MemberDelCon.do?id=<%=user_info.getId()%>">
								<button>회원탈퇴</button>
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