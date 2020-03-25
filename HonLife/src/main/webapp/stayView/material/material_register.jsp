<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html >
<title>Hon Life - 자재 등록</title>
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



<link href="../common/manager/managercss/jquery-accordion-menu.css" rel="stylesheet" type="text/css" />
<link href="../common/manager/managercss/font-awesome.css" rel="stylesheet" type="text/css" />
<script src="../common/manager/managerjs/jquery/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="../common/manager/managerjs/jquery/jquery-accordion-menu.js" type="text/javascript"></script>



</head>

<body>
	
	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form" action="materialRegisterAction" method="post" enctype="multipart/form-data" name="roomForm">
				<span class="contact100-form-title">
				자재를 등록하세요
				</span>
				
				<table border="1">
					<tr>
						<td>자재번호</td>
						<td><input type="text" id="materialNo" name="materialNo" placeholder="자재번호을 입력하세요"><div>${roomNumError }</div></td>
					</tr>
					<tr>
						<td>자재종류</td>
						<td>
							<select name="materialType">
								<option value="조립용" selected="selected">조립용</option>
								<option value="도색용">도색용</option>
								<option value="기타장비">기타장비</option>
								<option value="기타 소모용품">기타 소모용품</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td>자재 사진 등록</td>
						<td><input type="file" name="materialImage" id="materialImage" multiple="multiple"><div>${fileError }</div></td>
					</tr>
					<tr>
						<td>자재 설명</td>
						<td><textarea rows="13" cols="56" name="materialUsage" id="materialUsage"></textarea></td>
					</tr>
				</table>

				<div class="container-contact100-form-btn">
					<input class="contact100-form-btn" type="submit"  value="자재등록" style="cursor:pointer">
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
