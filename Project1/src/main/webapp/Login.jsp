<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>농초계-로그인</title>
<link rel="stylesheet" href="assets/css/main.css" />
<style>
	h2{
		font-size: 40px;
		margin-left: 700px;
		color: #fff;
		-webkit-text-stroke: 5px transparent;
        -webkit-background-clip: text;
        background-clip: text;
        background-image: linear-gradient(to bottom, yellow, green); 
	}
	li{
		list-style-type: none;
		width: 500px;
		margin-left: auto;
		margin-right: auto; 
	}
	#lo{
		margin-left: 130px;
	}
</style>
</head>
<body>
<!-- 로그인 프로그램 만들기 -->
	<form action="LoginCon.do" method="post">
		
			<h2> 로그인 </h2>
		
		<ul>
			<li>아이디 <input type="text" name="id"></li><br>
			<li>비밀번호 <input type="password" name="pw"></li><br>
			<li><input type="submit" value="로그인" id="lo"></li>
		</ul>
	</form>
</body>
</html>