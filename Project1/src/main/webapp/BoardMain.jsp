<%@page import="model.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="model.BoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8"
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
	.title{
 	font-size: 72px;
  	background: linear-gradient(to bottom, green, yellow);
  	-webkit-background-clip: text;
 	-webkit-text-fill-color: transparent;
	}
	h1{
			font-size: 30px;
			color: black;
			
	}
</style>
</head>
<body class="is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">

			<!-- Logo -->
			<h1>
				<a href="Main.jsp" class="title"> <Strong>농부樂</Strong></a>
			</h1>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="Main.jsp">Home</a></li>
					<li><a href="Calculator.jsp">계산기</a></li>
					<li class="current"><a href="BoardMain.jsp">게시판</a></li>
					
				</ul>
			</nav>

		</div>

		<!-- Main -->
		<section class="wrapper style1">
			<div class="container">
				<div class="row gtr-200">
					<div class="col-3 col-12-narrower">
						<div id="sidebar1">

							<!-- Sidebar 1 -->

							<section>
								<h3>Just a Subheading</h3>
								<p>Phasellus quam turpis, feugiat sit amet ornare in,
									hendrerit in lectus. Praesent semper mod quis eget mi. Etiam eu
									ante risus. Aliquam erat volutpat. Aliquam luctus et mattis
									lectus sit amet pulvinar. Nam turpis et nisi etiam.</p>
								<footer>
									<a href="#" class="button">Continue Reading</a>
								</footer>
							</section>

							<section>
								<h3>Another Subheading</h3>
								<ul class="links">
									<li><a href="#">Amet turpis, feugiat sit amet</a></li>
									<li><a href="#">Ornare in hendrerit lectus</a></li>
									<li><a href="#">Semper mod quis eget dolore</a></li>
									<li><a href="#">Consequat lorem phasellus</a></li>
									<li><a href="#">Amet turpis feugiat amet</a></li>
									<li><a href="#">Semper mod quisturpis nisi</a></li>
								</ul>
								<footer>
									<a href="#" class="button">More Random Links</a>
								</footer>
							</section>

						</div>
					</div>
					<div class="col-6 col-12-narrower imp-narrower">
						<div id="content">

							<!-- Content -->

							<article>
								<header>
									<h2>자유게시판</h2>
								</header>

								<span class="image featured"><img src="images/banner.jpg"
									alt="" /></span>
									<% ArrayList<BoardVO> boards= new BoardDAO().allBoard();
									pageContext.setAttribute("boards",boards);
									%>
								<div id="board">
									<table>
										<tr>
											<td>게시물 번호</td>
											<td>제목</td>
											<td>작성자</td>
											<td>시간</td>
										</tr>
										<!--varStatus: 상태변수 -->	
										<c:forEach var="b" items="${boards}" varStatus="s">
											<tr>
												<td>${s.count}</td>
												<td><a href="BoardDetail.jsp?num=${b.b_idx}">${b.title}</a></td>
												<td>${b.id}</td>
												<td>${b.b_date}</td>
											</tr>
										</c:forEach>

									</table>

									<a href="Main.jsp"><button id="writer">홈으로가기</button></a> 
									<a href="BoardWrite.jsp"><button id="writer">작성하러가기</button></a>
								</div>
							</article>

						</div>
					</div>
					<div class="col-3 col-12-narrower">
						<div id="sidebar2">

							<!-- Sidebar 2 -->

							<section>
								<h3>Another Subheading</h3>
								<ul class="links">
									<li><a href="#">Amet turpis, feugiat sit amet</a></li>
									
								</ul>
								<footer>
									<a href="#" class="button">More Random Links</a>
								</footer>
							</section>

							<section>
								<h3>Just a Subheading</h3>
								<p>Phasellus quam turpis, feugiat sit amet ornare in,
									</p>
								<footer>	
									<a href="#" class="button">Continue Reading</a>
								</footer>
							</section>

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