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
		예약이 완료되었습니다 ! 내용을 확인해주세염.
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
    <td colspan="3">${pc.revNo }</td>
  </tr>
  <tr>
    <td>성명</td>
    <td>${pc.uname }</td>
    <td>연락처</td>
    <td>${pc.uph }</td>
  </tr>
  <tr>
    <td>이메일</td>
    <td colspan="3">${pc.uemail }</td>
  </tr>
  <tr>
    <td>예약 주소</td>
    <td colspan="3">${pc.revaddr }</td>
  </tr>
  <tr>
    <td>예약시간</td>
    <td colspan="3">
		
   <fmt:formatDate value="${pc.revdate}" pattern="yyyy-MM-dd"/> &nbsp;&nbsp;&nbsp;&nbsp;${pc.revtime }시</td>
  </tr>
  <tr>
    <td>담당 매니저</td>
    <td>${pc.empname }</td>
    <td>담당매니저 연락처</td>
    <td>${pc.empph }</td>
  </tr>
  <tr>
    <td>청소면적</td>
    <td colspan="3">${pc.size }평</td>
  </tr>
  <tr>
    <td colspan="4">요청사항</td>
  
  </tr>
  <tr>
    <td colspan="4">  ${pc.demand }</td>
  </tr>
  <tr>
    <td colspan="2"></td>
    <td>총 결제 금액</td>
    <td>${pc.pay }</td>
  </tr>
</table>
 <div class="row">
<button class="btn waves-effect waves-light"  id="sub" onclick ="location.href='../careMain'" style="width: 30%; border-radius: 30px; background-color: black">메인으로
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