<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
	<h1> 농초계 회원가입 </h1>
	<form action="" method="post" align="center">
		<table border="1">
			<tr>
				<td>아이디입력</td>
				<td><input type="text" name="id" ><button type="button" id="btn"> 아이디 중복 확인 </button></td>
				
			</tr>
			<tr>
                <td> 비밀번호 입력 </td>
                <td> <input type="password" name="pw"></td>
            </tr>
            <tr>
                <td> 비밀번호 확인 </td>
                <td> <input type="password" name="pw1"></td>
            </tr>
            <tr>
                <td> 나이 </td>
                <td> <input type="text" name="age"></td>
            </tr>
            <tr>
                <td> 성별 </td>
                <td>남<input type="radio" name="gender" value="man"> 
                여<input type="radio" name="gender" value="female"></td>
            </tr>
            <tr>
                <td> 이메일 입력 </td>
                <td> <input type="text" name="email"></td>
            </tr>
            <tr>
            <td colspan="2"><input type="submit" value="회원가입완료"></td>
            </tr>
		</table>
	</form>
</body>
</html>