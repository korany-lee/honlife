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
				<div class="th"><span>순번</span></div>
				<div class="th"><span>발주 처</span></div>
				<div class="th"><span>발주사원 이름</span></div>
				<div class="th"><span>발주 날짜</span></div>
				<div class="th"><span>납기 날짜</span></div>
				<div class="th"><span>입고 확인</span></div>
			</div>

		</div>
	
		<div class="table-body">
			<div class="table-rows">	
				<c:forEach items="${orders}" var="list" varStatus="str1">
				<input type="hidden" value="${str1.count }" id="count"/>
					
		
			
					<div class="tr reserved">
								
							<div class="tr-content">
								<div class="tr-head">
																					
									<div class="td">								
										<span>
									${ str1.count }
										</span>
									</div>
									<div class="td">
										 <span>
									${list.cleanorderCompanyName }
										 </span>
									</div>
									<div class="td">
										 <span>
									${list.empDTO.employeeName }
										 </span>
									</div>
									
									<div class="td">
									<span>
									<fmt:formatDate value="${list.cleanorderDate }"  pattern="yyyy/MM/dd"/>
															
									</span>
									</div>		
												
									<div class="td">
										<span >
										<fmt:formatDate value="${list.cleanorderReceiveDate }" pattern="yyyy/MM/dd"/>
									
										</span>									
									</div>
									
									<div class="td">
									<c:if test="">			
										<a href="#"  onclick="javascript:orderchk('${list.empDTO.employeeNo}','${cleanorderNo }')"  style="margin-right: 10px;font-size: 25px;">입고 확인</a>														
									</c:if>
										<c:if test="">
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
	  										<td> ${list.empDTO.employeePh }</td>
  									</tr>
  									<tr>
  											<td> 발주사원 이메일</td>
  											<td>${list.empDTO.employeeEmail }</td>
  									</tr>
  									
  									<tr>
    										<td>발주처</td>  									
   											<td>   											
   										${list.cleanorderCompanyName }		
   											</td>
  									</tr>
  									
  									<tr>
    									<td>발주처 연락처</td>
   									    <td>${list.cleanorderCompanyPh }</td>
  									</tr>					
  									<tr>
    									<td>발주처 팩스</td>
    									<td>${list.cleanorderCompanyFax }<td>
  									</tr>
  								
  									<tr>
    									<td>우편번호</td>
    									<td>${list.cleanorderPostcode }</td>
                                    </tr>
                                    
 									 <tr>
   										 	<td>발주처 주소</td>
   										 	<td> 
   										 	 ${list.cleanorderAddress }	<br>
   										 	 ${list.cleanorderAddrdetail }
   										
   										 							 	
   										 	</td>
  									 </tr>
  									   
  									 <tr>
  									 <td colspan ='2'>
  									 	<a href ="#" onclick="javascript:showTable('${list.cleanorderNo}')" style="color: red; cursor: pointer;" >###발주내역 상세보기</a>
  									 
  									 	
  									 
  										
  										<div>
  											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	총 발주 금액 : ${list.allsum }원
  										</div>
  								</td>								
  								</tr>
  							
  									 <tr>
   										 	<td>배송방법</td>
   										 	<td>  
   									<c:if test=""> 용달</c:if>	 	
   									<c:if test="">퀵 서비스</c:if>	
   									<c:if test=""> 다마스 퀵</c:if>	 	
   										 	</td>					 
  									</tr>
  									
  									
  									
  									<tr>
  											<td>지불방법</td>
   										 	<td>
   								<c:if test="">선불</c:if>
   								<c:if test="">착불</c:if>
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
      		<div id= "orderTable">
      				
      		
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


	function showTable(data1){		
		modal.style.display = "block";
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
	var btn = document.getElementById('tableModal');

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