<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>

<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "signView"/>
</jsp:include>
		
	<form action = "signLogic.jsp" method = "post">
	<ception><h1>회원탈퇴 페이지</h1></ception>
		<table border = "5">
			<tr>
				<th>ID</th>
				<td>
					<input type = "text" name = "userid" placeholder = "삭제할 ID" required>
				</td>
			</tr>
			<tr>
				<th>password</th>
				<td>
					<input type = "password" name = "userpw" placeholder = "삭제할PW" required>
				</td>
			</tr>
			<tr>
				<td align = "center" colspan = "2">
					<input type = "submit" value = "탈퇴하기">
					<input type = "reset">
				</td>
			</tr>
		</table>
	</form>





<jsp:include page = "/layout/footer.jsp"/>