<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>

<jsp:include page = "/layout/header.jsp">
	<jsp:param name = "title" value = "PowerSequenceView"/>
</jsp:include>

<form>
	<div align = "center">
	<caption><h1>모든 직급정보</h1></caption>
	<table border = "5">
		<tr>
			<th>No</th>
			<th>직급</th>
			<th colspan = 2 >순번</th>
			<th>유무</th>
	
			<c:forEach var = "list" items = "${dtoList}">
			<tr>
				<td class = "powerSeqNo" value = "${list.no}">
					${list.no}
				</td>	
				<td class = "aa">${list.power}</td>
				<td style = width:20px align = "center">
					${list.oder }
				</td>
				<td>
					<input type = "number" class="powerSeqOder" value = "${list.oder}" min="0" style = width:30px>
				</td>
				<td align = "center">${list.use}</td>
			</tr>
			</c:forEach>		
			<tr>
				<td colspan  = "5" align = "center">
					<input type = "button" value = "저장하기" onclick = "powerseq()">
				</td>
			</tr>
	</table>
	</div>
</form>

<script>
	function powerseq(){
		
		// ClassName 이 powerSeqNO 를 가지고 있는 요소들을 가져옴.
		// ClassName 이 powerSeqOder 를 가지고 있는 요소들을 가져옴.
		
		var powerNo = document.getElementsByClassName('powerSeqNo');
		var powerOder = document.getElementsByClassName('powerSeqOder'); 
		// var power = document.getElementsByClassName('aa');  직급의 이름들을 가져오는것. 연습용
		// 회원의 정보가 여러명 이므로 배열로 받을 변수 생성
		
		var array = [];
		var array2 = [];
		for(var i = 0; i < powerNo.length; i++){
			
			// array 라는 배열변수에 power
			
			array.push(powerNo[i].innerHTML);
			array2.push(powerOder[i].value);
			//bb.push(power[i].innerHTML)  // 직급의 이름들을 배열에 push 밀어 넣는 것.
			
			console.log(powerNo[i].innerHTML);
			console.log(powerOder[i].value);
			// alert(bb[i]);			  // 관리자의 이름들이 화면에 뜰 것 이다.
			// document.getElementsByName(power[k].name)[0].parentElement.parentElement;																
		}
		
		location.href = '/test1/power/sequenceChange.jsp?array='+array+'&array2='+array2;
		
	}

</script>


<jsp:include page = "/layout/footer.jsp"/>