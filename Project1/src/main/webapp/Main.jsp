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
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<style type="text/css">
		button#sign{
		margin-left:1000px;
		margin-bottom: 20px;
		background-color: #9acd32;
		}button#login{
		
		margin-left:10px;
		background-color: #9acd32;
		}
		button#mypage{
			margin-left: 10px;
			background-color: #9acd32;
		}
		h1{
			font-size: 30px;
			color: black;
		}
		a#logo{
			color: black;
		}
		a#join{
		color: black;
		}
		a#login{
		color: black;
		}
		a#mypage{
		color: black;
		}
		</style>
	</head>
	<body class="is-preload">
	<%
	MemberDTO user_info = (MemberDTO)session.getAttribute("user_info");
	%>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">
						
					<!-- Logo -->
						<h1><a href="Main.jsp" id="logo"> <Strong>농부 초기자본계산 사이트</Strong></a></h1>
						<% if(user_info !=null){%>
						<button id="mypage"><a href="Mypage.html" id="mypage">마이페이지</a></button>
						<button id="mypage"><a href="LogoutCon.do" id="mypage">로그아웃</a></button>
										<%} else{%>
						<button id="sign"><a href="Join.jsp"  id="join">회원가입</a></button>
						<button id="login"><a href="Login.html"  id="login">로그인</a></button>
						<%} %>
					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li class="current"><a href="Main.jsp">Home</a></li>
								<li><a href="Calculator.html">계산기</a></li>
								<li><a href="BoardMain.jsp">게시판</a></li>
								<li><a href="Notice.html">공지사항</a></li>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
						<h2>Arcana: <em>A responsive site template freebie by <a href="http://html5up.net">HTML5 UP</a></em></h2>
						<a href="#" class="button">Learn More</a>
					</header>
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