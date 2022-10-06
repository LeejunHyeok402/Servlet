<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Validation-RegExp</title>
<script type="text/javascript">
	function checkMember() {
		let regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; //영문 대문자/소문자,한글,한글의 자음과 모음만 가능
		let regExpName =/^[가-힣]+$/  ;//이름은한글만 사용가능 ^시작,$끝 , *0이상 반복
		let regExpPasswd = /^[0-9]*$/	;	//비밀번호는 숫자만 사용 가능
		let regExpPhone = 	/^\d{3}-\d{3,4}-\d{4}/	//전화번호 형태만 가능	\d{3}:숫자 3자  \d{3,4}:숫자 3이상 4이하
		let regExpEmail = 	/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[0-9a-zA-Z]{2,3}$/i	//이메일 형태만가능  i:대소문자 구별안함
		//폼 객체
		let form = document.Member;
		let id = form.id.value;
		let name = form.name.value;
		let passwd = form.passwd.value;
		let phone = form.phone1.value + "-"+form.phone2.value+"-" + form.phone3.value;
		let email = form.email.value;
		
		//Regular Expression의 메소드 중 test() => boolean으로 리턴
		//아이디체크
		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작하세요!");
			form.id.select();
			return;
		}
		if(!regExpPasswd.test(passwd)){
			alert("비밀번호는 숫자만 입력해주세요");
			return;
		}
		if(!regExpName.test(name)){
			alert("이름은 한글만 입력해주세요");
			return;
		}
		if(!regExpPhone.test(phone)){
			alert("전화번호 형태만 가능합니다.");
			return;
		}
		if(!regExpEmail.test(email)){
			alert("이메일 형태로 해주세요");
			return;
		}
		form.submit();
	}
</script>
</head>
<body>
	<h3>회원가입</h3>
	<form name="Member" method="post" action="validation05_process.jsp">
		<p>아이디: <input type="text" name="id"></p>
		<p>비밀번호: <input type="password" name="passwd"></p>
		<p>이름: <input type="text" name="name"></p>
		<p>연락처:
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select>-
			<input type="text" maxlength="4" size="4" name="phone2">-
			<input type="text" maxlength="4" size="4" name="phone3">	
		</p>
		<p>이메일: <input type="text" name="email"></p>
		<p><input type="button" value="가입하기" onclick="checkMember()"></p>
	</form>
</body>
</html>