<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 등록</title>
<script type="text/javascript" src="/resources/js/validation.js"></script>
</head>
<body>
<fmt:setLocale value="${param.language}"/>
<fmt:bundle basename="bundle.message">
<!-- 현제 로케일에 따라 리소스번들이 위치한/src/bundle/패키지에 message.properties를 가져오도록 basename 속성 잓성 -->
	<!-- 머리글에 해당하는 menu.jsp 파일의 내용을 포함하도록 include 액션 태그를 작성 -->
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class ="container">
			<h1 class="display-3"><fmt:message key="title"/></h1>
		</div>
	</div>
	<!-- ==============================상품상세시작============================== -->
	<div class="container">
		<div class="text-right">
			<a href="?language=ko">korea</a>|<a href="?language=en">english</a>
		</div>
		<form name="newProduct" action="processAddProduct.jsp" class="form-horizontal" 
		method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class = "col-sm-2"><fmt:message key="productId"/></label>
				<div class="col-sm-3">
					<input type="text" id="productId" name="productId" class="form-control">
				</div>
				</div>
				<div class="form-group row">
				<label class = "col-sm-2"><fmt:message key="pname"/></label>
				<div class="col-sm-3">
					<input type="text" id="pname" name="pname" class="form-control">
				</div>
				</div>
				<div class="form-group row">
				<label class = "col-sm-2"><fmt:message key="unitPrice"/></label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control">
				</div>
				</div>
				<div class="form-group row">
				<label class = "col-sm-2"><fmt:message key="description"/></label>
				<div class="col-sm-3">
					<textarea rows="2" cols="50" class="form-control" 
					id="description" name="description"></textarea>
				</div>
			</div>
				<div class="form-group row">
				<label class = "col-sm-2"><fmt:message key="manufacturer"/></label>
				<div class="col-sm-3">
					<input type="text" id="manufacturer" name="manufacturer" class="form-control">
				</div>
			</div>
				<div class="form-group row">
				<label class = "col-sm-2"><fmt:message key="category"/></label>
				<div class="col-sm-3">
					<input type="text" id="category" name="category" class="form-control">
				</div>
			</div>
				<div class="form-group row">
				<label class = "col-sm-2"><fmt:message key="unitsInstock"/></label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class = "col-sm-2"><fmt:message key="condition"/></label>
				<div class="col-sm-5">
					<input type="radio" id="condition1" name="condition" value="New"><fmt:message key="condition_New"/>
					<input type="radio" id="condition2" name="condition" value="Old"><fmt:message key="condition_Old"/>
					<input type="radio" id="condition3" name="condition" value="Refurbished"><fmt:message key="condition_Refuribished"/>
				</div>
			</div>
			<!-- 			 -->
			<div class="form-group row">
				<label class = "col-sm-2"><fmt:message key="productImage"/></label>
				<div class="col-sm-5">
					<input type="file" id="productImage" name="productImage" class="form-control"/>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-primary" value='<fmt:message key="button"/>' onclick="checkAddProduct()">
					<a href="./Products.jsp" class="btn btn-secondary"><fmt:message key="productList"/></a>
				</div>
			</div>
		
		</form>
	</div>
	<!-- ==============================상품상세끝============================== -->
	<jsp:include page="../ch04/footer.jsp"/>
	</fmt:bundle>
</body>
</html>