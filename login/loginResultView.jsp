<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "LoginResult"/>
</jsp:include>

	<c:choose>
	<c:when test ="${sessionScope.createnickname != null && use == 'Y'}">
		<h1>환영합니다~! ${sessionScope.createnickname } 님!</h1>
		<input type = "button" value = "메인으로" onclick = "location.href = '/test1/index1.jsp'">
		<input type = "button" value = "회원탈퇴" onclick = "location.href = '/test1/signout/signoutView.jsp'">
	</c:when>
	<c:when test = "${createnickname == null}">
		<script>
			alert("아이디 혹은 비밀번호를 확인해주세요.");
			history.back();
		</script>
		<!--  <h1>로그인에 실패하였습니다.</h1>
		<input type = "button" value = "메인으로" onclick = "location.href = '/test1/index1.jsp'"> -->
	</c:when>
	<c:when test = "${use == 'N' }">
		<script>
			alert("정지된 회원입니다.");
			history.back();
		</script>
	<!-- 	<h1>정지된 회원입니다.</h1>
		<input type = "button" value = "메인으로" onclick = "location.href = '/test1/index1.jsp'"> -->
	</c:when>
	</c:choose>
	
	
	
	
	
	
<jsp:include page = "/layout/footer.jsp"/>