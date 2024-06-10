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
		button#logout{
		margin-left:1000px;
		margin-bottom: 20px;
		background-color: #9acd32;
		}
		
		h1{
			font-size: 30px;
			color: black;
			
		}
		a#logo{
			color: black;
			padding-bottom: 15px;
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
		a#logout{
		color: black;
		}
		p{
		color: red;
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
									<h2>초기자본 계산기</h2>
								</header>

								<table>
									<tr>
										<td><h2>계산기</h2></td>
									</tr>
								</table>
								<form action="CalCon.do">
								<table>
									<tr>
										<td> 지역 </td>
										<td> <select name="local">
											<option value="경기"> 경기 </option>	
											<option value="강원"> 강원 </option>
											<option value="충북"> 충북 </option>
											<option value="충남"> 충남 </option>
											<option value="전북"> 전북 </option>
											<option value="전남"> 전남 </option>
											<option value="경북"> 경북 </option>
											<option value="경남"> 경남 </option>
											</select></td>
									</tr>
									<tr>
										<td> 토지크기 </td>
										<td><input type="number" name="size">평</td>
									</tr>
									<tr>
										<td> 기를작물 </td>
										<td> <select name="seed">
											<option value="고추"> 고추 </option>
											<option value="배추"> 배추 </option>
											<option value="무"> 무 </option>
										</select> </td>
									</tr>
									<tr>
										<td> 농약사용여부 </td>
										<td> <select name="pesticide">
											<option value="yes"> 사용 </option>
											<option value="no"> 미사용 </option>
										</select> </td>
									</tr>
									<tr>
										<td> 농기구 </td>
										<td> <select name="machine">
											<option value="yes"> 사용 </option>
											<option value="no"> 미사용 </option>
										</select> </td>
									</tr>
									<tr>
										<td> 인력수 </td>
										<td><input type="number" name="people">명</td>
									</tr>
									<tr>
										<td colspan="2"> <input type="submit" value="계산하기"></td>
									</tr>
								</table>
								</form>

								

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