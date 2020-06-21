
function checkPassword1(){
	var pw1 = forjoin.user_password.value;
	var pw2 = forjoin.user_repassword.value;
	
	if(pw1 != pw2){
		alert("두 비밀번호가 일치하지 않습니다.");
		forjoin.user_password.value = "";
		forjoin.user_repassword.value = "";
	}else{
		forjoin.submit();
	}
}

function checkid(){
    
    var id = forjoin.user_id.value;   
    if(id == ""){
      alert("아이디를 먼저 입력하세요.");
    }else{
      window.open("joinCheckLogic1.jsp?id="+id,"","width=350 hight=100 left=400 top=350");
    }         //  새 창을 연다 라고 생각하면 된다.
 }



function checkIdFormClose(sId){
	
	// opener 지금 창을 열은 부모창을 말한다.
	// 부모창(joinView.jsp) 페이지에 있는 forjoin<form> 의 user_id 의 value 의 값으로 다시 넣는 것 이다.
	opener.forjoin.user_id.value = sId; 
	window.close();
}
