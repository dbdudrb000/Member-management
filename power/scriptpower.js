function checkpower(){
	var id = powerform.power_id.value;
	var nick = powerform.power_nickname.value;
										
	if(id == "" || nick == ""){
		alert("아이디 혹은 비밀번호를 입력해주세요");
	}else{
		window.open("/test1/power/powerCheckLogic.jsp?id="+id+"&nick="+nick+""+"&width=350 hight=100 left=400 top=350");
	}
	
}

function powerCheckClose(){  // 직급확인후 올린 페이지를 닫아주는 메소드
	window.close();
	
}