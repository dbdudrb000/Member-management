<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "powerCheck"/>
</jsp:include>
	<script type = "text/javascript" src = "scriptpower.js"></script>
	
	<c:choose>
		<c:when test = "${dto.power == null }">
		 	<h1>없는 회원입니다.</h1>
		 	
		</c:when>
		<c:otherwise>
			<h1>직급은 ${dto.power}입니다.</h1>
		</c:otherwise>
	</c:choose>
	
	<input type = "button" value = "뒤돌아가기" onclick = "powerCheckClose()">


<jsp:include page = "/layout/footer.jsp"/>



