<%@page import="java.util.ArrayList"%>
<%@page import="model.CommentDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.MemberDTO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="model.BoardDAO"%>
<%@page import="model.BoardVO"%>
<%@page import="model.CommentVO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" errorPage="Login.jsp"%>
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
img.contentimg {
	width: 50%;
	height: 50%;
}

.title {
	font-size: 72px;
	background: linear-gradient(to bottom, green, yellow);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}
h1 {
	font-size: 30px;
	color: black;
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
				<a href="Main.jsp" class="title"> <Strong>농부樂</Strong></a>
			</h1>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="Main.jsp">Home</a></li>
					<li><a href="Calculator.jsp">계산기</a></li>
					<li class="current"><a href="BoardMain.jsp">게시판</a></li>
					<li><a href="Notice.html">공지사항</a></li>
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

								<%
								int num = Integer.parseInt(request.getParameter("num"));
								BoardVO board = new BoardDAO().detailBoard(num);

								ArrayList<CommentVO> cvo = new CommentDAO().allcoment(board.getB_idx());
								pageContext.setAttribute("cvo", cvo);
								%>
								<div id="board">
									<table>
										<tr>
											<td>제목</td>
											<td><%=board.getTitle()%></td>
										</tr>
										<tr>
											<td>작성자</td>
											<td><%=board.getId()%></td>
										</tr>
										<tr>
											<td>다운로드</td>
											<td><a href="./file/<%=board.getFilename()%>" download><%=board.getFilename()%></a></td>
										</tr>
										<tr>
											<td colspan="2">내용</td>
										</tr>
										<tr>
											<td colspan="2">
												<h5><%=board.getContent()%></h5> <img alt=""
												src="./file/<%=board.getFilename()%>" class="contentimg">
											</td>
										</tr>
									</table>
									<p>댓글</p>
									<table>
										<tr>
											<td>작성자</td>
											<td>댓글</td>
											<td>삭제</td>
										</tr>
										<c:forEach var="b" items="${cvo}">
											<tr>
												<td>${b.mem_id }</td>
												<td>${b.comment_content }</td>
												<td><a
													href="CommentDel.do?com_id=${b.comment_id }&mem_id=<%=user_info.getId()%>">삭제</a></td>
											</tr>
										</c:forEach>
									</table>
									<%
									if (user_info != null) {
									%>
									<form action="CommentWrite.do" method="post">
										<table>
											<tr>
												<td>댓글<input type="hidden" NAME="mem_id"
													value="<%=user_info.getId()%>"> <input
													type="hidden" NAME="b_idx" value="<%=board.getB_idx()%>">
												</td>
												<td><input type="text" maxlength='400' name="content"></td>
												<td><input type="submit" value="작성하기"></td>
											</tr>
										</table>
									</form>

									<%
									}else{
									%>
									<form action="" method="post">
										<table>
											<tr>
												<td>댓글
												</td>
												<td><input type="text" maxlength='400' name="content" placeholder="로그인하세요"></td>
												<td><input type="submit" value="작성하기"></td>
											</tr>
										</table>
									</form>
									
									<%
									}
									%>
									<button>
										<a href="BoardMain.jsp">뒤로가기</a>
									</button>

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