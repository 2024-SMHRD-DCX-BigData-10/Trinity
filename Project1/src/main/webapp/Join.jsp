<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="assets/css/main.css" />
<style>
table {
	width: 280px;
	height: 550px;
	margin: auto;
}

.email {
	width: 127px;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-color: lightgray;
	border-radius: 15px;
	outline: none;
	padding-left: 10px;
	background-color: rgb(233, 233, 233);
}

.text {
	width: 250px;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-radius: 15px;
	outline: none;
	padding-left: 10px;
	background-color: rgb(233, 233, 233);
}

select {
	width: 100px;
	height: 32px;
	font-size: 15px;
	border: 1;
	border-color: lightgray;
	border-radius: 15px;
	outline: none;
	padding-left: 10px;
}

.btn {
	width: 262px;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-radius: 15px;
	outline: none;
	padding-left: 10px;
	background-color: rgb(164, 199, 255);
}

.btn:active {
	width: 262px;
	height: 32px;
	font-size: 15px;
	border: 0;
	border-radius: 15px;
	outline: none;
	padding-left: 10px;
	background-color: rgb(61, 135, 255);
}
tr#tr1{
	height: 5px;
	!important;
}
button{
	background-color: #9acd32;
}
</style>
</head>

<body>

	<form action="JoinCon.do" method="post">
		<table>
			<tr>
				<td><h2>회원가입</h2></td>
			</tr>
			<tr>
				<td>아이디</td>
			</tr>
			<tr>
				<td><input type="text" class="text" name="id"></td>
			</tr>
			<tr id="tr1"> <td>&nbsp</td> </tr>
			<tr>
				<td> <button type="button" id="idcheck">아이디중복확인</button><br>
				<span id="idC"> </span> </td>
				
			</tr>
			<tr> <td>&nbsp</td> </tr>
			<tr>
				<td>비밀번호</td>
			</tr>
			<tr>
				<td><input type="password" class="text" name="pw"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
			</tr>
			<tr>
				<td><input type="password" class="text" name="pw1"></td>
			</tr>
			<tr>
				<td>닉네임</td>
			</tr>
			<tr>
				<td><input type="text" class="text" name="name"></td>
			</tr>
			<tr>
				<td>생년월일</td>
			</tr>
			<tr>
				<td><input type="date" class="text" name="birthday"></td>
			</tr>
			<tr>
				<td>성별</td>
			</tr>
			<tr>
				<td><select name="gender" class="text">
						<option value="">성별 선택</option>
						<option value="m">남자</option>
						<option value="f">여자</option></td>
			</tr>
			<tr>
				<td>이메일</td>
			</tr>
			<tr>
				<td><input type="text" class="email" name="email"></td>
			</tr>
			<tr>
				<td><input type="submit" value="가입하기" class="btn"></td>
			</tr>
		</table>
	</form>
	 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
	$('#idcheck').on('click',function(){
		var id = $('input[name=id]').eq('0').val();
		console.log(id);
		$.ajax({
			url : "idcheckCon.do",
			type : 'get',
			data : { /*보낼 데이터*/
				id : id
			},
			dataType : "text",/* 실행 결과의 데이터 타입 */
			success : function(result){
				console.log(result)
				$('#idC').html(result);
			},
			error : function(e){
				console.log(e)
			}
			
		});
	
	
});
</script>
</body>
</html>