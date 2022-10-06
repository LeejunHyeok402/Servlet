<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
	function CheckForm(){
		const form = document.loginForm;
		//object
		console.log("form의 타입: "+typeof(form));
		if(form.id.value == ""){
			alert("아이디를 입력해주세요");
			return false;
		}else if(form.passwd.value == ""){
			alert("비밀번호를 입력해주세요");
			form.passwd.focus();
			return false;
		}else if(/(\w)\1\1/.test(form.passwd.value)){
	        alert('같은 문자를 3번 이상 사용하실 수 없습니다.');
	        return false;
		}else if(form.passwd.value.search(form.id.value)>-1){
			alert("비밀번호에 아이디가 포함되었습니다.")
			return false;
		}else if(form.passwd.value != form.passwdcheck.value){
			alert("비밀번호와 비밀번호 확인이 같지 않습니다.")
		}
		
		form.submit();
	}

</script>
</head>
<body>
	<form name="loginForm" action="validation02_process.jsp" method="post">
		<p>아이디: <input type="text" name="id"/></p>
		<p>비밀번호: <input type="password" name="passwd"/></p>
		<p>비밀번호 확인: <input type="password" name="passwdcheck"/></p>
		<p><input type="button" value="전송" onclick="CheckForm()"/></p>
	</form>
</body>
</html>