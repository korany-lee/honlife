<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html >

<head>

<jsp:include page="../../../common/manager/managerheader.jsp"/>
	<link rel="icon" type="image/png" href="../common/manager/contactform/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="../common/manager/contactform/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../common/manager/contactform/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../common/manager/contactform/fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="../common/manager/contactform/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="../common/manager/contactform/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="../common/manager/contactform/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="../common/manager/contactform/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../common/manager/contactform/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../common/manager/contactform/vendor/noui/nouislider.min.css">
	<link rel="stylesheet" type="text/css" href="../common/manager/contactform/css/util.css">



<link href="../common/manager/managercss/jquery-accordion-menu.css" rel="stylesheet" type="text/css" />
<link href="../common/manager/managercss/font-awesome.css" rel="stylesheet" type="text/css" />
<script src="../common/manager/managerjs/jquery/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="../common/manager/managerjs/jquery/jquery-accordion-menu.js" type="text/javascript"></script>



</head>

<body>
<main  >



		<div class="col-left contact-info">

			<jsp:include page="../../../common/manager/sidemenu.jsp" />
		
			
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
	<script type="text/javascript">

	$('#itemAdd').click(function(){
		//alert("aa");
		var contents = '';
		
		contents += '<tr>';
		contents +=		'<td><input type="text" name="item_name" /></td>';
		contents +=		'<td><input type="text" name="price" class="price" /></td>';
		contents +=		'<td><input type="text" name="qty" class="qty" /></td>';
		contents +=		'<td><input type="text" name="sumPrice" class="sumPrice" /></td>';
		contents +=		'<td><input type="button" name="delRow" class="delRow" value=" X " /></td>';
		contents += '</tr>';

		$('#addOption').append(contents); // 추가기능

		$('.delRow').click(function(){ // 삭제기능
			$(this).parent().parent().remove();	
			//alert("aaa");
		});

		$('.price, .qty, .sumPrice').keyup(function(){			
			$(this).val( $(this).val().replace(/[^0-9]/gi,"") ); //숫자만 입력가능
		});

		$('.price').keyup(function(){
			var num = $(".price").index(this);
			$('.sumPrice').eq(num).val($('.price').eq(num).val() * $('.qty').eq(num).val());
		});

		$('.qty').keyup(function(){
			var num = $(".qty").index(this);
			$('.sumPrice').eq(num).val($('.price').eq(num).val() * $('.qty').eq(num).val());

		});

		$('.sumPrice').keyup(function(){
			var num = $(".sumPrice").index(this);
			$('.sumPrice').eq(num).val($('.price').eq(num).val() * $('.qty').eq(num).val());
		});


		
	});

</script>



	
	
				<table style="undefined;table-layout: fixed; width: 293px"  id="dynamicTable">
		<colgroup>
				<col style="width: 160px">
				<col style="width: 120px">
				<col style="width: 120px">
				<col style="width: 100px">
				<col style="width: 95px">
			</colgroup>
			<thead>
  			<tr>
    			<th>품명</th>
    			<th>단가</th>
    			<th>수량</th>
    			<th>총 단가 </th>
    			<th><input type="button" value="추가" id="itemAdd"/></th>

 			</tr>
 			</thead>
  				<tbody id="addOption">
  				
  				
  				</tbody>
 			
				</table>
				
				</div>
				<div>
				
						
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




	
	<script src="../common/manager/contactform/vendor/animsition/js/animsition.min.js"></script>
	<script src="../common/manager/contactform/vendor/bootstrap/js/popper.js"></script>
	<script src="../common/manager/contactform/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="../common/manager/contactform/vendor/daterangepicker/moment.min.js"></script>
	<script src="../common/manager/contactform/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="../common/manager/contactform/vendor/countdowntime/countdowntime.js"></script>
	
	<script src="../common/manager/contactform/js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->

		</div>
</main>


	
		
	</body>

</html>
