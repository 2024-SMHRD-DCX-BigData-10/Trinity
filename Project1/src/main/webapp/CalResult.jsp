<%@page import="java.util.ArrayList"%>
<%@page import="model.MemberDTO"%>
<%@ page import="model.MemberDAO"%>
<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	margin-left: 10px;
	margin-bottom: 20px;
	background-color: #9acd32;
}

h1 {
	font-size: 30px;
	color: black;
}
a#mypage {
	color: black;
}

a#logout {
	color: black;
}
button#mypage {
	margin-left: 1000px;
	margin-bottom: 20px;
}

.title {
	font-size: 72px;
	background: linear-gradient(to bottom, green, yellow);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}
#calmove{
margin: 0px !important;
}
</style>
</head>
<body class="is-preload">
	<%
	ArrayList<Integer>sum = (ArrayList)session.getAttribute("sum");
	MemberDTO user_info = (MemberDTO) session.getAttribute("user_info");
	%>



	<div id="page-wrapper"></div>

	<!-- Header -->
	<div id="header">

		<!-- Logo -->
		<h1>
			<a href="Main.jsp" class="title"> <Strong>농부樂</Strong></a>
		</h1>
		<button id="mypage">
			<a href="Mypage.jsp" id="mypage">마이페이지</a>
		</button>
		<button id="logout">
			<a href="LogoutCon.do" id="logout">로그아웃</a>
		</button>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="Main.jsp">Home</a></li>
				<li class="current"><a href="Calculator.jsp">계산기</a></li>
				<li><a href="BoardMain.jsp">게시판</a></li>

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
								<td><h2>계산 결과</h2></td>
							</tr>
						</table>

						<table>
							<tr>
								<td colspan="2" style="font-size: 30px;"><strong><%=user_info.getName()%></strong>님의 예상 초기 자본결과 입니다.
								</td>
							</tr>
							<tr>
								<td colspan="2"><br>
								</td>
							</tr>
							<tr>
								<td colspan="2">
								<strong>종자</strong> <fmt:formatNumber value="${sum.get(0)}" pattern="#,###"/>원
								</td>
							</tr>
							<tr>
								<td colspan="2"><br>
								</td>
							</tr>
							<tr>
								<td colspan="2">
								<strong>토지</strong> : <fmt:formatNumber value="${sum.get(1)}" pattern="#,###"/>원
								</td>
							</tr>
							<tr>
								<td colspan="2"><br>
								</td>
							</tr>
							<tr>
								<td colspan="2">
								<strong>농약&비료</strong> : <fmt:formatNumber value="${sum.get(2)}" pattern="#,###"/>원
								</td>
							</tr>
							<tr>
								<td colspan="2"><br>
								</td>
							</tr>
							<tr>
								<td colspan="2">
								<strong>농기계</strong> : <fmt:formatNumber value="${sum.get(3)}" pattern="#,###"/>원
								</td>
							</tr>
							<tr>
								<td colspan="2"><br>
								</td>
							</tr>
							<tr>
								<td colspan="2">
								<strong>총 합계</strong> : <fmt:formatNumber value="${sum.get(4)}" pattern="#,###"/>원
								</td>
							</tr>
							<tr id="tr1">
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td><a href="Main.jsp"><button>메인</button></a></td>
								<td><a href="Calculator.jsp" id="calmove"><button>계산화면</button></a></td>
							</tr>

						</table>


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