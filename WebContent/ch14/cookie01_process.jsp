<%@page import="com.sun.corba.se.spi.activation.Repository"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin")&&user_pw.equals("1234")){
			//쿠키 객체 생성
			//name은 userId,value는 admin
			Cookie cookie_id = new Cookie("userId",user_id);
			//name은 userPw, value는 1234
			Cookie cookie_pw = new Cookie("userPw",user_pw);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.println(user_id+"프로!");
			out.println("<a href='cookie02.jsp'>쿠키정보확인</a>");
		}else{
			
			out.println("쿠키 설정 실패");
		}
	%>
</body>
</html>