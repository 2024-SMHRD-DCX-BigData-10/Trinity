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
<title>농초계-관리자 페이지</title>
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

a#logout {
	color: black;
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
<c:set var="memList" value="${MemberDAO.selectMember()}">
 </c:set>

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
								<li><a href="adminpage.jsp">회원 정보 조회</a></li>

								<li><a href="#">게시물 조회</a></li>
								<li><a href="#">댓글조회</a></li>
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
								<h2>회원 정보 조회</h2>
							</header>

							<table>
								<tr>
									<td><h2>회원</h2></td>
								</tr>
								<tr>
									<td>ID</td>
									<td>Pw</td>
									<td>닉네임</td>
									<td>이메일</td>
									<td>성별</td>
									<td>생일</td>
									<td>가입일자</td>
									<td>삭제</td>
								</tr>
								<c:forEach items="${memList}" var="member">
								<tr>
									<td>${member.id}</td>
									<td>${member.pw}</td>
									<td>${member.name}</td>
									<td>${member.email}</td>
									<td>${member.gender}</td>
									<td>${member.birthday}</td>
									<td>${member.signday}</td>
									<td><a href="DelCon.do?id=${member.id}">삭제</a> </td>
								</tr>
								</c:forEach>

							</table>

							

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