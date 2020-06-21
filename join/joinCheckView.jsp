<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
    <h3 align = "center">아이디 중복 체크 페이지</h3>
<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "joinCheckView"/>
</jsp:include>


 <script type = "text/javascript" src = "script1.js"></script>

<form action = "joinCheckLogic1.jsp" method = "post">
<c:choose>
	<c:when test = "${param.result}">
		<h3>${param.id }이미 사용중인 ID 입니다.</h3>
		<input type = "text" name = "id">
		<input type = "submit" value = "중복체크">
	</c:when>
	<c:otherwise>
		<h3>사용가능한 아이디입니다.</h3>
		<input type = "button" value = "사용" onclick = "checkIdFormClose('${param.id}')">
	</c:otherwise>
</c:choose>
</form>



<jsp:include page = "/layout/footer.jsp"/>