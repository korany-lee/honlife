<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>


<body>

<script src="https://code.jquery.com/jquery-latest.js"></script>
	
		<section class="animate-in-view">
			<div class="section-content clearfix">
			
			<span  style="font-size: 40px;"> 지원자 리스트</span>
	        </div>


	<div class="table" style="position:relative;right: 20px;">

		<div class="table-head">

			<div class="table-head-content section-content clearfix">		
			
				<div class="th"><span>이름</span></div>		
				<div class="th"><span>이메일</span></div>
				<div class="th"><span>모집구분</span></div>
				<div class="th"><span>지원자 확인 여부</span></div>
				
	
			</div>

		</div>
	
		<div class="table-body">
			<div class="table-rows">	
				<c:forEach items="${interview }" var="list" varStatus="status">
															
				<input type="hidden" value="${list.recruitNo }" id="recNum"/>
	
					<div class="tr reserved">
								
							<div class="tr-content">
								<div class="tr-head">
																				
									<div class="td">								
										<span>
									<input style="background-color: transparent; cursor:pointer;color: #9fa7a7 " class="boardList"  id="name" type="text" value="${list.recruitName}" readonly="readonly">	
										</span>
									</div>																									
									<div class="td">
										<span >
											<input style="background-color: transparent; cursor:pointer; color: #9fa7a7" id="reciver" class="boardList" type="text" value="${list.recruitEmail}" readonly="readonly">
										</span>
										
									</div>
									<div class="td">
									<c:if test="${list.recruitClass == 'cm' }">
										청소매니저
									</c:if>
									<c:if test="${list.recruitClass == 'lm' }">
									세탁 운송매니저
									</c:if>
										
									</div>
									
									
									
									<div class="td">
							<c:if test="${list.interview == 1 }">
									  확인
				             </c:if>   
				             <c:if test="${list.interview != 1 }">
									  미확인
				             </c:if> 
				                                           
									</div>
									<div class="td">
															<c:if test="${list.interview == null && list.recruitClass=='cm'}">
																<a href="#" id="interviewMail" onclick="javascript:sendIntMail(${list.recruitNo},'${list.recruitEmail }','${list.recruitName }')"style="margin-right: 10px">면접 메일 발송</a>
															</c:if>
									
									 						<c:if test="${list.interview == null && list.recruitClass == 'lm'}">
																<a href="#" id="interviewMail" onclick="javascript:sendIntMail(${list.recruitNo},'${list.recruitEmail }','${list.recruitName }')"style="margin-right: 10px">면접 메일 발송</a>
															</c:if>
															
															<c:if test="${list.interview == 1 }">
															    <a href="#" onclick="javascript:sendRegMail(${list.recruitNo},'${list.recruitEmail }','${list.recruitName }')" style="margin-right: 10px">사원 등록메일 발송</a>
																</c:if>
															
																		    
															<a href="#" onclick="javascript:deletelist(${list.recruitNo})" style="margin-right: 10px"> 리스트 삭제</a>
																							
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

<script type="text/javascript">

function sendIntMail(data1,data2,data3){
	modal.style.display = "block";
	$.ajax({	        
        type: "post",
        dataType:"html",
        url: "intMail",
        data:{"recNum": data1,"reciver": data2, "name": data3}, 						
        success : function test(data){
        	modal.style.display = "none";
        		$("#maincall").html(data); 
        		},
        error : function error(){alert("error");}         
 });  
};


	function sendRegMail(data1,data2,data3){
		modal.style.display = "block";
		$.ajax({	        
	        type: "post",
	        dataType:"html",
	        url: "regMail",
	        data:{"recNum": data1,"reciver": data2, "name": data3}, 						
	        success : function test(data){	
	        	modal.style.display = "none";
	        		$("#maincall").html(data); 
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
};


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
};
</script>
<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-content/themes/voxverticalvillage/assets/js/scripts.min.js'></script>
<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-includes/js/wp-embed.min.js?ver=5.3.2'></script>


</body>
</html>