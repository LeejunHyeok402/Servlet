<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<% Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status.code"); %>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<p>오류 발생 </p>
	<table border="1">
		<tr>
		<td>Error: </td><td><%=exception.getClass().getName() %>: 오류발생!!!</td>
		</tr>
		<tr>
		<td>URI:</td><td><%=request.getAttribute("javax.servlet.error.request_uri")%></td>
		</tr>
		<tr>
		<td>Status code:</td><td><%=response.getStatus()%></td>
		</tr>
	</table>
</body>
</html>