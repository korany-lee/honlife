<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html >
<title>Hon Life - 객실 등록</title>
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
		<div class="col-left contact-info">
			<jsp:include page="../../../common/manager/sidemenu.jsp" />
		
		</div>
		<div class="col-right">

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form" action="roomRegisterAction" method="post" enctype="multipart/form-data" name="roomForm">
				<span class="contact100-form-title">
				객실을 등록하세요
				</span>
				
				<table border="1">
					<tr>
						<td>호실</td>
						<td><input type="text" id="roomNo" name="roomNo" placeholder="호실을 입력하세요">호<div>${roomNumError }</div></td>
					</tr>
					<tr>
						<td>평수</td>
						<td>
							<select name="roomSize">
								<option value="8" selected="selected">8평</option>
								<option value="10">10평</option>
								<option value="13">13평</option>
								<option value="16">16평</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>1일 숙박비</td>
						<td><input type="text" id="rentalFee" name="rentalFee" placeholder="금액을 입력하세요">원<div>${rentalfeeError }</div></td>
						<td>*관리비는 숙박비의 10%입니다</td>
					</tr>
					<tr>
						<td>뷰</td>
						<td>
							<select name="roomView">
								<option value="시티" selected="selected">시티뷰</option>
								<option value="마운틴">마운틴뷰</option>
								<option value="리버">리버뷰</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>내선번호</td>
						<td><input type="text" id="callNum" name="callNum" placeholder="내선번호를 입력하세요"><div>${rentalfeeError }</div></td>
					</tr>
					<tr>
						<td>예비용</td>
						<td>
							<select name="roomExtra">
								<option value="일반" selected="selected">일반</option>
								<option value="예비">예비</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>방 사진 등록<br>(사진은 최소 6장 입력하셔야 합니다)</td>
						<td><input type="file" name="roomImage" id="roomImage" multiple="multiple"><div>${fileError }</div></td>
					</tr>
					<tr>
						<td>방 설명</td>
						<td><textarea rows="13" cols="56" name="roomContent" id="goodsContent"></textarea></td>
					</tr>
				</table>

				<div class="container-contact100-form-btn">
					<input class="contact100-form-btn" type="submit"  value="객실등록" style="cursor:pointer">
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



	
		
	</body>

</html>
