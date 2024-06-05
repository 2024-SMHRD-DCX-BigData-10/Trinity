<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="assets/css/main.css" />
</head>
<style>
li {
	width: 500px;
	margin-left: auto; 
	margin-right: auto;
	list-style-type: none; 
}
li#ok{
	margin-left: 660px;
}
</style>
<body>
	
	<form action="JoinCon.do" method="post">
		<h2 style="margin-left: 660px"> 농초계회원가입 </h2>
			<ul>
				<li>아이디 입력 <input type="text" name="id" placeholder="아이디를 입력하세요."><br><button type="button" id="btn"> 아이디 중복 확인</button></li><br>
				<li>비밀번호 입력 <input type="password" name="pw" placeholder="비밀번호를 입력하세요."></li><br>
				<li>비밀번호 확인 <input type="password" name="pw1" placeholder="비밀번호 다시 입력하세요."></li><br>
				<li>닉네임 <input type="text" name="name" placeholder="닉네임을 입력하세요."><br><button type="button" id="btn"> 닉네임 중복 확인</button></li><br>
				<li>이메일 입력 <input type="text" name="email"></li><br>
				<li>성별 <select>
							<option value="m"> 남자 </option>
							<option value="f"> 여자 </option>	
						</select> </li><br>
				<li>생년월일 <input type="text" name="birthday" placeholder="ex)19990101"></li><br>
				<li id="ok"><input type="submit" value="회원가입완료"></li>
			
			</ul>
	</form>
</body>
</html>