<%@page import="java.rmi.server.UID"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="isErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		int a = 0;
	
			if(a == 0){
				
			throw new RuntimeException();
			}
		
	
	%>
</body>
</html>