<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		String id = "";
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getValue().equals("admin")){
			id = cookies[i].getValue();
		}
		if(cookies[i].getValue().equals("")){
			response.sendRedirect("cookie_out.jsp");
		}
	}
	%>
	<p><%=id%>님 반갑습니다.</p>
	<a href="cookie_out.jsp">로그아웃</a>
</body>
</html>