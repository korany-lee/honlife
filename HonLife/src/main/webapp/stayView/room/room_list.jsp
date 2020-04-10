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
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>  
<script type="text/javascript">
 	function floorDetail(n){
 		$("#floorDetail").innerHTML = "";  
 		 		
 		
 		$.ajax({
 			type : "POST",
 			url : "floorDetail",
 			data : "floor=" +n ,
 			datatype : "html",
 			success : function(data1) {
 				$("#detail").innerHTML= n+"층 단면도";
 				$("#floorDetail").html(data1);
 			}
 		
 		});  
 	}	
 
	</script>
<!-- <style type="text/css">

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


</style> -->
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>

<body>

<script src="https://code.jquery.com/jquery-latest.js"></script>
	
		<section class="animate-in-view">
			<!-- <div class="section-content clearfix"> -->
			<br>
			<span  style="font-size: 40px;"> 객실 단면도</span><br><br>
			
<table class="tg" style="undefined;table-layout: fixed; width: 783px">
<colgroup>
<col style="width: 75px">
<col style="width: 87px">
<col style="width: 391px">
<col style="width: 230px">
</colgroup>
  <tr>
    <th class="tg-0pky"><span id="detail"></span></th>
    <th class="tg-0pky" colspan="3" rowspan="13"><div id="floorDetail"></div></th>
  </tr>
  
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('15')" id="aaaa">15층</a></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('14')" id="aaaa">14층</a></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('13')" id="aaaa">13층</a></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('12')" id="aaaa">12층</a></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('11')" id="aaaa">11층</a></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('10')" id="aaaa">10층</a></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('9')" id="aaaa">9층</a></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('8')" id="aaaa">8층</a></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('7')" id="aaaa">7층</a></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('6')" id="aaaa">6층</a></td>
  </tr>
  <tr>
    <td class="tg-lboi"><a href="#" onClick="javascript:floorDetail('5')" id="aaaa">5층</a></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('4')" id="aaaa">4층</a></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="#" onClick="javascript:floorDetail('3')" id="aaaa">3층</a></td>
  </tr>
</table>
			
			




		<script
			src="../common/manager/contactform/vendor/animsition/js/animsition.min.js"></script>
		<script
			src="../common/manager/contactform/vendor/bootstrap/js/popper.js"></script>
		<script
			src="../common/manager/contactform/vendor/bootstrap/js/bootstrap.min.js"></script>

		<script
			src="../common/manager/contactform/vendor/daterangepicker/moment.min.js"></script>
		<script
			src="../common/manager/contactform/vendor/daterangepicker/daterangepicker.js"></script>
		<script
			src="../common/manager/contactform/vendor/countdowntime/countdowntime.js"></script>

		<script src="../common/manager/contactform/js/main.js"></script>

		<!-- Global site tag (gtag.js) - Google Analytics -->


</section>
</body>
</html>