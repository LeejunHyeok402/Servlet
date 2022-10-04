<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>

<%
	Enumeration paraNames = request.getParameterNames();
	while(paraNames.hasMoreElements()){
		StringBuffer text = new StringBuffer((String)paraNames.nextElement());
		out.println(text + " : ");
		
		String value = request.getParameter(text.toString());
		out.println(value+"<br>");
		}
%>

</body>
</html>