<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONLIFE - MANAGER PAGE</title>


<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean" rel="stylesheet">
<link href="../common/manager/managercss/jquery-accordion-menu.css" rel="stylesheet" type="text/css" />
<link href="../common/manager/managercss/font-awesome.css" rel="stylesheet" type="text/css" />

<script src="https://code.jquery.com/jquery-latest.js"></script>  
<style type="text/css">
*{box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box; }
body{background:#f0f0f0;}
.content{width:240px;}
.filterinput{
	background-color:rgba(249, 244, 244, 0);
	border-radius:15px;
	width:90%;
	height:30px;
	border:thin solid #FFF;
	text-indent:0.5em;
	font-weight:bold;
	color:#FFF;
}
#demo-list a{
	overflow:hidden;
	text-overflow:ellipsis;
	-o-text-overflow:ellipsis;
	white-space:nowrap;

}




</style>
<!-- <script src="../common/manager/managerjs/jquery-1.11.2.min.js" type="text/javascript"></script>  -->
<!-- <script type="text/javascript" src="../common/manager/managerjs/jquery.form.js"></script> -->
 
<script type="text/javascript">



$(function(){	

	
	/* $(document).on('click','#recruitDelete',function(){	
		
		$.ajax({	        
		        type: "post",
		        url: "../care/recruitDel",
		        data: "recNum=" + $("#recNum").val(),						
		        dataType:"html",
		        success : function test(data){	 
		        	
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}         
		 }); 
	
	}); */

	
	$('#itemreceiving').click(function(){	
		  $.ajax({	        
			        type: "post",
			        url: "itemreceiving",
			        dataType:"html",
			        success : function test(data){ 
			        		$("#maincall").html(data); 
			        		},
			        error : function error(){alert("error");}    
			     
			 }); 		 
	});
	
	
	$('#laundryList').click(function(){	
		  $.ajax({	        
			        type: "post",
			        url: "L_revList",
			        dataType:"html",
			        success : function test(data){ 
			        		$("#maincall").html(data); 
			        		},
			        error : function error(){alert("error");}    
			     
			 }); 		 
	});
	
	
	$('#cleanrevList').click(function(){	
		  $.ajax({	        
			        type: "post",
			        url: "C_revList",
			        dataType:"html",
			        success : function test(data){ 
			        		$("#maincall").html(data); 
			        		},
			        error : function error(){alert("error");}    
			     
			 }); 		 
	});
	
	
	$('#interview').click(function(){	
	  $.ajax({	        
		        type: "post",
		        url: "interview",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 }); 		 
	});
	
	$('#empList').click(function(){	
		  $.ajax({	        
			        type: "post",
			        url: "empList",
			        dataType:"html",
			        success : function test(data){ 
			        		$("#maincall").html(data); 
			        		},
			        error : function error(){alert("error");}    
			     
			 }); 		 
		});
	
	
	$('#empRegMail').click(function(){	
		  $.ajax({	        
			        type: "post",
			        url: "empRegistMail",
			        dataType:"html",
			        success : function test(data){ 
			        		$("#maincall").html(data); 
			        		},
			        error : function error(){alert("error");}    
			     
			 }); 		 
		});
	

	
	
	$('#cleanOrder').click(function(){	
		
  $.ajax({	        
		        type: "post",
		        url: "cleanorder",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 }); 	  
	});
	
	
	
	$('#recruitList').click(function(){
		
		  $.ajax({	        
		        type: "post",
		        url: "recruit",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 }); 

	});
	
	$('#roomRevList').click(function(){
		
		  $.ajax({	        
		        type: "post",
		        url: "roomRevList",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 }); 

	});
	
	
	$('#furnitureRevList').click(function(){
		
		  $.ajax({	        
		        type: "post",
		        url: "furnitureRevList",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 }); 

	});

	

	
	
	$('#cleanItemList').click(function(){
		
		  $.ajax({	        
		        type: "post",
		        url: "cleanItemList",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 }); 
	
	});
	
	$('#roomRegister').click(function(){
	/* 	location.href="../room/register" */
		
		
		   $.ajax({	        
		        type: "post",
		        url: "roomregister",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 });  
	
	});
	

	$('#roomList').click(function(){	
		   $.ajax({	        
		        type: "post",
		        url: "roomlist",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 });   
	
	});
	
	
	
	
	
	$('#funitureRegister').click(function(){	
		
	/* 	location.href="../funiture/register" */
		
	    $.ajax({	        
		        type: "post",
		        url: "../funiture/register",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 });    
	
	});
	

	$('#funitureList').click(function(){	
	
		
		   $.ajax({	        
		        type: "post",
		        url: "furniturelist",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 });   
	 
	});
	

	$('#shopRegister').click(function(){	
	
		
		   $.ajax({	        
		        type: "post",
		        url: "../shop/register",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 });   
	 
	});
	

	
	$('#materialRegister').click(function(){	
		
		
		   $.ajax({	        
		        type: "post",
		        url: "../material/register",
		        dataType:"html",
		        success : function test(data){ 
		        		$("#maincall").html(data); 
		        		},
		        error : function error(){alert("error");}    
		     
		 });   
	 
	});
	
	
	
	 jQuery(document).ready(function() {
         $('#myModal').show();
 });


		
		function close_pop(flag) {
		 $('#myModal').hide();
		};


	
});






