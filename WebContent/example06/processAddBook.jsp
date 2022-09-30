<%@page import="example04.dao.BookRepository"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="example04.vo.BookVO"%>
<%@ page import="example04.dao.BookRepository"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String bookId=request.getParameter("BookId");
	String name=request.getParameter("name");
	String unitPrice=request.getParameter("unitPrice");
	String author=request.getParameter("author");
	String publisher=request.getParameter("publisher");
	String releaseDate=request.getParameter("releaseDate");
	String totalPages=request.getParameter("totalPages");
	String description=request.getParameter("description");
	String category=request.getParameter("category");
	String unitsInStock=request.getParameter("unitsInStock");
	String condition=request.getParameter("condition");
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price=0;
	else price=Integer.valueOf(unitPrice);
	
	long stock;
	if(unitsInStock.isEmpty())
		stock=0;
	else stock=Long.valueOf(unitsInStock);
	
	long pages;
	if(unitsInStock.isEmpty())
		pages=0;
	else pages=Long.valueOf(totalPages);
	
	
	BookRepository dao=BookRepository.getInstance();
	
	BookVO newProduct=new BookVO();
	newProduct.setBookId(bookId);
	newProduct.setName(name);
	newProduct.setUnitPrice(price);
	newProduct.setAuthor(author);
	newProduct.setPublisher(publisher);
	newProduct.setReleaseDate(releaseDate);
	newProduct.setTotalPages(pages);
	newProduct.setDesciption(description);
	newProduct.setCategpry(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	dao.addProduct(newProduct);
	response.sendRedirect("books.jsp");
	
%>