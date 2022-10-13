<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<p>오류 발생: <%=exception.getMessage()%></p>
<!-- include 액션 태그 : 요청 파라미터를 보낼수 있음 (정적) -->
<jsp:include page="exception.jsp"/>
<!-- include 디렉티브: 요청 파라미터를 보낼수 없음(동적) -->
<%@ include file="exception.jsp" %>
</body>
</html>