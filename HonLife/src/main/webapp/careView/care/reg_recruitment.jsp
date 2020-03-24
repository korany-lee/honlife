<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";



function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("../careView/addr/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}


function jusoCallBack(roadFullAddr){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadFullAddr.value = roadFullAddr;
	
}

</script>

<title>입사지원</title>
<head>
	<jsp:include page="../includer/careheader.jsp"/>
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


<main>



<section>
		<section class="main-section-1">

		<div class="section-content animate-in-view clearfix">

	

<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form" action="regRecruitmentAction" method="POST" name="form">
				<span class="contact100-form-title" >
			입사 지원 양식
				</span>
			<span class="label-input100" style="font-size: 20px; padding-left: 430px;" >지원 업무</span>
				<div class="wrap-input1002 input100-select bg1">			
					<div>
						<select class="js-select2" name="selctClass" style=" font-family: 'Do Hyeon', sans-serif ;  font-size:18px; text-transform: none; background: transparent;border: none;">
							<option value="cm">청소 매니저</option>
							<option value="lm">세탁 운송 매니저</option>			
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>
				
				<span class="label-input100" style="font-size: 20px;     padding-right: 400px;">이름</span>
				<div class="wrap-input100 " >
					
					<input class="input100" type="text" name="recruitName" placeholder="이름를 입력하세요">
				</div>
				
				<span class="label-input100"  style="font-size: 20px" >연락처</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100">			
					<input class="input100" type="text" id="recph"name="recruitPh" placeholder="숫자만 입력해주세요" value="">
				</div>
				<span class="label-input100" style="font-size: 20px" >주민번호</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100">			
					<input class="input100" type="text" id="jumin"name="recruitJumin" placeholder="숫자만 입력해주세요">
				</div>
				<span class="label-input100" style="font-size: 20px; ">주소</span> 
						<span class="label-input100" style="font-size: 20px; padding-left: 430px;" >성별</span>
				<div class="wrap-input1002 input100-select bg1">			
					<div>
						<select class="js-select2" name="selctClass" style=" font-family: 'Do Hyeon', sans-serif ;  font-size:18px; text-transform: none; background: transparent;border: none;">
							<option value="M">남자</option>
							<option value="F">여자</option>			
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>	
						
				<input type="button" onClick="goPopup();" value="우편번호 검색" class="contact100-form-btn" style="margin-bottom: 5px;width: 100px;height: 30px;"/>
				<div class="wrap-input100 "> 			
					<input type="text"  class="input100" style="width:500px;" id="roadFullAddr"  name="recruitAddr"  placeholder="주소를 입력해주세요"/>				
				</div>
	

			<span class="label-input100" style="font-size: 20px; " >이메일</span>
			<div class="wrap-input100 bg1 rs1-wrap-input100e">	
				 <input type="text" name="recruitEmali1" id="str_email01" placeholder="Email Id입력" style="width:150px;  text-transform: none; background: transparent;">@<input type="text" name="recruitEmail2" id="str_email02" style="width:200px;  background: transparent;border: none;" placeholder="나머지를 입력하세요" disabled value="naver.com">
				 <select class="js-select2" name="service"  id="selectEmail" style=" font-family: 'Do Hyeon', sans-serif ;   text-transform: none; background: transparent;border: none;">						
							<option value="1">직접입력</option> 
							<option value="naver.com" selected>naver.com</option> 
							<option value="nate.com">nate.com</option> 
							<option value="yahoo.co.kr">yahoo.co.kr</option> 				
							 <option value="gmail.com">gmail.com</option> 			
							</select>
						<div class="dropDownSelect2"></div>	
				</div>
		
	
				
				<span class="label-input100" style="font-size: 20px" >첨부 이력서</span>
					<div class="wrap-input100 bg1 rs1-wrap-input100f">				
					<input class="input100" type="file" name="recruitResume">
					<div>${fileError }</div>
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
				       
			<a href="../care/personality" > 인성검사</a>
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
<!-- Global site tag (gtag.js) - Google Analytics -->


	

	</section>





</section>

</main>








<jsp:include page="../includer/carefooter.jsp"/>
</body>
</html>