<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>

<html >



<head>


	<link rel="icon" type="image/png" href="../common/manager/contactform/images/icons/favicon.ico"/>

<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean" rel="stylesheet">
<link href="../common/manager/managercss/jquery-accordion-menu.css" rel="stylesheet" type="text/css" />
<link href="../common/manager/managercss/font-awesome.css" rel="stylesheet" type="text/css" />
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
    

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>


      <!--JavaScript at end of body for optimized loading-->
      <link type="text/css" rel="stylesheet" href="../careView/css/materialize.min.css"  media="screen,projection"/>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" >
	$(function(){
		
		$('#empList').change(function(){	
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
		
		
		
		
	})


</script>


<script  type="text/javascript" src="../careView/js/materialize1.js"></script>
</head>

<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="col s12" method="POST" name="frm" id="frm" action="recevingItemAct" >
			
 
      <div class="row">
        <div class="input-field col s6">
       <select class="browser-default" name="cleanrevTime" id="orderEmp">
    	 <option value="" disabled selected >입고처를 선택해주세요!</option>
    	 <c:forEach items="${orders }" var="order" varStatus="i">
    	 <option value="${order.cleanorderNo }" >${order.cleanorderCompanyName }</option>
    	 
    	 </c:forEach>

  		</select>
        </div>
        <div class="input-field col s6" >
      <select class="browser-default" name="cleanrevTime" id="orderNo">
    	 <option value="" disabled selected >반출사원의 사번을 선택하세요!</option>

  		</select>
        </div>
      
      </div>
     
     
     
     <div class="row">
     
     <div class="input-field col s6">
     <label>반출날짜</label>
      <input type="text" class="datepicker" id="orderInDate"name="orderInDate" value="" readonly="readonly">
	</div>
		
<script type="text/javascript" >
 $(function(){  	
	 document.getElementById('orderInDate').value= 
			new Date().toISOString().substring(0,10);


	
	
	  
   $('select#cleanrevTime').change( function() {		 
	   console.log($('.datepicker').datepicker().val()); 
	   console.log($('select#cleanrevTime').val());
	    	$.ajax({
		   		type:"POST",
		   		url:"../empsel",
		   		data:'time='+$('select#cleanrevTime').val()+"&date="+$('.datepicker').datepicker().val(),
		   		datatype:'html' ,
		   		success: function(data1){
	   			 $('#employee').html(data1);   			 
		   		}	   			   	
		   	}); 		    
	   }); 
   

 });
</script>

    <div class="input-field col s6" >   

     </div>
     
     
   </div>

	
    <div class="row">
 
 
  </div>
  
  <div class="row">
   
  </div>
  
  
  


						




 																				<!-- onclick="javascript:check()"  -->
 <button class="btn waves-effect waves-light"  id="sub" type="submit" style="width: 100%; border-radius: 30px; background-color: black">반출
    <i class="material-icons right">send</i>
  </button>
				       
			</form>
		</div>
	</div>




	

	
	<script src="../common/manager/contactform/js/main.js"></script>
	
<!-- Global site tag (gtag.js) - Google Analytics -->

	




		
	</body>

</html>
