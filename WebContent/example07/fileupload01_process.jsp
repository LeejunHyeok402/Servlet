<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page contentType="text/html; charset=UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	MultipartRequest multipartRequest = new MultipartRequest(request,"C:\\upload", 10*1024*1024, "utf-8", policy);
	String file = (String)multipartRequest.getFileNames().nextElement();
%>

<p> 요청 파라미터 이름 :  <%= file %>
<p> 실제 파일 이름 : <%= multipartRequest.getOriginalFileName(file) %>
<p> 저장 파일 이름 : <%= multipartRequest.getFilesystemName(file) %>
<p> 파일 콘텐츠 유형 : <%= multipartRequest.getContentType(file) %>
<p> 파일 크기 : <%= file.length() %>