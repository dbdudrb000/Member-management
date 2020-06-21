<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "NewPosition"/>
</jsp:include>

<form action = "NewPositionLogic.jsp">
	<caption><h1>새로운 직권 생성 Page</h1></caption>
	<table border = "5" >
		<tr>
			<th colspan = "2" align = "center">직권생성창</th>
		</tr>
		<tr>
			<th>직권이름</th>
			<td >
				<input type = "text" name = "newposition" placeholder = "New 직권이름입력" required>
			</td>
		</tr>
		<tr>
			<td align = "center" colspan = "2">
				<input type = "submit" value = "생성하기">
			</td>
		</tr>
	</table>
</form>





<jsp:include page = "/layout/footer.jsp"/>
	
