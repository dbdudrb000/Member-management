<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "joinResult"/>
</jsp:include>

	<c:choose>
		<c:when test = "${result != false}">
			<h1>회원가입에 성공하셨습니다.</h1><br><br>
			<input type = "button" value = "로그인하러가기" onclick = "location.href = '/test1/login/loginView1.jsp'">
			<input type = "button" value = "메인으로" onclick = "location.href = '/test1/index1.jsp'">
		</c:when>
		<c:otherwise>
			<h1>회원가입에 실패하셨습니다....</h1><br><br>
	 		<input type = "button" value = "뒤로가기" onclick = "history.back()">
	 		<input type = "button" value = "메인으로" onclick = "location.href = '/test1/index1.jsp'">
		</c:otherwise>
	</c:choose>

	

<jsp:include page = "/layout/footer.jsp"/>