</script>


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		google.charts.load('current', {'packages':['corechart']});
		
		google.charts.setOnLoadCallback(drawVisualization1);
		google.charts.setOnLoadCallback(drawVisualization2);
		google.charts.setOnLoadCallback(drawVisualization3);
		google.charts.setOnLoadCallback(drawVisualization4);
		
		
		function drawVisualization1() { 				
			var data1 = google.visualization.arrayToDataTable([
					['방내역', '방'],
					['공실',  165],
					['예약 된 방',  135]
				]);
			var options1 = {
					width: 400,
					height: 240,
					title : '객실 예약 현황1',
					is3D: true
				};		
			var chart1 = new google.visualization.PieChart(document.getElementById('chart_div1'));
			chart1.draw(data1, options1);
		}	
		
		
		
		function drawVisualization2() { 				
			var data2 = google.visualization.arrayToDataTable([
					['방내역', '방'],
					['공실',  165],
					['예약 된 방',  135]
				]);
			var options2 = {
					width: 400,
					height: 240,
					title : '객실 예약 현황2',
					is3D: true
				};		
			var chart2 = new google.visualization.PieChart(document.getElementById('chart_div2'));
			chart2.draw(data2, options2);
		}	
		
		
		
		function drawVisualization3() { 				
			var data3 = google.visualization.arrayToDataTable([
					['방내역', '방'],
					['공실',  165],
					['예약 된 방',  135]
				]);
			var options3 = {
					width: 400,
					height: 240,
					title : '객실 예약 현황3',
					is3D: true
				};		
			var chart3 = new google.visualization.PieChart(document.getElementById('chart_div3'));
			chart3.draw(data3, options3);
		}	
		
		
		
		
		function drawVisualization4() { 				
			var data4 = google.visualization.arrayToDataTable([
					['방내역', '방'],
					['공실',  165],
					['예약 된 방',  135]
				]);
			var options4 = {
					width: 400,
					height: 240,
					title : '객실 예약 현황4',
					is3D: true
				};		
			var chart4 = new google.visualization.PieChart(document.getElementById('chart_div4'));
			chart4.draw(data4, options4);
		}	
		
	</script>
 
 
</head>
<jsp:include page="../../../common/manager/managerheader.jsp"/>
<body >
<main  >



<div class="col-left contact-info">

	




<script type="text/javascript">
jQuery(document).ready(function () {
	jQuery("#jquery-accordion-menu").jqueryAccordionMenu();
	
});

$(function(){	
	
	$("#demo-list li").click(function(){
		$("#demo-list li.active").removeClass("active")
		$(this).addClass("active");
	})	
})	
</script>

