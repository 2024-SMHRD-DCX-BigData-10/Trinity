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
		margin-left: 600px; 
	}
	li{
		list-style-type: none;
		width: 500px;
		margin-left: 450px; 
	}
	li1{
		margin-left: 600px;
	}
</style>
</head>
<body>
<!-- 로그인 프로그램 만들기 -->
	<form action="LoginCon.do" method="post">
		<h2> <i>농초계 로그인</i> </h2>
		<ul>
			<li>아이디 <input type="text" name="id"></li><br>
			<li>비밀번호 <input type="password" name="pw"></li><br>
			<li><input type="submit" value="로그인"></li>
		</ul>
	</form>
	<script type="text/javascript">
		
	</script>
</body>
</html>