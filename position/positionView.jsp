<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>



<script type = "text/javascript" src = "/test1/position/poscript.js"></script>
										
<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "fositionView"/>
</jsp:include>
<form>
	<table border = "5">
		
			<tr>
				<th align = "center" colspan = "2">
					직급계급표
				</th>
			</tr>
			<tr>
				<th>선택</th>
				<td>
				  	<select id = "position" onchange = "test(this)">
				  			<option value = "">직급을 선택</option>
						<c:forEach items="${dtoList}" var="item">
							<option value="${item.power}">${item.power}</option>
						</c:forEach>
					</select>  
				</td>
			</tr>
			<tr>
				<td align = "center" colspan = "2">
					<input type = "button" value = "신규직권생성" onclick = "location.href = '/test1/position/NewPosition.jsp'">
					
				</td>
			</tr>
	</table>
</form>
<jsp:include page = "/layout/footer.jsp"/>
