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
		
		
		$("#today").click(function() {
			  
			  $("#list").innerHTML = "";  
			 	
			 $.ajax({
				type : "POST",
				url : "todayRevRev",
				datatype : "html",
				success : function(data1) {
					$("#list").html(data1);
				}
			});  
		});
	}); 
function detail(n){
	$("#detail").innerHTML = "";  
			
	$.ajax({
	type : "POST",
	url : "furnitureRevDetail",
	data : "revNum=" +n ,
	datatype : "html",
	success : function(data1) {
				$("#detail").html(data1);
				}
			});  
		}	
	  
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

<script src="https://code.jquery.com/jquery-latest.js"></script>
	
		<section class="animate-in-view">
			<!-- <div class="section-content clearfix"> -->
			<br>
			<span  style="font-size: 40px;"> 가구 예약현황</span><br><br>
	    <!--     </div> -->
	         <input type="text" id="search" name="search" placeholder="예약번호를 입력하세요" style="width:300px;">
                <input type="button"  value="검색" id="searchBtn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="오늘 입실예약보기" id="today">

	<div class="table" style="position:relative;right: 20px;" id="detail">

		<div class="table-head">

			<div class="table-head-content section-content clearfix">		
				<div class="th"><span>예약번호</span></div>
				<div class="th"><span>예약자명</span></div>
				<div class="th"><span>예약객실</span></div>
				<div class="th"><span>입실날짜</span></div>
				<div class="th"><span>상세보기</span></div>
			</div>

		</div>
	
		<div id="list" class="table-body">
			<div class="table-rows">	
				<c:forEach items="${rev }" var="list" varStatus="status">
					<%-- <input type="hidden" value="${list.recruitNo }" id="recNum" name="recruitNo[$]"/> --%>
				
					<c:if test="${list.roomRevFrevchk eq'준비미완료' }">
					<div class="tr reserved">
								
							<div class="tr-content">
								<div class="tr-head">
																					
									<div class="td">								
										<span>
									<input style="background-color: transparent; cursor:pointer;color: #9fa7a7 " class="boardList"  id="name" type="text" value="${list.roomRevNo}" readonly="readonly">	
										</span>
									</div>
									
									<div class="td">
									<span>${list.roomRevName }</span>
									</div>
									
									<div class="td">
									<!-- <td> -->
									<span>${list.roomNo }</span>
									</div>					
									<div class="td">
										<span >
											<input style="background-color: transparent; cursor:pointer; color: #9fa7a7" id="reciver" class="boardList" type="text" value="<fmt:formatDate value="${list.roomRevStartDate }" pattern="yyyy-MM-dd"/>" readonly="readonly">
										</span>
										
									</div>
										<div class="td">
										<a href="#" onClick="javascript:detail('${list.roomRevNo}')" >상세보기</a>
									</div>
									
								</div>
								
							</div>
						</div>
						</c:if>
				</c:forEach>

							
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
	function sendRecMail(data1,data2,data3){		
		modal.style.display = "block";
		$.ajax({	        
		        type: "post",
		        dataType:"html",
		        url: "recMail",
		        data:{"recNum": data1,"reciver": data2, "name": data3}, 						
		        success : function test(data){	
		            modal.style.display = "none";
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}         
		 });  
	
	};


	function checkin(a,b){
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
</body>
</html>