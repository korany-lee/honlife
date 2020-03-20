<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/main.css" rel="stylesheet" type="text/css">
<title>Hon Life - 로그인</title>
</head>
<jsp:include page="../stayView/includer/header1.jsp"></jsp:include>
<body>
<div id="content">

		    <!-- 퀵 메뉴 -->
			<div id="qnb" class="quick-navigation">

			</div>

<div class="section_login">
	<h3 class="tit_login">로그인</h3>
	<div class="write_form">
		<div class="write_view login_view">

				<form method="post" name="form" id="form" onsubmit="return checkReCaptcha();" action="/shop/member/login_ok.php">
					<input type="hidden" name="returnUrl" value="https://www.kurly.com/shop/main/index.php">
					<input type="hidden" name="return_url" value="">
					<input type="hidden" name="close" value="">
	
					<input type="text" name="m_id" size="20" tabindex="1" value="" placeholder="아이디를 입력해주세요">
					<input type="password" name="password" size="20" tabindex="2" placeholder="비밀번호를 입력해주세요">
	
					<div class="checkbox_save">
						
						<div class="login_search">
							<a href="/shop/member/find_id.php" class="link">아이디 찾기</a>
							<span class="bar"></span>
							<a href="/shop/member/find_pwd.php" class="link">비밀번호 찾기</a>
						</div>
					</div>
					
	
					<a href="#" class="btn_type2-1 btn_member"><span class="txt_type">로그인</span></a>
				</form>
	
				<a href="../common/memberJoin" class="btn_type2 btn_member"><span class="txt_type">회원가입</span></a>
	

		</div>
	</div>
</div>
		
<script>
window.onload = function(){ document.form.m_id.focus(); }

function checkReCaptcha() {
	var $captcha = $("input[name=captcha]");
	if($captcha.length > 0)
	{
		if(! $captcha.val()) {
			alert("인증번호를 입력해 주세요");
			$captcha.focus();
			return false;
		}
	}else{
		return true;
	}
}

// KM-1483 Amplitude
KurlyTracker.setScreenName('login').setTabName('my_kurly');
</script>
</div>
</body>
</html>