<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "poweResultView"/>
</jsp:include>

	<c:choose>
		<c:when test = "${result != false}">
			<h1>관리자부여 성공하였습니다.</h1>
			${dto.power}
		</c:when>
		<c:otherwise>
			<h1>관리자부여가 실패하였습니다.</h1>
		</c:otherwise>
	</c:choose>
	<input type = "button" value = "메인으로" onclick = "location.href = '/test1/index1.jsp'">
	


<jsp:include page = "/layout/footer.jsp"/>