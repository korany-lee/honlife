<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html >
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

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




</head>

<body>
<main  >



		<div class="col-left contact-info">

			<jsp:include page="../../../common/manager/sidemenu.jsp" />
		
			
		</div>

		<div class="col-right">


	



	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form" action="" method="post" name="form">
				<span class="contact100-form-title">
				발주 내용을 입력하세요!
				</span>
				<span class="label-input100" style="font-size: 20px">발주처</span>
				<div class="wrap-input100 " >
					
					<input class="input100" type="text" name="name" placeholder="발주처를 입력하세요">
				</div>
				
				<span class="label-input100" style="font-size: 20px">주소</span>
				<div class="wrap-input100 ">
					<input class="input100" type="text" name="name" placeholder="발주처의 주소를 입력하세요.">
				</div>
			
				
				<span class="label-input100" style="font-size: 20px" >연락처</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100">			
					<input class="input100" type="text" name="phone" placeholder="연락처를 입력하세요">
				</div>
				
				
				<span class="label-input100" style="font-size: 20px" >FAX</span>
					<div class="wrap-input100 bg1 rs1-wrap-input100">				
					<input class="input100" type="text" name="phone" placeholder="팩스번호를 입력하세요">
				</div>
				
				<span class="label-input100" style="font-size: 20px" >발주일자</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100D">			
					<input class="input100" type="date" name="phone" placeholder="발주일을 입력하세요">
				</div>
				
				
				<span class="label-input100" style="font-size: 20px" >납기일자</span>
					<div class="wrap-input100 bg1 rs1-wrap-input100D">				
					<input class="input100" type="date" name="phone" placeholder="납기일을 입력하세요">
				</div>
				
				
				
				
				
	
	<div>	
	
	

	



	
	
				<table style="undefined;table-layout: fixed; width: 293px;   "  >
		<colgroup>
				<col style="width: 160px">
				<col style="width: 140px">
				<col style="width: 140px">
				<col style="width: 140px">
				<col style="width: 140px">
			</colgroup>
			<thead>
  			<tr >
    			<th style="text-align: center;">품명</th>
    			<th style="text-align: center;">단가</th>
    			<th style="text-align: center;">수량</th>
    			<th style="text-align: center;">총 단가 </th>
    			<th style="text-align: center;">	<input type="button" value="물품 추가" id="itemAdd" class="contact100-form-btn1" style="cursor:pointer" /></th>
 			</tr>
 			
 			</thead>
  				<tbody id="addOption">
  				
  				
  				</tbody>
 			
				</table>
				
				</div>
				<div>
				
						
		</div>
					
<script type="text/javascript">


	$('#itemAdd').click(function(){
		//alert("aa");
		var contents = '';
		
		contents += '<tr>';		
		contents +='<td><div class="wrap-input1001 bg1 rs1-wrap-input10011"><input class="input1001n" type="text" name="item_name" placeholder="품명"/></div></td>';
						     
		contents +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001p" type="text" name="item_name" placeholder="단가"/></div></td>';	
			
			
			
		contents +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001q" type="text" name="item_name" placeholder="수량"/></div></td>';
			
			
		contents +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001s" type="text" name="item_name" placeholder="총액"/></div></td>';	

			
		contents += '<td><input type="button" name="delRow" class="contact100-form-btn2" value="물품 삭제"  style="cursor:pointer"/></td>';
		contents += '</tr>';

		$('#addOption').append(contents); // 추가기능

		$('.contact100-form-btn2').click(function(){ // 삭제기능
			$(this).parent().parent().remove();	
			//alert("aaa");
		});

		$('.input1001p, .input1001q, .input1001s').keyup(function(){			
			$(this).val( $(this).val().replace(/[^0-9]/gi,"") ); //숫자만 입력가능
		});

		$('.input1001p').keyup(function(){
			var num = $(".input1001p").index(this);
			$('.input1001s').eq(num).val($('.input1001p').eq(num).val() * $('.input1001q').eq(num).val());
		});

		$('.input1001q').keyup(function(){
			var num = $(".input1001q").index(this);
			$('.input1001s').eq(num).val($('.input1001p').eq(num).val() * $('.input1001q').eq(num).val());

		});

		$('.input1001s').keyup(function(){
			var num = $(".input1001s").index(this);
			$('.input1001s').eq(num).val($('.input1001p').eq(num).val() * $('.input1001q').eq(num).val());
		});


		
	});

</script>

				<span class="label-input100" style="font-size: 20px">입고처</span>
				<div class="wrap-input100 " >			
					<input class="input100" type="text" name="name" placeholder="입고처를 입력하세요">
				</div>
				
				<span class="label-input100" style="font-size: 20px">주소</span>
				<div class="wrap-input100 ">
					<input class="input100" type="text" name="name" placeholder="입고처의 주소를 입력하세요.">
				</div>
				
				
				<span class="label-input100" style="font-size: 20px" >입고처 연락처</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100i">			
					<input class="input100" type="text" name="phone" placeholder="연락처를 입력하세요">
				</div>
				
				
				<span class="label-input100" style="font-size: 20px" >입고처 FAX</span>
					<div class="wrap-input100 bg1 rs1-wrap-input100i">				
					<input class="input100" type="text" name="phone" placeholder="팩스번호를 입력하세요">
				</div>
				
				
				<span class="label-input100" style="font-size: 20px; " >배송방법</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100m">			
					<div>
						<select class="js-select2" name="move"   style=" font-family: 'Do Hyeon', sans-serif ;  font-size:18px; text-transform: none; background: transparent;border: none;">
							<option>용달</option>
							<option>퀵서비스</option>
							<option>컨테이너</option>
						</select>
					</div>
				</div>
				
				
				<span class="label-input100" style="font-size: 20px" >운임 지불방법</span>
					<div class="wrap-input100 bg1 rs1-wrap-input100m">				
					<div>
						<select class="js-select2" name="move"   style=" font-family: 'Do Hyeon', sans-serif ; font-size:18px; text-transform: none; background: transparent;border: none;">
							<option>선불</option>
							<option>착불</option>
						</select>
					</div>
				</div>
			
				
				
				
				
				
				

				<div class="container-contact100-form-btn">
					<input class="contact100-form-btn" type="submit"  value="발주 전송" style="cursor:pointer">
				
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
