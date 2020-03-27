<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html >
<title>Hon Life - 가구 등록</title>
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

<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    
<link rel="stylesheet"
   href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />


<link href="../common/manager/managercss/jquery-accordion-menu.css" rel="stylesheet" type="text/css" />
<link href="../common/manager/managercss/font-awesome.css" rel="stylesheet" type="text/css" />
<script src="../common/manager/managerjs/jquery/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="../common/manager/managerjs/jquery/jquery-accordion-menu.js" type="text/javascript"></script>



</head>

<body>



	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form" action="../funiture/furnitureRegisterAction" method="post" enctype="multipart/form-data" name="furnitureForm">
				<span class="contact100-form-title">
				가구를 등록하세요
				</span>
				
				<table border="1">
					<tr>
						<td>가구번호</td>
						<td><input type="text" id="furnitureNo" name="furnitureNo" placeholder="가구번호를 입력하세요"><div>${roomNumError }</div></td>
					</tr>
					<tr>
						<td>가구종류</td>
						<td>
							<select name="furnitureType">
							
								<option value="거실용품" selected="selected">거실용</option>
								<option value="주방용품">주방용</option>
								<option value="침실용품">침실용</option>
								<option value="기타">기타</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>1일 대여비</td>
						<td><input type="text" id="rentalFee" name="rentalFee" placeholder="금액을 입력하세요">원<div>${rentalfeeError }</div></td>
					</tr>
					<tr>
						<td>색상</td>
						<td>
							<select name="funitureColor">
								<option value="화이트" selected="selected">화이트</option>
								<option value="블랙">블랙</option>
								<option value="브라운">브라운</option>
								<option value="기타">기타</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>가구이름</td>
						<td><input type="text" id="furnitureName" name="furnitureName" placeholder="가구명칭을 입력하세요"><div>${rentalfeeError }</div></td>
					</tr>
					<tr>
						<td>구입년월</td>
						<td>  <input type="date" name="buyDate" id="buyDate" >  </td>
						
    				
    				</tr>
					<tr>
						<td>예비용</td>
						<td>
							<select name="furnitureExtra">
								<option value="일반" selected="selected">일반</option>
								<option value="예비">예비</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>가구 사진 등록<br>(사진은 최소 6장 입력하셔야 합니다)</td>
						<td><input type="file" name="furnitureImage" id="furnitureImage" multiple="multiple"><div>${fileError }</div></td>
					</tr>
					<tr>
						<td>가구 설명</td>
						<td><textarea rows="13" cols="56" name="furnitureContent" id="furnitureContent"></textarea></td>
					</tr>
				</table>

				<div class="container-contact100-form-btn">
					<input class="contact100-form-btn" type="submit"  value="가구 등록" style="cursor:pointer">
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
