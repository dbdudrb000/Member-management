<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "Login"/>
</jsp:include>

	<form action = "loginLogic.jsp" method = "post">
	<caption><h1>로그인페이지</h1></caption>
		<table border = "5">
		<tr>
			<th>ID</th>
			<td>
				<input type = "text" name = "user_id" placeholder = "ID를 입력해주세요." required>
			</td>
		</tr>
		
		<tr>
			<th>PASSWORD</th>
			<td>
				<input type = "password" name = "user_password" placeholder = "PW를 입력주세요." required>
			</td>
		</tr>
		<tr>
			<td colspan = "2" align	= "center">
				<input type = "submit" value = "로그인하기">
				<input type = "reset" value = "다시쓰기">
			</td>
		</tr>
		</table>
		</form>
<jsp:include page = "/layout/footer.jsp"/>