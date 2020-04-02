<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>



<head>

<link rel="shortcut icon" type="image/x-icon"
	href="./main/images/WEB.png" />
<link href="./common/css/main.css" rel="stylesheet" type="text/css">
<link href="./common/css/common.css" rel="stylesheet" type="text/css">
<link href="./common/css/section1.css" rel="stylesheet" type="text/css">
<link href="./common/css/normalize.css" rel="stylesheet" type="text/css">
<title>HON SHOP :: 혼자서도 멋지게, 모두의 혼 샵</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(function(){
	$("#form").submit(function(){
		if($("#pw").val() != $("#pwCon").val()){
			$("#pw").val("");
			$("#pwCon").val("");
			$("#pw").focus();
			alert("비밀번호가 다릅니다.");
			return false;
		}
		if($("#idDuplication").val() =="1"){
			alert("아이디 중복확인을 하세요");
			return false;
		}
	
	
	
	});
});

function inputIdChk(){
	$("#idDuplication").val("1");
}

function chkId() {
	if($("#memId").val() =="") {
		$("memId").focus();
		alert("아이디를 입력하세요");
		return false;
	}
	$("#idDuplication").val("0");
	
	window.open('userConfirm?userId='+$("#memId").val(),'아이디 중복확인','width=300 ,height=200');
	
}

</script>
</head>





<body class="member-login"  oncontextmenu="return false" ondragstart="return false" onselectstart="return !enableSelection">

	<jsp:include page="../includer/header.jsp"></jsp:include>



<div id="wrap" class="">
	<div id="pos_scroll"></div>

	<div id="container">

		<div id="main">
			<div id="content">


<div class="section_login">
	<h3 class="tit_login">로그인</h3>
	<div class="write_form">
		<div class="write_view login_view">

				<form method="post" name="form" id="form" onsubmit="return checkReCaptcha();" action="/shop/member/login_ok.php?return_url=%2Fshop%2Fevent%2FkurlyEvent.php%3Fhtmid%3Devent%2Fjoin%2Fjoin_200325">
					<input type=hidden name=returnUrl value="">
					<input type=hidden name=return_url value="/shop/event/kurlyEvent.php?htmid=event/join/join_200325">
					<input type=hidden name=close value="">
	
					<input type="text" name="m_id" size="20" tabindex="1" value="" placeholder="아이디를 입력해주세요">
					<input type="password" name="password" size="20" tabindex="2" placeholder="비밀번호를 입력해주세요">
	
					<div class="checkbox_save">
						<label class="label_checkbox checked">
							<input type="checkbox" id="chk_security" name="chk_security" value="y" checked="checked" onChange="if( this.checked){$(this).parent().addClass('checked')}else{$(this).parent().removeClass('checked')} "> 
							보안접속
						</label>
						<!--
						<label><input type="checkbox" name="save_id" value="y" checked="checked" onclick="chk_save_id(this.checked);"> 아이디 저장</label>
						<div class="auto_security">
							<label><input type="checkbox" name="save_login_status" value="y"> 자동 로그인</label>
							<label><input type="checkbox" id="chk_security" name="chk_security" value="y"> 보안접속</label>
						</div>
						-->
						<div class="login_search">
							<a href="/shop/member/find_id.php" class="link">아이디 찾기</a>
							<span class="bar"></span>
							<a href="/shop/member/find_pwd.php" class="link">비밀번호 찾기</a>
						</div>
					</div>
					
	
					<button type="submit" class="btn_type1"><span class="txt_type">로그인</span></button>
				</form>
	
				<a href="shopJoin" class="btn_type2 btn_member"><span class="txt_type">회원가입</span></a>
	

		</div>
	</div>
</div>
		

			
	</div><!-- #main -->
</div><!-- #wrap -->

	<jsp:include page="../includer/footer.jsp"></jsp:include>


</body>
</html>