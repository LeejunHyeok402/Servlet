<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	
	//요청 파라미터의 cartId를 받아보자
	String id = request.getParameter("cartId");
	
	//cartId가 없다면 cart.jsp로 이동
	if(id == null || id.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	
	//session.removeAttribute("cartlist");
	session.invalidate();
	
	response.sendRedirect("cart.jsp");
%>