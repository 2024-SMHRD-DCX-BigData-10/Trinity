<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int sum = (Integer)session.getAttribute("sum");
	%>
	
	<h1> 님의 예상 초기 자본은 <%= sum %>원입니다.</h1>
	<a href="Main.jsp"><button>메인</button></a>
	<a href="Calculator.jsp"><button>계산화면</button></a>	
</body>
</html>