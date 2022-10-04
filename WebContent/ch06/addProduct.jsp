<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 등록</title>
</head>
<body>
	<!-- 머리글에 해당하는 menu.jsp 파일의 내용을 포함하도록 include 액션 태그를 작성 -->
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class ="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	
	<!-- ==============================상품상세시작============================== -->
	<div class="container">
		<form name="newProduct" action="processAddProduct.jsp" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class = "col-sm-2">상품코드</label>
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control">
				</div>
				</div>
				<div class="form-group row">
				<label class = "col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="pname" class="form-control">
				</div>
				</div>
				<div class="form-group row">
				<label class = "col-sm-2">상품가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control">
				</div>
				</div>
				<div class="form-group row">
				<label class = "col-sm-2">상세정보</label>
				<div class="col-sm-3">
					<textarea rows="2" cols="50" class="form-control" 
					name="description"></textarea>
				</div>
			</div>
				<div class="form-group row">
				<label class = "col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
				<div class="form-group row">
				<label class = "col-sm-2">카테고리</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
				<div class="form-group row">
				<label class = "col-sm-2">제고수</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInstock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class = "col-sm-2">상태</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New">신규상품
					<input type="radio" name="condition" value="Old">중고 상품
					<input type="radio" name="condition" value="Refurbished"> 재생상품
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
					<a href="./Products.jsp" class="btn btn-secondary">상품목록</a>
				</div>
			</div>
		
		</form>
	</div>
	
	<!-- ==============================상품상세끝============================== -->
	<jsp:include page="../ch04/footer.jsp"/>
</body>
</html>