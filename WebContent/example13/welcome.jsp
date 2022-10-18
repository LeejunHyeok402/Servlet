<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String)session.getAttribute("user_id");
		if(id.equals("")||id == null){
			response.sendRedirect("session_out.jsp");
		}
		
	%>
	<p><%=id%>님 반갑습니다.</p>
	<a href="session_out.jsp">로그아웃</a>
</body>
</html>