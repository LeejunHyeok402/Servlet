<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ page errorPage="errorPage_error.jsp" %>--%>
<% // errorPage.jsp 가 실행중 오류 발생시 errorPage_error.js요청%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<!-- .toUpperCase()가 실행중 오류 발생시  -->
	name : <%=request.getParameter("name").toUpperCase()%>
</body>
</html>