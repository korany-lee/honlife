<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="../js/jquery.form.js"></script>
<script type="text/javascript">


		var SetTime = 10;		// 최초 설정 시간(기본 : 초)

		function msg_time() {	// 1초씩 카운트
			
			m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	// 남은 시간 계산
			
			var msg = " <font color='red' size='30px'>" + m + "</font>후에 메인화면으로 넘어갑니다.";
			
			document.all.ViewTimer.innerHTML = msg;		// div 영역에 보여줌 
					
			SetTime--;					// 1초씩 감소
			
			if (SetTime < 0) {			// 시간이 종료 되었으면..
				
				clearInterval(tid);		// 타이머 해제
				location.href="../careMain"
			}
			
		}

		window.onload = function TimerStart(){ tid=setInterval('msg_time()',1000) };


 
        

    </script>
 




</head>
<body>

 <p style="font-size: 20px">접수되었습니다 !<br>
 합격하시면 다음 면접 일정을 이메일로 알려드리겠습니다!</p> 
 <a href="../careMain" style="font-size: 15px"> 메인으로 바로가기</a>
<div id="ViewTimer"></div>




</body>
</html>