<div class="content" >
	<div id="jquery-accordion-menu" class="jquery-accordion-menu red">
		<ul id="demo-list" style="font-size:25px; ">		    
		   	<li>
		   		<a href="#">회원관리 </a>
					<ul class="submenu">
						<li><a href="#">회원 리스트 </a>
								<span class="jquery-accordion-menu-label">count</span>
						</li>									
						<li><a href="#">회원 블랙리스트 </a> 
								<span class="jquery-accordion-menu-label">count</span>
						</li>
					</ul>
			</li>			
			<li>
			<a href="#">재고관리 </a>
				<ul class="submenu">
					<li><a href="#" id="cleanOrder">청소 물품 발주 </a></li>
					<li><a href="#" id="cleanItemList">발주 리스트 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>												
					<li><a href="#" id="itemreceiving">청소 물품 반출 </a></li>
					<li><a href="#">반출 리스트 </a>
						<span class="jquery-accordion-menu-label">count</span>
					</li>				
				</ul>
			</li>		
			<li>
			<a href="#">객실관리 </a>
				<ul class="submenu">
					<li><a href="#" id="roomRegister">객실 등록 </a></li>
					<li><a href="#" id="roomList">객실 리스트 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>
		  			
		  								
					
				</ul>
			</li>
			<li>
			<a href="#">가구관리 </a>
				<ul class="submenu">
					<li><a href="#" id="funitureRegister">가구 등록 </a></li>
					<li><a href="#" id="funitureList">가구 리스트 </a>
						<span class="jquery-accordion-menu-label">count</span>
		  			</li>
		  								
					
				</ul>
			</li>
				
			 <li>
				<a href="#">사원관리 </a>
				<ul class="submenu">
					<li><a href="#" id="recruitList">지원자 리스트 </a>
						<span class="jquery-accordion-menu-label">
						
						<c:if test="${recruitcount == null }">
						0
						</c:if>		
						<c:if test="${recruitcount >0 }">
							${recruitcount}
						</c:if>
						
						</span>
						</li>
						
						<li><a href="#" id="interview">면접대기자 </a></li>		
						<li><a href="#" id="empList">사원 리스트 </a>
						<span class="jquery-accordion-menu-label">
						<c:if test="${employeecount == null }">
						0
						</c:if>
						<c:if test="${employeecount >0 }">
							${employeecount}
						</c:if>
						
						
						</span>
						</li>
				</ul>
			</li>		
				<li><a href="#">예약관리 </a>
					<ul class="submenu">			
						<li><a href="#" id="cleanrevList">청소 예약 내역</a>
							<span class="jquery-accordion-menu-label">count</span>
						</li>
						<li><a href="#" id="laundryList">세탁 예약 내역 </a>
							<span class="jquery-accordion-menu-label">count</span>
						</li>
						<li><a href="#" id="roomRevList">객실 예약 내역 </a>
							<span class="jquery-accordion-menu-label">count</span>
						</li>
						<li><a href="#" id="furnitureRevList">가구 예약 내역 </a>
							<span class="jquery-accordion-menu-label">count</span>
						</li>					
				</ul>
				</li>	
				 <li><a href="#">혼샵 </a>
					<ul class="submenu">			
						<li><a href="#" id="shopRegister">SSG상품입고</a></li>
						<li><a href="../shop/list" id="shopList">상품관리</a></li>
						<li><a href="#">혼샵 배송 관리 </a></li>
						<li><a href="#">장터 관리 </a></li>					
				</ul>
				</li>     
		</ul>
	</div>
</div>

<script type="text/javascript">

(function($) {
$.expr[":"].Contains = function(a, i, m) {
	return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
};


function filterList(header, list) {
	var form = $("<form>").attr({
		"class":"filterform",
		action:"#"
	}), input = $("<input>").attr({
		"class":"filterinput",
		type:"text"
	});
	$(form).append(input).appendTo(header);
	$(input).change(function() {
		var filter = $(this).val();
		if (filter) {
			$matches = $(list).find("a:Contains(" + filter + ")").parent();
			$("li", list).not($matches).slideUp();
			$matches.slideDown();
		} else {
			$(list).find("li").slideDown();
		}
		return false;
	}).keyup(function() {
		$(this).change();
	});
}
$(function() {
	filterList($("#form"), $("#demo-list"));
});
})(jQuery);	 
</script>
		
			
		</div>

		<div class="col-right" id="maincall">
		
		
		
		
		
	
		<table class="columns" style="position: relative;right: 215px;top: -5px;">
      <tr>
        <td>
        <div id="chart_div1" style="width:350px; height: 230px;"></div>
        </td>   
        <td>
        <div id="chart_div2" style="width:350px; height: 230px;"></div>     
        </td>
        <td>
            <div id="chart_div3" style="width:350px; height: 230px;"></div>
        </td>
        
        </tr>
        <tr>   
        <td>
        <div id="chart_div4" style="width:350px; height: 123px;"></div>
        </td>
      </tr>
    </table>
		</div>






<script src="../common/manager/contactform/vendor/bootstrap/js/popper.js"></script> 


	<script src="../common/manager/contactform/vendor/daterangepicker/moment.min.js"></script>
	<script src="../common/manager/contactform/vendor/animsition/js/animsition.min.js"></script>
	<script src="../common/manager/contactform/js/main.js"></script>
    
	<script src="../common/manager/contactform/vendor/bootstrap/js/bootstrap.min.js"></script> 

<script src="../common/manager/managerjs/jquery-accordion-menu.js" type="text/javascript"></script>
</main>











</body>
</html>