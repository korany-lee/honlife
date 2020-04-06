<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html >
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>


<head>


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

<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean" rel="stylesheet">
<link href="../common/manager/managercss/jquery-accordion-menu.css" rel="stylesheet" type="text/css" />
<link href="../common/manager/managercss/font-awesome.css" rel="stylesheet" type="text/css" />



</head>

<body>



	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form" action="orderAct" method="post" name="form">
			<input type="hidden" id="cleanorderNo"  name="cleanorderNo" value="${orderNo }"/>
				<span class="contact100-form-title">
				발주 내용을 입력하세요!
				</span>
				<span class="label-input100" style="font-size: 20px">발주사원번호</span>
				<div class="wrap-input100 " >
					
					<input class="input100" type="text" name="employeeNo" placeholder="발주하는 사원의 번호을 입력해주세요">
				</div>
				<span class="label-input100" style="font-size: 20px">발주처</span>
				<div class="wrap-input100 " >
					
					<input class="input100" type="text" name="cleanorderCompanyName" placeholder="발주처를 입력하세요">
				</div>
				<div>
				<span class="label-input100" style="font-size: 20px">주소</span>
				</div>
				
				<div class="container-contact100-form-btn" style="width: 16%;margin-left: 300px;">
				<input class="contact100-form-btn" type="button" onclick="execDaumPostcode()" value="우편번호 찾기" class="contact100-form-btn" style="margin-bottom: 5px;width: 100px;height: 30px;"> <br>
				</div>
				<div class="wrap-input100 bg1 rs1-wrap-input100">	
				<input class="input100" type="text" id="postcode" name="cleanorderPostcode" placeholder="우편번호">
				</div>
				<div class="wrap-input100 bg1 rs1-wrap-input100" >	
				<input class="input100" type="text" id="address" name="cleanorderAddress"  placeholder="선택주소">
				</div>
				<span id="guide" style="color:#999;display:none"></span>
				<div class="wrap-input100 bg1 rs1-wrap-input100" > 	
				<input class="input100" type="text" id="detailAddress" name="cleanorderAddrdetail" placeholder="상세주소">
				</div>
				<div class="wrap-input100 bg1 rs1-wrap-input100">	
				<input class="input100" type="text" id="extraAddress" placeholder="참고항목">
				</div>
			
			<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	
	document.getElementById('orederDate').value= 
			new Date().toISOString().substring(0,10);
	document.getElementById('receiveDate').value= 
		new Date().toISOString().substring(0,10);

	
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
</script>
			
			
			<!-- 	<input type="button" onClick="goPopup();" value="우편번호 검색" class="contact100-form-btn" style="margin-bottom: 5px;width: 100px;height: 30px;"/>
				<div class="wrap-input100 "> 			
					<input type="text"  class="input100" style="width:500px;" id="roadFullAddr"  name="roadFullAddr"  placeholder="주소를 입력해주셈"/>		
				</div> -->
				
			
				<div>
				<span class="label-input100" style="font-size: 20px" >연락처</span>
				</div>
				<div class="wrap-input100 bg1 rs1-wrap-input1006">			
					<input class="input100" type="text" name="cleanorderCompanyPh" placeholder="연락처를 입력하세요">
				</div>
				
				
				<span class="label-input100" style="font-size: 20px" >FAX</span>
					<div class="wrap-input100 bg1 rs1-wrap-input1006">				
					<input class="input100" type="text" name="cleanorderCompanyFax" placeholder="팩스번호를 입력하세요">
				</div>
				
				<span class="label-input100" style="font-size: 20px" >발주일자</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100D">			
					<input class="input100" type="date" name="cleanorderDate" id="orederDate" placeholder="발주일을 입력하세요">
				</div>
				
				
				<span class="label-input100" style="font-size: 20px" >납기일자</span>
					<div class="wrap-input100 bg1 rs1-wrap-input100D">				
					<input class="input100" type="date" name="cleanorderReceiveDate" id="receiveDate" placeholder="납기일을 입력하세요">
				</div>
	<div>	
	




	
	
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
    			<th style="text-align: center;">	
    			<input type="button" value="물품 추가" id="itemAdd" class="contact100-form-btn1" style="cursor:pointer" /></th>
 			</tr>
 			
 			</thead>
  			
  
  			 <tfoot>
        <tr>
        
      
            <td colspan="5" style=" font-family: 'Do Hyeon', sans-serif ; padding-left: 380px;" >
               발주 총 금액: <input type="number"  name="allsum" id="allsum"  readonly="readonly"/>
            </td>
        </tr>

    </tfoot>
				</table>
			 
				</div>
				<div>
				
						
		</div>
					
<script type="text/javascript">

 $(document).ready(function () {
    var counter = -1;
    
    $("#itemAdd").on("click", function () {
        counter++;
        
        var newRow = $("<tr>");
        var cols = "";

        
        
        cols +='<td><div class="wrap-input1001 bg1 rs1-wrap-input10011"><input class="input1001n" type="text"id="cleanitemName" name="cleanitemName['+counter+']"  placeholder="품명"/></div></td>';					     
        cols +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001p" type="text" id="cleanitemPrice" name="cleanitemPrice['+counter+']"  placeholder="단가"/></div></td>';				
        cols +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001q" type="text" id="cleanitemQty" name="cleanitemQty['+counter+']"   placeholder="수량"/></div></td>';			
        cols +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001s" type="text" id="cleanitemSum" name="cleanitemSumprice['+counter+']"  placeholder="총액"/></div></td>';			
        cols += '<td><input type="button" name="delRow" class="contact100-form-btn2" value="물품 삭제"  style="cursor:pointer"/></td>';
    
        newRow.append(cols);
        
        $("table.order").append(newRow);
        
        
    	$('.input1001p, .input1001q, .input1001s').keyup(function(){			
    		$(this).val( $(this).val().replace(/[^0-9]/gi,"") ); //숫자만 입력가능
    	});
    });
    
    

    $("table.order").on("change", 'input[id^="cleanitemName"], input[id^="cleanitemQty"]', function (event) {
    
        calculateRow($(this).closest("tr"));
        calculateGrandTotal();
    });
    
    $("table.order").on("click", "input.contact100-form-btn2", function (event) {
        $(this).closest("tr").remove();
        
        calculateGrandTotal();
    });
});
    
function calculateRow(row) {
    var price = +row.find('input[id^="cleanitemPrice"]').val();
    
    var qty = +row.find('input[id^="cleanitemQty"]').val();
    row.find('input[id^="cleanitemSum"]').val((price * qty));
}
    
function calculateGrandTotal() {
    var grandTotal = 0;
    $("table.order").find('input[id^="cleanitemSum"]').each(function () {
        grandTotal += +$(this).val();
    });
    $("#allsum").val(grandTotal);
}

</script>
		
				<span class="label-input100" style="font-size: 20px; " >배송방법</span>
					
					<div>
						<select class="js-select2" name="moveHow"   style=" font-family: 'Do Hyeon', sans-serif ;  font-size:18px; text-transform: none; background: transparent;border: none;">
							<option value="youngdal">용달</option>
							<option value="quick">퀵서비스</option>
							<option value="damas">다마스 퀵</option>
						</select>
					</div>
		
							
				<span class="label-input100" style="font-size: 20px" >운임 지불방법</span>									
					<div>
						<select class="js-select2" name="movePay"   style=" font-family: 'Do Hyeon', sans-serif ; font-size:18px; text-transform: none; background: transparent;border: none;">
							<option value="sun">선불</option>
							<option value="chak">착불</option>
						</select>
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

	



	
		
	</body>

</html>
