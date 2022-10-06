<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
	function checkLogin(){
		//form => object
		let form = document.loginForm;
		//id 체크 4~12자 이내로 입력 가능
		if(form.id.value.length<4||form.id.value.length>12){
			alert("id는 4~12자 이내로 입력가능")
			return;
		}
		//비밀번호 체크 4자 이상으로 입력
		if(form.passwd.value.length <4){
			alert("pw는 4자 이상으로 입력가능")
			form.passwd.select;
			return;
		}
		form.submit();
	}

</script>
</head>
<body>
	<form name="loginForm" action="validation03_process.jsp" method="post">
		<p>아이디: <input type="text" name="id"></p>
		<p>비밀번호: <input type="password" name="passwd"></p>
		<p><input type="button" value="전송" onclick="checkLogin()"></p>
	</form>
</body>
</html>