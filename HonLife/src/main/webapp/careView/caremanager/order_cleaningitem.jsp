<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html >

<head>

<jsp:include page="../includer/managerheader.jsp"/>
	<link rel="icon" type="image/png" href="careView/contactform/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="careView/contactform/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="careView/contactform/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="careView/contactform/fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="careView/contactform/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="careView/contactform/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="careView/contactform/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="careView/contactform/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="careView/contactform/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="careView/contactform/vendor/noui/nouislider.min.css">
	<link rel="stylesheet" type="text/css" href="careView/contactform/css/util.css">
	<link rel="stylesheet" type="text/css" href="careView/contactform/css/main.css">


<link href="careView/css/managercss/jquery-accordion-menu.css" rel="stylesheet" type="text/css" />
<link href="careView/css/managercss/font-awesome.css" rel="stylesheet" type="text/css" />
<script src="careView/js/jquery/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="careView/js/jquery/jquery-accordion-menu.js" type="text/javascript"></script>



</head>

<body>
<main  >



		<div class="col-left contact-info">

			<jsp:include page="../includer/sidemenu.jsp" />
		
			
		</div>

		<div class="col-right">


	



	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form ">
				<span class="contact100-form-title">
				발주 내용을 입력하세요!
				</span>
				<span class="label-input100" style="font-size: 20px">발주처</span>
				<div class="wrap-input100 " >
					
					<input class="input100" type="text" name="name" placeholder="발주처를 입력하세요">
				</div>
				
				<span class="label-input100" style="font-size: 20px">주소</span>
				<div class="wrap-input100 ">
					<input class="input100" type="text" name="name" placeholder="주소를 입력하세요.">
				</div>
			
				
				<span class="label-input100" style="font-size: 20px" >연락처</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100">			
					<input class="input100" type="text" name="phone" placeholder="연락처를 입력하세요">
				</div>
				
				
				<span class="label-input100" style="font-size: 20px" >FAX</span>
					<div class="wrap-input100 bg1 rs1-wrap-input100">				
					<input class="input100" type="text" name="phone" placeholder="팩스번호를 입력하세요">
				</div>
	
	<div>	
	
	<script type="text/javascript" >
	  $('#btn-add-row').click(function() {
	    var time = new Date().toLocaleTimeString();
	    $('#mytable > tbody:last').append('<tr ><td rowspan=3>안녕ㅋ 친구들ㅋ </td><td>' + time + '</td></tr>');
	  });
	  $('#btn-delete-row').click(function() {
	    $('#mytable > tbody').remove();
	  });
	</script>
	
				<table style="undefined;table-layout: fixed; width: 293px"  id="dynamicTable">
		<colgroup>
				<col style="width: 160px">
				<col style="width: 120px">
				<col style="width: 120px">
			</colgroup>
			<thead>
  			<tr>
    			<th>품명</th>
    			<th>단가</th>
    			<th>수량</th>
 			</tr>
 			</thead>
  				<tbody id="dynamicTbody">
  				
  				
  				</tbody>
 			
				</table>
				
				</div>
				<div>
						<input type="text" placeholder="발주 물품" id="cleanItem">
						<input type="text" placeholder="단가" id="cleanPrice"> 
						<input type="text" placeholder="수량" id="qty">
						
						<button id="#btn-add-row">발주 물품 추가</button>
		</div>
					
		
			<!-- <tr>
   				 <td>
   				 	<input class="input100" type="text" name="name"value="">
   				 </td>
   				 <td>
   					<input class="input100" type="text" name="name"value="">
   				 </td>
    			 <td>
    			 	<input class="input100" type="text" name="name"value="">
   			 	</td>
  				</tr> -->
				

				

				
				
				
				
				
				
				
				

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						<span>
							발주 전송
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>




	
	<script src="careView/contactform/vendor/animsition/js/animsition.min.js"></script>
	<script src="careView/contactform/vendor/bootstrap/js/popper.js"></script>
	<script src="careView/contactform/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="careView/contactform/vendor/daterangepicker/moment.min.js"></script>
	<script src="careView/contactform/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="careView/contactform/vendor/countdowntime/countdowntime.js"></script>
	
	<script src="careView/contactform/js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->

		</div>
</main>


	
		
	</body>

</html>
