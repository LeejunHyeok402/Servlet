<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="page_errorPage_error.jsp" %>
<!--  현제 jsp페이지에 오류가 발생시 오퓨페이지로 이동 -->
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		String str = null;
		//오류발생 null을 toString() 할수 없음
		out.println(str.toString());
	%>
</body>
</html>