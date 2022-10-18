<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("admin")&&pw.equals("1234")){
			session.setAttribute("user_id", id);
		}else{
			session.setAttribute("user_id", "");
		}
			
			response.sendRedirect("welcome.jsp");
	%>
</body>
</html>