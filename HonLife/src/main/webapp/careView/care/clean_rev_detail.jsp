<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
   		margin: 1% 1% 1% 1%;
   	  padding: 40px;
      border: 0px solid #888;
      height: 1%;
      width: 1%;                          
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



            
</head>

    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
    

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>


      <!--JavaScript at end of body for optimized loading-->
      <link type="text/css" rel="stylesheet" href="../careView/css/materialize.min.css"  media="screen,projection"/>
   
   
    
     <script src="//code.jquery.com/jquery-1.10.2.js"></script>
     
 


<body>
	<jsp:include page="../includer/careheader.jsp"/>

<main>



<section>
		<section class="main-section-1">

		<div class="section-content animate-in-view clearfix">

	

<div class="container-contact100">
		<div class="wrap-contact100">
			
				
				<span class="contact100-form-title" >
			예약 상세 내용
				</span>
	
				
				

				<table style="undefined;table-layout: fixed; width: 690px">
				
				
<colgroup>
<col style="width: 118px">
<col style="width: 231px">
<col style="width: 139px">
<col style="width: 202px">
</colgroup>
  <tr>
    <td>예약번호</td>
    <td colspan="3">${rev.cleanrevNo }</td>
  </tr>
  <tr>
    <td>성명</td>
    <td>${rev.userName }</td>
    <td>연락처</td>
    <td>${rev.userPh }</td>
  </tr>
  <tr>
    <td>이메일</td>
    <td colspan="3">${rev.userEmail }</td>
  </tr>
  <tr>
    <td>예약 주소</td>
    <td colspan="3">${rev.cleanrevAddr }</td>
  </tr>
  <tr>
    <td>예약시간</td>
    <td colspan="3"><fmt:formatDate value="${rev.cleanrevDate }" pattern="yyyy/MM/dd"/> / ${rev.cleanrevTime  }시</td>
  </tr>
  <tr>
    <td>담당 매니저</td>
    <td>${emp.employeeName }</td>
    <td>담당매니저 연락처</td>
    <td>${emp.employeePh }</td>
  </tr>
  <tr>
    <td>청소면적</td>
    <td colspan="3">${rev.cleanfeeSize }평</td>
  </tr>
  <tr>
    <td colspan="4">요청사항</td>
  
  </tr>
  <tr>
    <td colspan="4"> ${rev.cleanrevDemand }</td>
  </tr>
  <tr>
    <td colspan="2"></td>
    <td>총 결제 금액</td>
    <td>${rev.revPay }</td>
  </tr>
</table>


 <label style="font-size: 18px;">결제 방법을 선택해주세요 예약하기 버튼을 누르시면 결제가 진행됩니다.</label>
 <div id=row>
 <button class="btn waves-effect waves-light"  onclick="javascript:payKG('${userId}','${userNo}','${rev.cleanrevNo}')"  style="width: 30%; border-radius: 30px; background-color: black">이니시스
    <i class="material-icons right">send</i>
  </button>
  <button class="btn waves-effect waves-light" onclick="javascript:payKakao('${userId}','${userNo}','${rev.cleanrevNo}')"  
  style="width: 30%; border-radius: 30px; background-color: black">카카오페이<i class="material-icons right">send</i>
  </button>
  <button class="btn waves-effect waves-light"  onclick="javascript:payDanal('${userId}','${userNo}','${rev.cleanrevNo}')"  style="width: 30%; border-radius: 30px; background-color: black">다날 휴대폰결제
    <i class="material-icons right">send</i>
  </button>
</div>
		</div>
	</div>

</div>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <!-- The Modal -->
    <div id="myModal" class="modal">
      <!-- Modal content -->
 
      <div class="modal-content"  id="paycall" style="text-align: center;">
			
     
      </div>
 
    </div>
	<script type="text/javascript">

	
	function payKG(data1,data2,data3){		
	
		  $.ajax({	        
		        type: "post",
		        dataType:"html",
		        url: "paymentKG",
		        data:{"userId": data1,"userNo": data2, "revNo": data3}, 						
		        success : function test(data){	
		  
		        		$("#paycall").html(data); 
		        		},
		        error : function error(){alert("error");}         
		 });    
	
	};
	
	function payKakao(data1,data2,data3){		
		
		 $.ajax({	        
		        type: "post",
		        dataType:"html",
		        url: "paymentKakao",
		        data:{"userId": data1,"userNo": data2, "revNo": data3}, 						
		        success : function test(data){	
		      
		        		$("#paycall").html(data); 
		        		},
		        error : function error(){alert("error");}         
		 });   
	
	};
	
	function payDanal(data1,data2,data3){		

		 $.ajax({	        
		        type: "post",
		        dataType:"html",
		        url: "paymentDanal",
		        data:{"userId": data1,"userNo": data2, "revNo": data3}, 						
		        success : function test(data){	
		          
		        		$("#paycall").html(data); 
		        		},
		        error : function error(){alert("error");}         
		 });   
	
	};
	
	
	//Get the modal
	var modal = document.getElementById('myModal');

	// Get the button that opens the modal
	var btn = document.getElementById('mailModal');

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName('close')[0];                                          

	// When the user clicks on the button, open the modal 
	
	// When the user clicks on <span> (x), close the modal
 	 span.onclick = function() {
            modal.style.display = "none";
        }

	// When the user clicks anywhere outside of the modal, close it
	
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
</script>
	<script src="../careView/contactform/vendor/daterangepicker/moment.min.js"></script>
	<script src="../careView/contactform/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="../careView/contactform/vendor/countdowntime/countdowntime.js"></script>
	
	<script src="../careView/contactform/js/main.js"></script>
	

	</section>

</section>

</main>

		<script  type="text/javascript" src="../careView/js/materialize.js"></script>
	
<jsp:include page="../includer/carefooter.jsp"/>
</body>
</html>