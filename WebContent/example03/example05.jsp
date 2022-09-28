<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="./Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	현재시간: <%=Calendar.getInstance().getTime() %>
	<%--액션태그로 include하면 parameter을 보낼수 있다. --%>
	<jsp:include page="Header.jsp">
		<jsp:param value="d001" name="id"/>
	</jsp:include>
</body>
</html>