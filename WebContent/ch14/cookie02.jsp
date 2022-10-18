<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
	//name은 userId,value는 admin
// 	Cookie cookie_id = new Cookie("userId",user_id);
	//name은 userPw, value는 1234
// 	Cookie cookie_pw = new Cookie("userPw",user_pw);
	
	//모든 쿠키 정보를 가져와보자. 요청시 쿠키도 함께 전달 됨
	Cookie[] cookies = request.getCookies();
	out.println("현재 설정된 쿠키의 개수: "+cookies.length + "<br>");
	out.println("<hr>");
	for(int i=0;i<cookies.length;i++){
		out.println("쿠키["+i+"] : "+cookies[i]+"<br>");
		out.println("설정된 쿠키 속성 이름 ["+i+"] : "+cookies[i].getName()+"<br>");
		out.println("설정된 쿠키 속성 값 ["+i+"] : "+cookies[i].getValue()+"<br>");
	}
	out.println("세션id: "+session.getId()+"<br>");
	%>
	
	<a href="cookie03.jsp">쿠키 모두 제거</a>
</body>
</html>