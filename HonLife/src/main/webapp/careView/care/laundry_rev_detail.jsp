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
      <link type="text/css" rel="stylesheet" href="/project/careView/css/materialize.min.css"  media="screen,projection"/>
   
   
    
     <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
     
 


<body>
	<jsp:include page="../includer/careheader.jsp"/>

<main>

<script type="text/javascript">
	function goMain(){
		
		location.href="../careMain";
		
	}


</script>

<section>
		<section class="main-section-1">

		<div class="section-content animate-in-view clearfix">

	

<div class="container-contact100">
		<div class="wrap-contact100">
			
				
				<span class="contact100-form-title" >
			예약이 완료되었습니다. 담당 기사가 배정되면 문자로 알려드리겠습니다!
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
    <td colspan="3">${ld.laundryrevNo }</td>
  </tr>
  <tr>
    <td>성명</td>
    <td>${mem.userName }</td>
    <td>연락처</td>
    <td>${mem.userPh }</td>
  </tr>
  <tr>
    <td>이메일</td>
    <td colspan="3">${mem.userEmail }</td>
  </tr>
  <tr>
    <td>예약 주소</td>
    <td colspan="3">${ld.laundryrevAddr }</td>
  </tr>
  <tr>
    <td>희망 수거 날짜</td>
    <td colspan="3"> <fmt:formatDate value="${ld.laundryrevDate }" pattern="yyyy-MM-dd"/></td>
  </tr>
  <tr>
  <td>희망 배송 날짜</td>
    <td colspan="3"> <fmt:formatDate value="${ld.laundryrevRecdate }" pattern="yyyy-MM-dd"/></td>
  </tr>

</table>
 <button class="btn waves-effect waves-light" onclick="goMain()" style="margin-left: 135px;width: 50%; border-radius: 30px; background-color: black">메인으로!
   <i class="material-icons right">send</i>
  </button>

</div>
</div>
</div>




<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <!-- The Modal -->
    <div id="myModal" class="modal">
      <!-- Modal content -->
 
      <div class="modal-content"  id="paycall" style="text-align: center;">
			
     
      </div>
 
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <script  type="text/javascript" src="/project/careView/js/materialize1.js"></script>

	
	<script src="/project/careView/contactform/js/main.js"></script>
	

	</section>

</section>

</main>

	
	
<jsp:include page="../includer/carefooter.jsp"/>
</body>
</html>