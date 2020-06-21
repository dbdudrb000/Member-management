<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>

<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "signResult" />
</jsp:include>

	<c:choose>
		<c:when test = "${requestScope.result }">
			<h1>회원탈퇴 완료되었습니다.</h1>
		</c:when>
		<c:otherwise>
			<h1>회원탈퇴에 실패했습니다.</h1>
		</c:otherwise>
	</c:choose>

	<input type = "button" value = "메인으로" onclick = "location.href = '/test1/index1.jsp'">


<jsp:include page = "/layout/footer.jsp"/>