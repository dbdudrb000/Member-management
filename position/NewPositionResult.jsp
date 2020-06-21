<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "NewPositionResult"/>
</jsp:include>

<c:choose>
	<c:when test = "${newposition eq true}">
		<!--  <h1>직권생성에 성공하였습니다.</h1>
		<script>
		 <input type = "button" value = "메인으로" onclick = "location.href = '/test1/index1.jsp'"> -->
		<script>
		alert("직권생성에 성공하였습니다.");
		location.href = "/test1//index1.jsp";
		</script>
	</c:when>
	<c:otherwise>
		<script>
		alert("중복된 직권이름입니다.");
		history.back();
		</script>
	</c:otherwise>
</c:choose>


<jsp:include page = "/layout/footer.jsp"/>