<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% String id = request.getParameter("id");
	if(id.length() == 0){
		throw new ServletException();
	}
		String password = request.getParameter("password");
		out.print(id+" : "+password);
	%>
</body>
</html>