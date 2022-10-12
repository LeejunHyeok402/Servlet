<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>

<%
	try{
		int a = 100/0;
	}catch(Exception e){
%>
	<p> 오류 발생 : <%= e.getLocalizedMessage() %>
<%	
	}
%>

</body>
</html>