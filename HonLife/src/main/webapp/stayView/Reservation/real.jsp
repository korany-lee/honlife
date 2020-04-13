<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간 예약내역</title>
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean" rel="stylesheet">
<link href="/project/common/manager/managercss/jquery-accordion-menu.css" rel="stylesheet" type="text/css" />
<link href="/project/common/manager/managercss/font-awesome.css" rel="stylesheet" type="text/css" />

<script src="/project/common/manager/managerjs/jquery-1.11.2.min.js" type="text/javascript"></script>
</head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.1.min.js"></script>  
 	<script type="text/javascript">
	  $(function() {
		$("#searchBtn").click(function() {
			  
			  $("#list").innerHTML = "";  
			 	
			 $.ajax({
				type : "POST",
				url : "oneRev",
				data : "revNo="+  $("#search").val() ,
				datatype : "html",
				success : function(data1) {
					$("#list").html(data1);
				}
			});  
		});  
	}); 
 
	</script>
	
	
	
	
	



<style type="text/css">

.modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 5; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            
            
  
		}
        
    
        /* Modal Content/Box */
    .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 40px;
            border: 1px solid #888;
            height: 250px;
            width: 60%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }


</style>


<body>
<%-- <jsp:include page="manager/managerheader" /> --%>
<input type="hidden" value="abcd" id="nick">

<script src="https://code.jquery.com/jquery-latest.js"></script>
	
		<section class="animate-in-view">
			<!-- <div class="section-content clearfix"> -->
			<br>
			<span  style="font-size: 40px;"> 객실 예약현황</span><br><br>
	    <!--     </div> -->
	         <input type="text" id="search" name="search" placeholder="예약번호를 입력하세요" style="width:300px;">
                <input type="button"  value="검색" id="searchBtn">
	

	<div class="table" style="position:relative;right: 20px;">

		<div class="table-head">

			<div class="table-head-content section-content clearfix">		
				<div class="th"><span>예약번호</span></div>
				<div class="th"><span>예약자명</span></div>
				<div class="th"><span>예약객실</span></div>
				<div class="th"><span>입실날짜</span></div>
				<div class="th"><span>예약상태</span></div>
			</div>

		</div>
	
		<div id="list" class="table-body">
			<div class="table-rows" id="aaa">	
				

							
			</div>

		</div>

	</div>


 
    






</section>


		
	
	
		
			<div id="results" style="display:none;" ></div>

<style id='wpcf7-wpcf7-5e6f0acff3915-inline-inline-css' type='text/css'>
#wpcf7-5e6f0acff3915 {display:none !important; visibility:hidden !important;}
</style>
<script type='text/javascript'>
/* <![CDATA[ */
var wpcf7 = {"apiSettings":{"root":"https:\/\/www.voxverticalvillage.ro\/en\/wp-json\/contact-form-7\/v1\/","namespace":"contact-form-7\/v1"}};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=5.1.6'></script>


<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-content/themes/voxverticalvillage/assets/js/slick.min.js'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var url = {"archive_ap":"https:\/\/www.voxverticalvillage.ro\/en\/residences\/"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-content/themes/voxverticalvillage/assets/js/scripts.min.js'></script>
<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-includes/js/wp-embed.min.js?ver=5.3.2'></script>

<script type="text/javascript">
	

	function checkin(a,b,c){
		if(c=='준비미완료'){
			alert('가구 세팅이 완료되지 않았습니다');
			return;
		}
		if(confirm('입실처리 하시겠습니까?')){
			location.href="checkin?revNo="+a+"&&roomNo="+b;
			alert('입실처리 되었습니다');
			location.href="../manager/main";
		}else{
			return;
		}	        
	  
	}
	
	function checkout(a,b){
		
		
		if(confirm('퇴실처리 하시겠습니까?')){
			location.href="checkout?revNo="+a+"&&roomNo="+b;
			alert('퇴실처리 되었습니다');
			location.href="../manager/main";
		}else{
			return;
		}	        
	  
	}
	
	
	//Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
	var btn = document.getElementById('mailModal');

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName('close')[0];                                          

	// When the user clicks on the button, open the modal 
	
	// When the user clicks on <span> (x), close the modal


	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
</script>

<script src="/project/common/manager/contactform/vendor/animsition/js/animsition.min.js"></script>
	<script src="/project/common/manager/contactform/vendor/bootstrap/js/popper.js"></script>
	<script src="/project/common/manager/contactform/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="/project/common/manager/contactform/vendor/daterangepicker/moment.min.js"></script>
	<script src="/project/common/manager/contactform/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="/project/common/manager/contactform/vendor/countdowntime/countdowntime.js"></script>
	
	<script src="/project/common/manager/contactform/js/main.js"></script>
<script src="/project/common/manager/managerjs/jquery-accordion-menu.js" type="text/javascript"></script>
</body>
</html>

<script>
var url ="ws://192.168.4.172:8080/project/chat/";
var webSocket = null;
var msg = "";
url += $("#nick").val();
webSocket = new WebSocket(url); // 웹소켓 객체 생성
	
	//웹소켓 연결 됐을 떄
webSocket.onopen =function(e) {
	console.log(e);
}
	
	
webSocket.onclose = function(e){
	if(e.type=="close") {
		monitor.innerHTML += "접속이 종료 되었습니다.<BR />";
	}
}
//메세지 수신
webSocket.onmessage = function(e){
	
		//monitor.innerHTML += e.data +"<br />";
		aaa.innerHTML  += e.data ;
		
} 
function disConn() {
	webSocket.close();
}


</script>