<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% SimpleDateFormat timeFormat = new SimpleDateFormat("H:mm:ss a",new Locale("en", "US")); 
		Calendar calender = Calendar.getInstance();
		response.setIntHeader("Refresh", 5);%>
	
	<p>현재시간은 <%=timeFormat.format(calender.getTime())%></p>
	<p><a href="response_data.jsp">Google 홈페이지로 이동하기</a></p>
	
</body>
</html>