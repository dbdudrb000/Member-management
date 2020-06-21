<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<jsp:include page = "/layout/header.jsp">
		<jsp:param name = "title" value = "joinView"/>
	</jsp:include> 
	<h1>회원가입 페이지</h1>
  <script type = "text/javascript" src = "script1.js"></script>
 <form name = "forjoin" method = "post" action = "joinLogic1.jsp">
		<table border = "5">
			<tr>
				<th>ID</th>			
				<td>
					<input type = "text" name = "user_id" placeholder = "아이디를 입력하세요." required>
					<input type = "button" value = "중복확인" onclick = "checkid()">
				</td>										
			</tr>
	
			<tr>
				<th rowspan = "2">password</th>
				<td>
					<input type = "password" name = "user_password" placeholder = "비밀번호를 입력해주세요." required>
				</td>
			</tr>
			
				<td>
					<input type =  "password" name = "user_repassword" placeholder = "비밀번호를 다시 한번 입력해주세요." required>
				</td>
			
			<tr>
				<th>Nickname</th>
				<td>
					<input type = "text" name = "user_nickname" placeholder = "닉네임을 입력해주세요." required>
				</td>
			</tr>
			<tr>
				<th>email</th>
				<td>
					<input type = "text" name = "user_email1" size = "7">
					
					<select name = "user_email2">
					<option value = "naver.com">naver.com</option>
					<option value = "gmail.com">gmail.com</option>
					<option value = "daum.net">daum.net</option>
				</td>
			</tr>
			<tr>			
				<td colspan = "2" align = "center">
				
				<input type = "button" value = "가입" onclick = "checkPassword1()">
				<input type = "reset">
				</td>
		
			</tr>
		
		</table>
	</form>
	
  <jsp:include page = "/layout/footer.jsp"/>



