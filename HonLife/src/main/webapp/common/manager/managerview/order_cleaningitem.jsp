<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html >
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";



function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("../common/manager/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}


function jusoCallBack(roadFullAddr){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadFullAddr.value = roadFullAddr;
	
}

</script>

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
				<input type="button" onClick="goPopup();" value="우편번호 검색" class="contact100-form-btn" style="margin-bottom: 5px;width: 100px;height: 30px;"/>
				<div class="wrap-input100 "> 			
					<input type="text"  class="input100" style="width:500px;" id="roadFullAddr"  name="roadFullAddr"  placeholder="주소를 입력해주셈"/>				
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
	
	<!-- <table class="order-list">
    <thead>
        <tr><td>Product</td><td>Price</td><td>Qty</td><td>Total</td></tr>
    </thead>
    
    <tbody>
        <tr>
            <td><input type="text" name="product" /></td>
            <td>$<input type="text" name="price" /></td>
            <td><input type="text" name="qty" /></td>
            <td>$<input type="text" name="linetotal" readonly="readonly" /></td>
            <td><a class="deleteRow"> x </a></td>
        </tr>
    </tbody>
    
    <tfoot>
        <tr>
            <td colspan="5" style="text-align: center;">
                <input type="button" id="addrow" value="Add Product" />
            </td>
        </tr>
        
        <tr>
            <td colspan="5">
                Grand Total: $<span id="grandtotal"></span>
            </td>
        </tr>
    </tfoot>
</table> -->
	

	



	
	
	<table style="undefined;table-layout: fixed; width: 293px; " class="order"  >
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
  			
  
  			 <tfoot>
        <tr>
        
      
            <td colspan="5" style=" font-family: 'Do Hyeon', sans-serif ; padding-left: 380px;" >
                Grand Total: <span id="all" style=" font-family: 'Do Hyeon', sans-serif ; font-size:18px;"></span>
            </td>
        </tr>

    </tfoot>
				</table>
			
				
				 
				 
				</div>
				<div>
				
						
		</div>
					
<script type="text/javascript">

 $(document).ready(function () {
    var counter = 1;
    
    $("#itemAdd").on("click", function () {
        counter++;
        
        var newRow = $("<tr>");
        var cols = "";

        
        
        cols +='<td><div class="wrap-input1001 bg1 rs1-wrap-input10011"><input class="input1001n" type="text" name="item_name' +counter+' "  placeholder="품명"/></div></td>';					     
        cols +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001p" type="text" name="item_price' +counter+' "  placeholder="단가"/></div></td>';				
        cols +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001q" type="text" name="item_qty' +counter+' "   placeholder="수량"/></div></td>';			
        cols +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001s" type="text" name="item_sum' +counter+' "  placeholder="총액"/></div></td>';			
        cols += '<td><input type="button" name="delRow" class="contact100-form-btn2" value="물품 삭제"  style="cursor:pointer"/></td>';
        
        
        newRow.append(cols);
        
        $("table.order").append(newRow);
        
        
    	$('.input1001p, .input1001q, .input1001s').keyup(function(){			
    		$(this).val( $(this).val().replace(/[^0-9]/gi,"") ); //숫자만 입력가능
    	});
    });
    
    

    $("table.order").on("change", 'input[name^="item_name"], input[name^="item_qty"]', function (event) {
    
        calculateRow($(this).closest("tr"));
        calculateGrandTotal();
    });
    
    $("table.order").on("click", "input.contact100-form-btn2", function (event) {
        $(this).closest("tr").remove();
        
        calculateGrandTotal();
    });
});
    
function calculateRow(row) {
    var price = +row.find('input[name^="item_price"]').val();
    
    var qty = +row.find('input[name^="item_qty"]').val();
    row.find('input[name^="item_sum"]').val((price * qty));
}
    
function calculateGrandTotal() {
    var grandTotal = 0;
    $("table.order").find('input[name^="item_sum"]').each(function () {
        grandTotal += +$(this).val();
    });
    $("#all").text(grandTotal);
}

 






 	/* 	var counter = "1";
	$('#itemAdd').click(function(){
		counter++
		var contents = '';
	
		
		contents += '<tr>';		
		contents +='<td><div class="wrap-input1001 bg1 rs1-wrap-input10011"><input class="input1001n" type="text" name="item_name' +counter+' "  placeholder="품명"/></div></td>';					     
		contents +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001p" type="text" name="item_price' +counter+' "  placeholder="단가"/></div></td>';				
		contents +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001q" type="text" name="item_qty' +counter+' "   placeholder="수량"/></div></td>';			
		contents +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001s" type="text" name="item_sum' +counter+' "  placeholder="총액"/></div></td>';			
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
	 */



</script>

			
				
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
