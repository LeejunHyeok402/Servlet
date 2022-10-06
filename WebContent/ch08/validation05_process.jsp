<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String passwd = request.getParameter("passwd");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String email = request.getParameter("email");
%>
<p>id: <%=id%></p>
<p>name: <%=name%></p>
<p>password: <%=passwd%></p>
<p>phone: <%=phone1%>-<%=phone2%>-<%=phone3%></p>
<p>email: <%=email%></p>

</body>
</html>