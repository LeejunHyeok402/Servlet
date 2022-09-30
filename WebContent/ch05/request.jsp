<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	<!-- process.jsp?name=개똥이 -->
	<!-- ?name=개똥이  -> Query String /요청파라미터/HTTP 파라미터  -->
	<!-- name=개똥이 => request 객체에 들어감 -->
	<form action="process.jsp" method="post">
		이름: <input type="text" name="name"/>
		<input type="submit" value="전송">
	</form>
</body>
</html>