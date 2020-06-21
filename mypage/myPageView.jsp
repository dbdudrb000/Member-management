<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "MyPage"/>
</jsp:include>

<form action = "myPageLogic.jsp" method = "post">
	<caption><h1>My Page Login</h1></caption>
	<table bder = "5">
		
		<tr>
			<th>password</th>
			<td>
				<input type = "password" name = "user_password" placeholder = "PW를입력하세요." required>
			</td>
		</tr>
			
		<tr>
			<td align = "center" colspan = "2">
				<input type = "submit" value = "확인">
				<input type = "reset">
			</td>
		</tr>
	</table>
</form>


<jsp:include page = "/layout/footer.jsp"/>