<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "allmemberView"/>
</jsp:include>

<form action = "use.jsp" name = "list" method = "post">
	<table border = "5">
	<caption align = "center"><h3>회원리스트</h3></caption>
	<tr>
		<th align = "center" colspan = "10">
			모든 회원 정보
		</th>
	</tr>
	<tr align = "center">
		<th width = 5%>NO </th>
		<th width = 10%>ID</th>
		<th width = 10%>비밀번호</th>
		<th width = 15%>이메일</th>
		<th width = 10%>닉네임</th>
		<th width = 10%>직급</th>
		<th width = 15%>가입시간</th>
		<th width = 10%>수정된 날짜</th>
		<th width = 5%>사용<br>여부</th>
		<th width = 10%>use상태</th>
	</tr>
		
		<c:forEach var = "list" items = "${list}">
		<tr>
			<td>${list.no}</td>
			<td>${list.id }</td>
			<td>${list.password }</td>
			<td>${list.email }</td>
			<td>${list.nickname }</td>
			<td>${list.power }</td>
			<td>${list.regdate }</td>
			<td>${list.mdfregdate}</td>
			<td align = "center">
				<c:if test = "${list.use eq 'Y' }">
				${list.use }
				</c:if>
					<c:if test = "${list.use eq 'N' }">
				${list.use }
				</c:if>
			</td> <!-- 사용여부 를 체크 하는 td -->
			<td align = "center">
				Y<input type = "radio" name = "use${list.id }" value = "Y" class="radioNm">
				N<input type = "radio" name = "use${list.id }" value = "N" class="radioNm">
			</td>
		</tr>
		</c:forEach>
	</table>
	
			<br><br>
	
		<input type = "button" value = "메인으로" onclick = "location.href = '/test1/index1.jsp'">
		<input type = "button" value = "내정보" onclick = "location.href = '/test1/mypage/myPageView.jsp'">
		<input type = "reset" value = "리셋">
		<input type="hidden" name="use">
		<input type="hidden" name="id">
		<input type = "button" onclick="btnSetting()" value = "저장" >
	</form>
<script >
	function btnSetting(){
		var checkedCnt = 0;
		var arrRadio = document.getElementsByClassName('radioNm');	 
		
    	for (var i=0;i<arrRadio.length;i++) {
	     if (arrRadio[i].checked) {		// 체크된것만 실행하라 이 뜻이다.
	    	 checkedCnt++;
	    	// console.log(arrRadio[i].value);
	    	// console.log(document.getElementsByName('use')[0]);
	    	 var tr = document.getElementsByName(arrRadio[i].name)[0].parentElement.parentElement;
	    	 document.getElementsByName('use')[0].value = arrRadio[i].value;
	    	 document.getElementsByName('id')[0].value = tr.children[1].innerHTML; 
	     }
    	}

    	if(checkedCnt < 1){
	    	alert("체크하지 않으셨습니다.");
    	}
    	else if(checkedCnt > 1){
	    	alert("1개만 선택해주세요");
    	}else{
	    	 list.submit();
    	}
	}
</script>

<jsp:include page = "/layout/footer.jsp"/>