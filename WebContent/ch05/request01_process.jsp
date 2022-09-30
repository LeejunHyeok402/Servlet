<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("UTF-8");
		String userid = request.getParameter("name");
		String password = request.getParameter("password");
	%>
	
	<p>아이디: <%=userid%></p>
	<p>비밀번호: <%=password%></p>
</body>
</html>