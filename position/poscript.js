
function test(obj){		// 해당 조건이 맞으면 그값을 가지고 logic(servlet) 페이지로 이동.

	var position = document.getElementById("position").value; 
	// po 에는 selectbox 에서 선택한 직급 이름을 가지고 있다.


	switch(position) { 			// 로직페이지에서 이동후 positionResultView.jsp 페이지로 이동한다.
	case "" :
		alert("직급은 선택하십시오.");
		break;
	case "관리자" :
		window.open("/test1/position/positionResultView.jsp?position="+position+""+"&width=350 hight=100 left=400 top=350");
		break;
	case "최우수회원" :
		window.open("/test1/position/positionResultView.jsp?position="+position+""+"&width=350 hight=100 left=400 top=350");
		break;
	case "우수회원" :
		window.open("/test1/position/positionResultView.jsp?position="+position+""+"&width=350 hight=100 left=400 top=350");
		break;
	case "일반회원" :
		window.open("/test1/position/positionResultView.jsp?position="+position+""+"&width=350 hight=100 left=400 top=350");
		break;
	case "병아리" :
		window.open("/test1/position/positionResultView.jsp?position="+position+""+"&width=350 hight=100 left=400 top=350");
		break;
	case "비회원" :
		window.open("/test1/position/positionResultView.jsp?position="+position+""+"&width=350 hight=100 left=400 top=350");
		break;
	default :
		alert("직급로직을 수정해주십시오.");

	}

}

function positionClose(){	// 창을 닫아주는 메소드
	
	var po = poform.po.value;
	if(po == false){
		alert("유무를 체크해주십시오.");
	}else{
		poform.submit();
		
		setTimeout(function() {
			window.close();
		}, 2000);
	}	
		
	}

