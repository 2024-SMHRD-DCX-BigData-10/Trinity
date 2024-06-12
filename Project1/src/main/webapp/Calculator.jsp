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
		margin-left:10px;
		margin-bottom: 20px;
		background-color: #9acd32;
		}
		
		h1{
			font-size: 30px;
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
		a#logout{
		color: black;
		}
		p{
		color: red;
		}
		button#mypage{
			margin-left: 1000px;
			margin-bottom: 20px;
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
	if(user_info==null){
		%>
		<script>alert('로그인정보가 필요합니다.'); 
		location.href='Login.jsp';</script>
		<%
	}
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
			<button id="mypage">
				<a href="Mypage.jsp" id="mypage">마이페이지</a>
			</button>
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
				<a href="Login.jsp" id="login">로그인</a>
			</button>
			<%
			}
			%>
			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="Main.jsp">Home</a></li>
					<li class="current"><a href="Calculator.jsp">계산기</a></li>
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

								<footer> </footer>
							</section>

						</div>
					</div>
					<div class="col-8  col-12-narrower imp-narrower">
						<div id="content">

							<!-- Content -->


								<table>
									<tr>
										<td><h2>초기자본 계산기</h2></td>
									</tr>
								</table>
								<form action="CalCon.do" method="post">
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
									<tr id="tr1"> <td>&nbsp</td> </tr>
									<tr>
										<td> 토지크기 </td>
										<td><input type="number" name="size" min=0>㎡</td>
									</tr>
									<tr id="tr1"> <td>&nbsp</td> </tr>
									<tr>
										<td> 기를작물 </td>
										<td> <select name="seed">
											<option value="고추"> 고추 </option>
											<option value="배추"> 배추 </option>
											<option value="무"> 무 </option>
										</select> </td>
									</tr>
									<tr id="tr1"> <td>&nbsp</td> </tr>
									<tr>
										<td> 농약사용여부 </td>
										<td> <select name="pesticide">
											<option value="yes"> 사용 </option>
											<option value="no"> 미사용 </option>
											</select> 
										</td>
									</tr>
									<tr id="tr1"> <td>&nbsp</td> </tr>
									<tr>
										<td> 농기계 </td>
										<td> <select name="machine">
											<option value="yes"> 사용 </option>
											<option value="no"> 미사용 </option>
										</select> </td>
									</tr>
									<tr id="tr1"> <td>&nbsp</td> </tr>

									<tr>
										<td colspan="2"> <input type="submit" value="계산하기"></td>
									</tr>
								</table>
								</form>

								
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
		
		<script type="text/javascript">
		
		
		</script>
</body>
</html>