<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/layout/header.jsp">
	<jsp:param name = "title" value = "powerView"/>
</jsp:include>
 	<script type = "text/javascript" src = "/test1/power/scriptpower.js"></script>
	<form name = "powerform" action = "/test1/power/powerLogic.jsp" method = "post">
			<cption><h1>관리자 권한부여 Page</h1></cption>
		<table border = "5">
	<tr>
		<td colspan = "2" align = "center">
		관리자부여 입력창
		</td>
	</tr>
	<tr>
		<th>ID</th>
		<td>
		<input type = "text" name = "power_id" placeholder = "권한부여할 ID"required>
		</td>
	</tr>
	<tr>
		<th>닉네임</th>
		<td colspan = "2" size = "7">
			<input type = "text" name = "power_nickname" placeholder = "부여할 닉네임" required>
		</td>
	</tr>
		<tr>
			<th>직급선택</th>
			<td colspan="2">
				<c:if test="${sessionScope.power eq '운영자'}">
					<select name="user_power">
						<c:forEach items="${dtoList}" var="item">
							<c:if test="${item.use eq 'Y'}">
								<option value="${item.power}">${item.power}</option>
							</c:if>
						</c:forEach>
					</select>
				</c:if> 
				<c:if test="${sessionScope.power eq '관리자' }">
					<select name="user_power">
						<c:forEach items="${dtoList}" var="item">
							<c:if test="${item.use eq 'Y' && item.power != '관리자'}">
								<option value="${item.power}">${item.power}</option>
							</c:if>
						</c:forEach>
					</select>
				</c:if> 
				<input type="button" value="직급확인" onclick="checkpower()">
				</td>
		</tr>
		<tr>
		<td align = "center" colspan = "2">
			<input type = "submit" value = "권한부여하기">
			
			<!--  직급순서 버튼은 DB에 position 의 테이블의 정보들을 가져 올 것 이므로 서블릿페이지 이동. -->
			<c:if test = "${sessionScope.createnickname eq '운영자' }">
				<input type = "button" value = "직급순서설정" onclick = "location.href = '/test1/power/powerSequence.jsp'">
			</c:if>
		</td>
	</tr>
		</table>
	</form>

<jsp:include page = "/layout/footer.jsp"/>