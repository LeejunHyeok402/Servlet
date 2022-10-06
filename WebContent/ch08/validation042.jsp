<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
	function checkKey() {
		console.log(event.keyCode);
		
		if(!(event.keyCode>=48 && event.keyCode<=57)){
			alert("숫자만 입력가능")
			event.returnValue = false;
		}
	}
</script>
</head>
<body>
<!-- 	onkeypress : 키 입력 이벤트 -->
	<form name="frm" action="#" method="post">
		<p>이름: <input type="text" name="name" onkeypress="checkKey()"></p>
		<p><input type="button" value="전송"></p>
	</form>
</body>
</html>