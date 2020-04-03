<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

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

<script src="https://code.jquery.com/jquery-latest.js"></script>
	
		<section class="animate-in-view">
			<div class="section-content clearfix">
			
			<span  style="font-size: 40px;"> 지원자 리스트</span>
	        </div>
	

	<div class="table" style="position:relative;right: 20px;">

		<div class="table-head">

			<div class="table-head-content section-content clearfix">		
				<div class="th"><span>발주 번호</span></div>
				<div class="th"><span>발주 처</span></div>
				<div class="th"><span>발주사원 이름</span></div>
				<div class="th"><span>발주 날짜</span></div>
				<div class="th"><span>납기 날짜</span></div>
				<div class="th"><span>입고 확인</span></div>
			</div>

		</div>
	
		<div class="table-body">
			<div class="table-rows">	
				<c:forEach items="${orderList }" var="list" varStatus="status">
				
				
	
					<div class="tr reserved">
								
							<div class="tr-content">
								<div class="tr-head">
																					
									<div class="td">								
										<span>
										${list.orderDTO.cleanorderNo }
										</span>
									</div>
									<div class="td">
										 <span>
										 ${list.orderDTO.cleanorderCompanyName}
										 </span>
									</div>
									
									<div class="td">
										 <span>
										 ${list.empDTO.employeeName }
										 </span>
									</div>
									
									<div class="td">
									<span>
								<fmt:formatDate value="${ list.orderDTO.cleanorderDate}" pattern="yyyy-MM-dd" />											
									</span>
									</div>		
												
									<div class="td">
										<span >
								<fmt:formatDate value="${ list.orderDTO.cleanorderReceiveDate}" pattern="yyyy-MM-dd"/>											
										</span>									
									</div>
									
									<div class="td">
									<c:if test="${list.orderDTO.orderChk != 1 }">			
										<a href="#"  onclick="javascript:orderchk('${list.empDTO.employeeNo}',${list.orderDTO.cleanorderNo})"  style="margin-right: 10px;font-size: 25px;">입고 확인</a>														
									</c:if>
										<c:if test="${list.orderDTO.orderChk == 1 }">
										<a href="#" style="margin-right: 10px;font-size: 25px;">확인 완료</a>														
										</c:if>	
									</div>
							
							
								</div>
								<div class="tr-body">												
													
									<div class="col-right" style="margin-right: 200px;">
										
									<table style="undefined;table-layout: fixed; width: 275px">
								<colgroup>
						<col style="width: 155px">
						<col style="width: 300px">
						
									</colgroup>
									
									<tr>
	  										<td>발주사원 연락처</td>
	  										<td>${list.empDTO.employeePh }</td>
  									</tr>
  									<tr>
  											<td> 발주사원 이메일</td>
  											<td>${list.empDTO.employeeEmail }</td>
  									</tr>
  									
  									<tr>
    										<td>발주처</td>  									
   											<td>   											
   												${list.orderDTO.cleanorderCompanyName}						
   											</td>
  									</tr>
  									
  									<tr>
    									<td>발주처 연락처</td>
   									    <td>${list.orderDTO.cleanorderCompanyPh }</td>
  									</tr>					
  									<tr>
    									<td>발주처 팩스</td>
    									<td>${list.orderDTO.cleanorderCompanyFax }<td>
  									</tr>
  								
  									<tr>
    									<td>우편번호</td>
    									<td>${list.orderDTO.cleanorderPostcode } </td>
                                    </tr>
                                    
 									 <tr>
   										 	<td>발주처 주소</td>
   										 	<td> 
   										 	${list.orderDTO.cleanorderAddress } <br>
   										 	${list.orderDTO.cleanorderAddrdetail }									 	
   										 	</td>
  									 </tr>
  									   
  									 <tr>
  									 <td colspan ='2'>
  									 	<a href ="#" onclick="javascript:showTable(${list.orderDTO.cleanorderNo})" style="color: red;" >###발주내역 상세보기</a>
  									 
  									 	
  									 	<div id="orderTable">
  									 	
  									
  								
  										</div>
  								</td>								
  								</tr>
  							
  									 <tr>
   										 	<td>배송방법</td>
   										 	<td>  
   									<c:if test="${list.orderDTO.moveHow == 'youngdal' }"> 용달</c:if>	 	
   									<c:if test="${list.orderDTO.moveHow == 'quick' }">퀵 서비스</c:if>	
   									<c:if test="${list.orderDTO.moveHow == 'damas' }"> 다마스 퀵</c:if>	 	
   										 	</td>					 
  									</tr>
  									
  									
  									
  									<tr>
  											<td>지불방법</td>
   										 	<td>
   								<c:if test="${list.orderDTO.movePay == 'sun' }">선불</c:if>
   								<c:if test="${list.orderDTO.movePay == 'chak' }">착불</c:if>
   										 	  </td>
  									</tr>
  									
  									
  									
  									
  								
  								
</table>
								
									
					<button class="minimal-btn close-tr elem-line-after">상세 닫기</button> 
									
											
					<button class="minimal-btn close-tr2 " style="margin-right: 10px">| </button> 
											
									
					<a href="#" class="minimal-btn close-tr2 " onclick="" style="margin-right: 10px"> 리스트 삭제</a>
								
									</div>
										
											
											
								</div>
							</div>
						</div>
				</c:forEach>

							
			</div>

		</div>

	</div>


 
    <!-- The Modal -->
    <div id="myModal" class="modal">
      <!-- Modal content -->
 
      <div class="modal-content" style="text-align: center;">     
      <img src="../common/member/image/mail.jpg" style="width: 190px;height: 122px;margin-left: 300px;" />                                                          
      
        <p style="font-size: 50px">메일을 전송중입니다 잠시만 기다려주세요! </p>
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


function showTable(data1){			
		$.ajax({	        
		        type: "post",
		        dataType:"html",
		        url: "tableDetail",
		        data:"orderNo=" + data1, 						
		        success : function test(data){	
		        		$("#orderTable").html(data); 
		        		},
		        error : function error(){alert("error");}         
		 });   
	};

	
function orderchk(data1,data2){
	$.ajax({	        
        type: "post",
        dataType:"html",
        url: "orderChk",
        data:{"empNo" : data1, "orderNo" : data2}, 						
        success : function test(data){	
        		$("#chk").html(data); 
        		},
        error : function error(){alert("error");}         
 });    
};
	
	
	
	

	function deletelist(data){
		$.ajax({	        
	        type: "post",
	        url: "../care/recruitDel",
	        data: "recNum=" + data,						
	        dataType:"html",
	        success : function test(data){	 
	        	
	        		$("#maincall").html(data); 
	        		},
	        error : function error(){alert("error");}         
	 }); 
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
</body>
</html>