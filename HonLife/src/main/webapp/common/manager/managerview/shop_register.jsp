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
<main>



		<div class="col-left contact-info">

			<jsp:include page="../../../common/manager/sidemenu.jsp" />
		
			
		</div>

		<div class="col-right">


	



	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form" action="shopRegister" method="post" enctype="multipart/form-data" name="form">
				<span class="contact100-form-title">
				SSG 입고내역
				</span>
				<span class="label-input100" style="font-size: 20px">상품명</span>
				<div class="wrap-input100" >					
					<input class="input100" type="text" name="productName" placeholder="상품명을 입력하세요">
				</div>
				
				<span class="label-input100" style="font-size: 20px; " >카테고리</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100m">	
					<select class="js-select2" name="productType"   style=" font-family: 'Do Hyeon', sans-serif ;  font-size:18px; text-transform: none; background: transparent;border: none;">
						<option value="">전체</option>
					</select>
				</div>
				
				<span class="label-input100" style="font-size: 20px; " >상품분류</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100m">	
					<select class="js-select2" name="productDetailtype"   style=" font-family: 'Do Hyeon', sans-serif ;  font-size:18px; text-transform: none; background: transparent;border: none;">
						<option value="">전체</option>
					</select>
				</div>
				<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
				<script type="text/javascript">
				$(document).ready(function() {
					var mainCategoryArray = new Array();
				    var mainCategoryObject = new Object();
				    
				    //카테고리
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "1";
				    mainCategoryObject.main_category_name = "과자/빵";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "2";
				    mainCategoryObject.main_category_name = "건강식품";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "3";
				    mainCategoryObject.main_category_name = "생수/음료";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "4";
				    mainCategoryObject.main_category_name = "유제품";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "5";
				    mainCategoryObject.main_category_name = "라면/통조림";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "6";
				    mainCategoryObject.main_category_name = "반찬/조미료";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "7";
				    mainCategoryObject.main_category_name = "과일/채소";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "8";
				    mainCategoryObject.main_category_name = "쌀/정육/수산";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "9";
				    mainCategoryObject.main_category_name = "화장지/세제";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "10";
				    mainCategoryObject.main_category_name = "뷰티";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "11";
				    mainCategoryObject.main_category_name = "주방";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "12";
				    mainCategoryObject.main_category_name = "문구/사무";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "13";
				    mainCategoryObject.main_category_name = "반려동물";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "14";
				    mainCategoryObject.main_category_name = "자동차용품";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    mainCategoryObject = new Object();
				    mainCategoryObject.main_category_id = "15";
				    mainCategoryObject.main_category_name = "대용량";
				    mainCategoryArray.push(mainCategoryObject);
				    
				    //하위카테고리
				    var subCategoryArray = new Array();
				    var subCategoryObject = new Object();
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "1";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "과자"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "1";
				    subCategoryObject.sub_category_id = "2"
				    subCategoryObject.sub_category_name = "빵"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "2";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "건강식품"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "3";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "생수"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "3";
				    subCategoryObject.sub_category_id = "2"
				    subCategoryObject.sub_category_name = "음료"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "4";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "유제품"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "5";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "라면"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "5";
				    subCategoryObject.sub_category_id = "2"
				    subCategoryObject.sub_category_name = "통조림"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "6";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "반찬"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "6";
				    subCategoryObject.sub_category_id = "2"
				    subCategoryObject.sub_category_name = "조미료"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "7";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "과일"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "7";
				    subCategoryObject.sub_category_id = "2"
				    subCategoryObject.sub_category_name = "채소"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "8";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "쌀"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "8";
				    subCategoryObject.sub_category_id = "2"
				    subCategoryObject.sub_category_name = "정육"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "8";
				    subCategoryObject.sub_category_id = "3"
				    subCategoryObject.sub_category_name = "수산"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "9";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "화장지"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "9";
				    subCategoryObject.sub_category_id = "2"
				    subCategoryObject.sub_category_name = "세제"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "10";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "뷰티"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "11";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "주방"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "12";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "문구"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "12";
				    subCategoryObject.sub_category_id = "2"
				    subCategoryObject.sub_category_name = "사무"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "13";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "반려동물"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "14";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "자동차용품"    
				    subCategoryArray.push(subCategoryObject);
				    
				    subCategoryObject = new Object();
				    subCategoryObject.main_category_id = "15";
				    subCategoryObject.sub_category_id = "1"
				    subCategoryObject.sub_category_name = "대용량"    
				    subCategoryArray.push(subCategoryObject);
				    
				    var mainCategorySelectBox = $("select[name='productType']");
				    
				    for(var i=0;i<mainCategoryArray.length;i++){
				        mainCategorySelectBox.append("<option value='"+mainCategoryArray[i].main_category_id+"'>"+mainCategoryArray[i].main_category_name+"</option>");
				    }
				    
				    //*********** 1depth카테고리 선택 후 2depth 생성 START ***********
				    $(document).on("change","select[name='productType']",function(){
				        
				        //두번째 셀렉트 박스를 삭제 시킨다.
				        var subCategorySelectBox = $("select[name='productDetailtype']");
				        subCategorySelectBox.children().remove(); //기존 리스트 삭제
				        
				        //선택한 첫번째 박스의 값을 가져와 일치하는 값을 두번째 셀렉트 박스에 넣는다.
				        $("option:selected", this).each(function(){
				            var selectValue = $(this).val(); //main category 에서 선택한 값
				            subCategorySelectBox.append("<option value=''>전체</option>");
				            for(var i=0;i<subCategoryArray.length;i++){
				                if(selectValue == subCategoryArray[i].main_category_id){
				                    
				                    subCategorySelectBox.append("<option value='"+subCategoryArray[i].sub_category_id+"'>"+subCategoryArray[i].sub_category_name+"</option>");
				                    
				                }
				            }
				        });
				        
				    });
				});
				
				</script>
				<div class="wrap-input1"></div>
				<span class="label-input100" style="font-size: 20px" >제품이미지</span>
				<p class="sub">*4개이상 업로드</p>
				<div class="wrap-input100">			
					<input type="file" name="productPhoto" id="productPhoto" multiple="multiple">
				</div>
				
				<span class="label-input100" style="font-size: 20px" >상품 가격</span>
					<div class="wrap-input100">				
					<input class="input100" type="text" name="productPrice" placeholder="상품가격을 입력하세요">
				</div>
				
				<span class="label-input100" style="font-size: 20px" >상품 수량</span>
					<div class="wrap-input100">				
					<input class="input100" type="text" name="productCount" placeholder="상품수량을 입력하세요">
				</div>
				
				<span class="label-input100" style="font-size: 20px" >사용가능일자/유통기한</span>
				<p calss="sub">*유통기한이 없는 제품일시 선택하지 말아주세요.</p>
				<div class="wrap-input100 bg1 rs1-wrap-input100D">	
					<input class="input100" type="date" name="productUsedate" placeholder="사용기한을 선택하세요">
				</div>
	<div>	
	
	
	<table style="undefined;table-layout: fixed; width: 293px; margin-top: 20px;" class="order"  >
		<colgroup>
				<col style="width: 160px">
				<col style="width: 140px">
				<col style="width: 140px">
				<col style="width: 140px">
				<col style="width: 140px">
			</colgroup>
			<thead>
  			<tr>
    			<th style="text-align: center;">품명</th>
    			<th style="text-align: center;">단가</th>
    			<th style="text-align: center;">수량</th>
    			<th style="text-align: center;">총 단가 </th>
    			<th style="text-align: center;">	
    			<input type="button" value="입고" id="itemAdd" class="contact100-form-btn1" style="cursor:pointer" /></th>
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
        
 		var productName = $("input[name='productName']");
 		var productPrice = $("input[name='productPrice']");
 		var originalPrice = productPrice.val()*0.6;
 		var productCount = $("input[name='productCount']");
 		var totalPrice = originalPrice*productCount.val();
        var newRow = $("<tr>");
        var cols = "";

        if(productName != null) {
        cols +='<td><div class="wrap-input1001 bg1 rs1-wrap-input10011"><input class="input1001n" type="text" name="item_name' +counter+' "value='+ productName.val() +'></div></td>';					     
        cols +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001p" type="text" name="item_price' +counter+' "value='+originalPrice+'></div></td>';				
        cols +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001q" type="text" name="item_qty' +counter+' "value='+ productCount.val() +'></td>';			
        cols +=	'<td><div class="wrap-input1001 bg1 rs1-wrap-input1001"><input class="input1001s" type="text" name="item_sum' +counter+' "value='+ totalPrice +'></div></td>';
        cols += '<input type="hidden" name="item_sum" value="'+ totalPrice +'">';
        }
        
        cols += '<td><input type="button" name="delRow" class="contact100-form-btn2" value="물품 삭제"  style="cursor:pointer"/></td>';
        
        
        newRow.append(cols);
        //console.log(totalPrice);
        
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


</script>

		<div class="container-contact100-form-btn">
					<input class="contact100-form-btn" type="submit" value="완료" style="cursor:pointer">			
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
