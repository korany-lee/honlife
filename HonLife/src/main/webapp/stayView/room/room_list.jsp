<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hon Life - 객실 리스트</title>

<jsp:include page="../../common/manager/managerheader.jsp" />
<link rel="icon" type="image/png"
	href="../common/manager/contactform/images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="../common/manager/contactform/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../common/manager/contactform/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="../common/manager/contactform/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="../common/manager/contactform/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="../common/manager/contactform/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="../common/manager/contactform/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="../common/manager/contactform/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="../common/manager/contactform/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css"
	href="../common/manager/contactform/vendor/noui/nouislider.min.css">
<link rel="stylesheet" type="text/css"
	href="../common/manager/contactform/css/util.css">

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />


<link href="../common/manager/managercss/jquery-accordion-menu.css"
	rel="stylesheet" type="text/css" />
<link href="../common/manager/managercss/font-awesome.css"
	rel="stylesheet" type="text/css" />
<script src="../common/manager/managerjs/jquery/jquery-1.11.2.min.js"
	type="text/javascript"></script>
<script
	src="../common/manager/managerjs/jquery/jquery-accordion-menu.js"
	type="text/javascript"></script>
</head>

<script type="text/javascript">
	$(function() {
		$("#BigType").change(function() {
			$("#bdto").innerHTML = "";
			/* 	location.href = "selectFurniture?type="+$("#furnitureType").val(); */
			$.ajax({
				type : "POST",
				url : "selectBigType",
				data : "BigType=" + $("#BigType").val(),
				datatype : "html",
				success : function(data1) {
					$("#bdto").html(data1);
				}
			});
		});
		
		$("#SmallType").change(function() {
			$("#cdto").innerHTML = "";
			/* 	location.href = "selectFurniture?type="+$("#furnitureType").val(); */
			$.ajax({
				type : "POST",
				url : "selectSmallType",
				data : {"BigType" :  $("#BigType").val() , "SmallType" : $("#SmallType").val() } ,
				datatype : "html",
				success : function(data1) {
					$("#cdto").html(data1);
				}
			});
		});
	});
</script>
<body>
	<div class="col-left contact-info">
		<jsp:include page="../../common/manager/sidemenu.jsp" />

	</div>
	<div class="col-right">

		<div class="container-contact100">
			<div class="wrap-contact100">

				<span class="contact100-form-title"> 객실 리스트 </span>
				<div class="selector">
					<select id="BigType">

						<option value="view">뷰별</option>
						<option value="floor">층별</option>
						<option value="size">면적별</option>
					</select> * 검색 유형을 선택하세요 <br /> <br />
					<div id="bdto">
						<select id="SmallType">
							<option value="리버">리버뷰</option>
							<option value="마운틴">마운틴뷰</option>
							<option value="시티">시티뷰</option>
						</select>

					</div>
						<br><br>
						<div id="cdto">
						
						
						</div>

				</div>
			</div>
		</div>





		<script
			src="../common/manager/contactform/vendor/animsition/js/animsition.min.js"></script>
		<script
			src="../common/manager/contactform/vendor/bootstrap/js/popper.js"></script>
		<script
			src="../common/manager/contactform/vendor/bootstrap/js/bootstrap.min.js"></script>

		<script
			src="../common/manager/contactform/vendor/daterangepicker/moment.min.js"></script>
		<script
			src="../common/manager/contactform/vendor/daterangepicker/daterangepicker.js"></script>
		<script
			src="../common/manager/contactform/vendor/countdowntime/countdowntime.js"></script>

		<script src="../common/manager/contactform/js/main.js"></script>

		<!-- Global site tag (gtag.js) - Google Analytics -->

	</div>

</body>
</html>