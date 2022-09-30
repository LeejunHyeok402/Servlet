<%@page import="example04.vo.BookVO"%>
<%@page import="java.util.List"%>
<%@page import="example04.dao.BookRepository"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<% 
	BookRepository BookDAO = BookRepository.getInstance();
	List<BookVO> listOfBooks = BookDAO.getAllBooks();
%>
<c:set var="listOfBooks" value="<%=listOfBooks%>" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class ="container">
			<h1 class="display-3">도서목록</h1>
		</div>
	</div>
	<div class="container">
		<c:forEach var="bookVO" items="${listOfBooks}">
		<div class="row">			
			<h3>${bookVO.name}</h3>
				<div class="row">
					<p class="col-md">${bookVO.desciption}</p>
					<a href="./book.jsp?id=${bookVO.bookId}"
					class="btn btn-secondary btn-sm" role="button" class="col-md-auto" style="height:30px">상세정보&raquo;</a>
				</div>	
			<p>${bookVO.author} | ${bookVO.publisher} | ${bookVO.unitPrice}</p>
		</div>			
		<hr>
		</c:forEach>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>