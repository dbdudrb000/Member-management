<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>${param.title}</title>
		<link rel="stylesheet" type="text/css" href="/My_home/layout/layout.css">
	</head>
	<body>
		<div align = "center">
		<div class = "header" align = "center">
			<c:choose>
			<c:when test = "${sessionScope.createnickname == null }">
			<a href= "/test1/join/joinView1.jsp">JOIN</a> |
			<a href = "/test1/login/loginView1.jsp">LOGIN</a> |
			</c:when>
			
			<c:otherwise>
			${sessionScope.createnickname }님!
			<a href = "/test1/logout/logoutLogic.jsp">LOGOUT </a>| 
			<a href = "/test1/mypage/myPageView.jsp">MY PAGE</a> |
			</c:otherwise>
			</c:choose>
			BOARD |
			DOWNLOADS |
			<!-- <a href = "">SETTING </a> | -->
			<a href = "/test1/index1.jsp">MAIN</a> 
			</div>
			<div class="main" align="center">
			
			
			
