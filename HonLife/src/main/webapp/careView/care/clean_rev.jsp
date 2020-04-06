<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="icon" type="image/png" href="../careView/contactform/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="../careView/contactform/vendor/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../careView/contactform/fonts/font-awesome-4.7.0/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="../careView/contactform/fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="../careView/contactform/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="../careView/contactform/vendor/css-hamburgers/hamburgers.css">
	<link rel="stylesheet" type="text/css" href="../careView/contactform/vendor/animsition/css/animsition.css">
	<link rel="stylesheet" type="text/css" href="../careView/contactform/vendor/select2/select2.css">
	<link rel="stylesheet" type="text/css" href="../careView/contactform/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="../careView/contactform/vendor/noui/nouislider.css">
	<link rel="stylesheet" type="text/css" href="../careView/contactform/css/util.css">
</head>
<body>
	<jsp:include page="../includer/careheader.jsp"/>

<main>



<section>
		<section class="main-section-1">

		<div class="section-content animate-in-view clearfix">

	

<div class="container-contact100">
		<div class="wrap-contact100">
			
				
				<span class="contact100-form-title" >
			청소예약
				</span>
	
				
				
				
				<form class="contact100-form" action="" method="POST" name="form" enctype="multipart/form-data">
			

			
		
				
		

				
				
				
				
				<span class="label-input100" style="font-size: 20px;     padding-right: 400px;">이름</span>
				<div class="wrap-input100 " >
					
					<input class="input100" type="text" name="employeeName" value="" placeholder="이름를 입력하세요">
				</div>
				
				<span class="label-input100"  style="font-size: 20px" >연락처</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100" style="width:  calc((97% - 120px) / 2);">			
					<input class="input100" type="text" value="" id="employeePh"name="employeePh" placeholder="숫자만 입력해주세요" >
				</div>
				
				<span class="label-input100"  style="font-size: 20px" >유선번호</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100" style="width:  calc((97% - 120px) / 2);">			
					<input class="input100" type="text"value="" id="employeeCallnum"name="employeeCallnum" placeholder="숫자만 입력해주세요" >
				</div>
				<span class="label-input100" style="font-size: 20px" >주민번호</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100" style="width: calc((191% - 120px) / 2);">			
					<input class="input100" type="text" value="" id="employeeJumin"name="employeeJumin" placeholder="숫자만 입력해주세요">
				</div>
				<span class="label-input100" style="font-size: 20px; ">주소</span> 
				
					
				<div class="container-contact100-form-btn" style="width: 16%;">
				<input class="contact100-form-btn" type="button" onclick="execDaumPostcode()" value="우편번호 찾기" class="contact100-form-btn" style="font-weight:20; margin-bottom: 5px;width: 100px;height: 30px;cursor:pointer"> <br>
                 </div>
				
				<div class="wrap-input100 bg1 rs1-wrap-input100">	
				<input class="input100" type="text" value="" id="postcode" name="addrPost" placeholder="우편번호">
				</div>
				<div class="wrap-input100 bg1 rs1-wrap-input100">	
				<input class="input100" type="text" id="address" value="" name="addrMain" placeholder="선택주소">
				</div>
				<span id="guide" style="color:#999;display:none"></span>
				<div class="wrap-input100 bg1 rs1-wrap-input100" style="margin-left: 115px"> 	
				<input class="input100" type="text"  id="detailAddress" value="" name="addrDetail" placeholder="상세주소">
				</div>
				<div class="wrap-input100 bg1 rs1-wrap-input100">	
				<input class="input100" type="text" id="extraAddress" placeholder="참고항목">
				</div>


<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
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
					<input type="text"  class="input100" style="width:500px;" id="roadFullAddr"  name="recruitAddr"  placeholder="주소를 입력해주세요"/>				
				</div> -->
	

			<span class="label-input100" style="font-size: 20px; margin-right: 100px; " >이메일</span>
			<div class="wrap-input100 bg1 rs1-wrap-input100e">	
				 <input type="text" name="employeeEmail" id="employeeEmail" value="" style="width:300px;  text-transform: none; background: transparent;">
				
				</div>
		
	
			<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
			 <script type="text/javascript"> 
			 //이메일 입력방식 선택
		
			 
			 
			  $(".container-contact100").on("click", function () {
			        
			    	$('#recph,#jumin').keyup(function(){			
			    		$(this).val( $(this).val().replace(/[^0-9]/gi,"") ); //숫자만 입력가능
			    	});
			    	
			    	
			    	
			   	 $('#selectEmail').change(function(){
					 $("#selectEmail option:selected").each(function () {
						 if($(this).val()== '1'){ //직접입력일 경우
							 $("#str_email02").val(''); //값 초기화 
							 $("#str_email02").attr("disabled",false); //활성화 
							 }else{ //직접입력이 아닐경우 
								 $("#str_email02").val($(this).text()); //선택값 입력 
								 $("#str_email02").attr("disabled",true); //비활성화 
				             } 
						 }); 
					 }); 
			    });
			    
			 </script>

				
				
				

				<div class="container-contact100-form-btn">
					<input class="contact100-form-btn" type="submit"  value="입사 지원" style="cursor:pointer">			
				</div>
				       
			</form>
		</div>
	</div>

</div>

	
	<script src="../careView/contactform/vendor/animsition/js/animsition.min.js"></script>
	<script src="../careView/contactform/vendor/bootstrap/js/popper.js"></script>
	<script src="../careView/contactform/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="../careView/contactform/vendor/daterangepicker/moment.min.js"></script>
	<script src="../careView/contactform/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="../careView/contactform/vendor/countdowntime/countdowntime.js"></script>
	
	<script src="../careView/contactform/js/main.js"></script>
	<script src="../careView/contactform/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});


			$(".js-select2").each(function(){
				$(this).on('select2:close', function (e){
					if($(this).val() == "Please chooses") {
						$('.js-show-service').slideUp();
					}
					else {
						$('.js-show-service').slideUp();
						$('.js-show-service').slideDown();
					}
				});
			});
		})
	</script>

	</section>

</section>

</main>


	
	
	
<jsp:include page="../includer/carefooter.jsp"/>
</body>
</html>