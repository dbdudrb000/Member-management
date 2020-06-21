<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>

<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "PositionResultView"/>
</jsp:include> 
	<script type = "text/javascript" src = "poscript.js"></script>
	<form name = "poform" method = "post" action = "positionLogic.jsp"> 
	<table border = "5">
		<cption><h1>직권사용유무 Page</h1></cption>
		<tr>
			<th align = "center" colspan = "2" >직권선택창</th>
		</tr>
		<tr colspan = "2" align = "center">
			<th>선택하신 직급</th>
			<td>
				${param.position}
				<input type = "hidden" name = "position" value = "${param.position }">
			</td>
			
		</tr>
		<tr>
		<th>유무</th>
		<td align = "center" >
			Y<input type = "radio" name = "po" value = "Y">
			N<input type = "radio" name = "po" value = "N">
		</td>	
		</tr>
		<tr>
			<td align = "center" colspan = "2">
			<input type = "button" value = "저장하기" onclick = "positionClose()">
			</td>
		</tr>
	</table>
	</form>



<jsp:include page = "/layout/footer.jsp"/>