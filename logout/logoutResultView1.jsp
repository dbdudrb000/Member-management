<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>

<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "LogoutView"/>
</jsp:include>
		
	<c:choose>
		<c:when test = "${sessionScope.nickname == null }">
			<h1>로그아웃이 완료되었습니다.</h1><br>
			<input type = "button" value = "메인으로" onclick = "location.href = '/test1/index1.jsp'">
		</c:when>
		<c:otherwise>
			<h1>로그아웃에 실패하였습니다.</h1>
			<input type = "button" value = "뒤로가기" onclick = "history.back()">
		</c:otherwise>
	</c:choose>	
		
		

<jsp:include page = "/layout/footer.jsp"/>
