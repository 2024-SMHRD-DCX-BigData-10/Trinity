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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(!"id".equals(id) || !"pw".equals("pw")){
			out.println("<script>alert('아이디 또는 비밀번호가 잘못 입력되었습니다.'); history.back();</script>");
		}else{
			out.println("<script>alert('로그인 성공!'); location.href='Login.jsp';</script>");
		}
	%>
</body>
</html>