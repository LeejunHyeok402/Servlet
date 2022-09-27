<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="./Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	현재시간: <%=Calendar.getInstance().getTime() %>
</body>
</html>