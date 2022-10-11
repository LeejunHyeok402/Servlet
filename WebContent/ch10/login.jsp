<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>security</title>
</head>
<body>
	<!-- j_security_check: 폼 기반 인증처리 action 속성 값
	로그인 인증
	권한이 있는가 -->
	<form  name="loginForm" method="post" action="j_security_check">
		<p>ID : <input type="text" name="j_username"/></p>
		<p>비밀번호 : <input type="password" name="j_password"/></p>
		<p><input type="submit" value="로그인"/></p>
	</form>
</body>
</html>