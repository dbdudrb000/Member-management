<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>

<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "MyPageResultView"/>
</jsp:include>

	<form action="modifyLogic.jsp" method="post">
		<table border="5">
			<tr>
				<th>No.</th>
				<td>${dto.no }
					<input type = "hidden" name = "no" value = "${dto.no }">			
				</td>
			</tr>
			<tr>
				<th>ID</th>
				<td>
					<input type="text" name="id"  value = "${dto.id }">
				</td>
			</tr>
			<tr>
				<th>password</th>
				<td>
					<input type = "password" name = "pw" value = "${dto.password }">
				</td>
			</tr>
			<tr>
				<th>email</th>
				<td>
					<input type ="text" name = "email" value = "${dto.email }">
				</td>
			</tr>
			<tr>
				<th>nickname</th>
				<td>
					<input type = "text" name = "nickname" value = "${dto.nickname }">
				</td>
			</tr>
			<tr>
				<th>권한소유</th>
				<td>${dto.power}</td>
			</tr>
			<tr>
				<th>가입날짜</th>
				<td>
					${dto.regdate }
				</td>
			</tr>
			<tr>
				<td align = "center" colspan = "2">
					<input type = "button" value = "메인으로" onclick = "location.href = '/test1/index1.jsp'">
					<input type = "submit" value = "수정하기" onclick = "location.href = 'modifyLogic.jsp'">
					<input type = "button" value = "회원탈퇴" onclick = "location.href = '/test1/signout/signoutView.jsp'">
				</td>
			</tr>
			<tr>
				<td colspan = "2" align = "center">	
				<c:if test = "${dto.power == '관리자' && dto.id != 'admin'}"> <!-- 관리자일때 -->
					<input type = "button" value = "전회원정보 보기" onclick = "location.href = 'allMemberLogic.jsp'">
					<input type = "button" value = "직권변경하기" onclick = "power()">
				</c:if>
				<c:if test = "${dto.power == '운영자' && dto.id == 'admin' }">   <!-- 운영자 일때 -->
					<input type = "button" value = "전회원정보 보기" onclick = "location.href = 'allMemberLogic.jsp'">
				</c:if>
				<c:if test = "${dto.id == 'admin' && dto.power == '운영자' }"> <!-- 운영자일때 -->
						<input type = "button" value = "직권변경하기" onclick = "power()">
						<input type = "button" name = "positionView" value = "직권유무" onclick = "position()"> <!-- 이부분 추가함. -->
					</c:if>																				 
				</td>	
			</tr>
			</table>	
	</form>
	
	
	<c:if test = "${dto == null }">
		<script>
			alert("아이디 혹은 비밀번호를 다시 확인해주세요.");
			history.back();
		</script>
	</c:if>
	
		<script>
	function power(){
		var power = "power";
		location.href = '/test1/mypage/powerSelect.jsp?power='+power;
	}
	function position(){
		var power = "position";
		location.href = '/test1/mypage/powerSelect.jsp?power='+power;
	}
</script>
	

<jsp:include page = "/layout/footer.jsp"/>

