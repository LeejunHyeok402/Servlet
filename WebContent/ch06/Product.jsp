<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@page import="ch04.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="ch04.dao.ProductRepository"%>
<!DOCTYPE html>
<%	//스트립틀릿 태그
	//상세보기 => ProductVO을 리턴
	//SELECT * FROM PRODUCT WHERE PRODUCT_ID = 'P1235'
	String id = request.getParameter("id");
	ProductRepository productRepository = ProductRepository.getInstance();
	ProductVO productVO = productRepository.getProductById(id);
%>
<c:set var="productVO" value="<%=productVO%>" scope="page"/>
<fmt:setLocale value="${param.language}"/>
<fmt:bundle basename="bundle.message">
<html>
<head>
<link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
</head>
<body>
	<!-- 머리글에 해당하는 menu.jsp 파일의 내용을 포함하도록 include 액션 태그를 작성 -->
	<jsp:include page="../ch04/menu.jsp"/>
	<div class="jumbotron">
		<div class ="container">
			<h1 class="display-3"><fmt:message key="productInfo"/></h1>
		</div>
	</div>
	
	<!-- ==============================상품상세시작============================== -->
	<div class="container">
		<div class="text-right">
			<a href="?id=${productVO.productId}&language=ko">korea</a>|<a href="?id=${productVO.productId}&language=en">english</a>
		</div>
		<div class="row" align="center">
			<div class="col-md-6">
		<img alt="${productVO.pname}" title="${productVO.filename}" src="/resources/images/${productVO.filename}"
					style="width:100%;height:350px;">
				<h3>${productVO.pname}</h3>
				<p>${productVO.description}</p>
				<p><b><fmt:message key="productId"/>:</b><span class="badge badge-danger">
				 ${productVO.productId}</span>
				 </p>
				<p><b><fmt:message key="manufacturer"/></b>: ${productVO.manufacturer}</p>
				<p><b><fmt:message key="category"/></b>: ${productVO.category}</p>
				<p><b><fmt:message key="unitsInstock"/></b>: ${productVO.unitsInstock}</p>
				<h4>${productVO.unitPrice}<fmt:message key="productPrice"/></h4>
				<p>
				<a href="#" class="btn btn-info"><fmt:message key="productOrder"/>&raquo;</a>
				<a href="./Products.jsp" class="btn btn-secondary"><fmt:message key="productList"/>&raquo;</a>
				</p>
				
			</div>
		</div>	
	</div>
	
	<!-- ==============================상품상세끝============================== -->
	<jsp:include page="../ch04/footer.jsp"/>
	</fmt:bundle>
</body>
</html>