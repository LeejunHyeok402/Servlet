<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<%	//스크립틀릿
		int a = 2;
		int b = 3;
		int sum = a+b;
		out.println("2 + 3 = "+sum);
	%>
	<hr>
	<%	//스크립틀릿
		a++;
		b++;
		sum = a+b;
		out.println("2 + 3 = "+sum);
	%>
</body>
</html>