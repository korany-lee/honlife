<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>HON STAY</title>
<!-- <meta name="description" content="신라스테이 허브" />
<meta name="keywords" content="신라스테이 허브" />-->
<meta name="og:title" content="신라스테이 허브" />

<!-- 검색엔진용 추가 180518 -->
<meta name="keywords" content="신라스테이,신라호텔,서울신라호텔,제주신라호텔,호텔신라,럭셔리호텔,신라리워즈" />
<meta name="description" content="국내 최고 럭셔리 호텔인 호텔신라는 신라호텔과 신라스테이 브랜드를 보유하고 있습니다." />
<meta name="subject" content="신라스테이 소개,신라 리워즈 안내,브랜드 및 호텔 소개,객실 패키지 안내,온라인 최저가 예약," />
<meta property="og:image" content="http://www.shillastay.com/images/common/facebook_shillastay.jpg" />
<link href="./css/dongtan/common.css" rel="stylesheet" type="text/css">
<link href="./css/common/print.css" rel="stylesheet" type="text/css"  media="print">
<link href="./css/common/reserve_new.css" rel="stylesheet" type="text/css">
<link href="./css/common/lang-ko_N.css" rel="stylesheet" type="text/css">
<script src="./js/jquery-1.8.3.js" charset="UTF-8"></script>
<script src="./js/jquery/jquery-ui-1.10.3.min.js" charset="UTF-8"></script>
<script src="./js/json2.js" charset="UTF-8"></script>
<script src="./js/uniform.js" charset="UTF-8"></script>
<script src="./js/browser.js" charset="UTF-8"></script>
<script src="./js/style.dongtan.js" charset="UTF-8"></script>
<script src="./js/common.js" charset="UTF-8"></script>
<script src="./js/commonEx.js" charset="UTF-8"></script>
<script src="./js/jquery.slides.js" charset="UTF-8"></script>
<script src="./js/popLogin.js" charset="UTF-8"></script>
<script src="./js/forIdPwd.js" charset="UTF-8"></script>
<script src="./js/popCalendar.js" charset="UTF-8"></script>
<script src="./js/resvCalendar.js" charset="UTF-8"></script>
<script src="./js/resv.js" charset="UTF-8"></script>
<script src="./js/din.js" charset="UTF-8"></script>
<script src="./js/ask.js" charset="UTF-8"></script>
<script src="./js/zipno.js" charset="UTF-8"></script>
<script src="./js/makeAPlan.js" charset="UTF-8"></script>
<script src="./js/mbr_join.js" charset="UTF-8"></script>
<script src="./js/makePCookie.js" charset="UTF-8"></script>
<script src="./js/jquery.cookie.js" charset="UTF-8"></script>
<script src="./js/placeholders.js" charset="UTF-8"></script><!-- 20180209 메인 예약바 추가 -->

<script src="./js/advResvCalendar.js" charset="UTF-8"></script> <!-- [2019_모션추가] 달력 고도화 -->
<script src="./js/style.advance.js" charset="UTF-8"></script><!-- 개선 : js 추가 -->

<!--[if IE 6]>
<script src="./js/png24.js"></script><![endif]-->
<script src="./stayhub/secu/messageJs.do" charset="UTF-8"></script>
	<!--[if IE 6]><script src="./js/png24.js"></script><![endif]-->

<script>

var UserInfo = UserInfo || (function() {
	var module = {};
	var _isLogin = false;
	var _firstName = "";
	var _lastName = "";
	
	var ajax = function(callback) {
		jQuery.ajax(
 			{
 			    url: 'https://www.shillahotels.com/cmm/getUserInfo.do',
 			    type: "post",
 			    dataType: "jsonp",
 			    error: function(){
 			    	callback(null);
 			    },
 			    success: function( strData ){
 			    	if(strData.NAME_ID != '') {
 			    		_isLogin = true;
 			    		_firstName = strData.FIRST_NAME;
 			    		_lastName = strData.LAST_NAME;
 			    	}
 			    	callback(_firstName + " " +_lastName);
 			    }
 			}                           
 		);
	};
	
	module.drawName = function(callback) {
		ajax(callback);
	};
	
	module.isLogin = function() {
		return _isLogin;
	};
	
	return module;
})();

</script>

<script type="text/javascript">

var filter = "win16|win32|win64|mac|macintel";
var pcFlag = $.cookie('SHILLA_PC');

if(navigator.platform){
    if( filter.indexOf(navigator.platform.toLowerCase())<0){
    	if (pcFlag != 'Y') {
	        document.location.href = "http://m.shillastay.com/stayhub/index.do";
    	}
    }
}

</script>

</head>
<body class="mainBody">
<dl class="skipNavi">
	<dt>SHILLA STAY 바로가기 메뉴</dt>
	<dd><a class="goGnbMenu" href="#gnbMenu">메인메뉴 바로가기</a></dd>
	<dd><a class="goContents" href="#contents">본문으로 바로가기</a></dd>
</dl>

<div class="mainWrap WrapHub">

	<div class="head">
		<script type="text/javascript" >
	function ssoLogout() {
		location.href = "https://www.shillahotels.com/stayhub/login/SSOLogout.do?returnType=P";
//  		location.href = "/stayhub/login/SSOLogout.do";
	}
	
	function fnNoticeAlert() {
		
			alert("2015년 7월 27일 신라호텔의 새로운 멤버십 서비스 신라리워즈가 오픈함에 따라 온라인 회원 서비스가 종료됩니다. 다이너스티 또는 골드 멤버십에 가입하셨던 고객께서는 신라리워즈 멤버십으로 전환하여 주시면 감사하겠습니다.");
		
	}
		
// 		document.oncontextmenu = function(){ // 컨텍스트 메뉴금지
//			return false;
//		};
	/* loginCk */

</script> 

<div class="header">
	<h1 class="logo" style="padding-top: 8px;"><a href="main">HON STAY</a></h1>
	<!-- 로그인  -->
	<span class="loginArea hub" id="loginAreaSpan">
		<a href="https://www.shillahotels.com/membership/mbr/login/memLogin.do?lang=ko&propertyId=STAYHUB&re=m">로그인</a>
		<a href="https://www.shillahotels.com/membership/mbr/login/memLogin.do?resvYn=Y&lang=ko&propertyId=STAYHUB&re=m">예약확인</a>
	</span>
	<span class="loginArea hub" id="logoutAreaSpan" style="display:none;">
		<a href="javascript:ssoLogout();">로그아웃</a>
		<a href="https://www.shillahotels.com/membership/mbr/login/memLogin.do?propertyId=STAYHUB&lang=ko&re=m">마이페이지<!-- 마이페이지 --></a>
		<a href="https://www.shillahotels.com/membership/mbr/login/memLogin.do?resvYn=Y&lang=ko&propertyId=STAYHUB&re=m">예약확인</a>
	</span>
	
	<!-- 어권별 선택 -->
	<div class="language hub">
		<div class="globalBox">
			<a class="btn" href="#">한국어</a><ul class="list">
				<li class="dn1 first last">
					<ul>
						<li class=""><a href="/stayhub/cmm/setLang.do?lang=en"><span>English</span></a></li>
						<li class=""><a href="/stayhub/cmm/setLang.do?lang=ja"><span>日本語</span></a></li>
						<li class=""><a href="/stayhub/cmm/setLang.do?lang=zh"><span>简体中文</span></a></li>
						</ul>
				</li>
			</ul>
		</div>
	</div>
	
	<!-- 어권별 선택 //end -->
	<div class="shillaBtn hub"><a href="https://www.shillahotels.com/membership/offers/benefits/memBenefitsIndex.do"><span>신라리워즈</span></a></div>
	<!-- 호텔찾기 -->
	<div class="hotelBox_wrap hub"><!-- 개선 : class="hotelBox_wrap"변경 -->
		<a href="javascript:void(0);" class="btn">위치찾기<!-- 호텔찾기 --></a>
		
		<!-- 개선 : 호텔찾기 -->
		<div class="hotelBox_N">
			<div class="hHead">
				<ul class="htTab">
      				<li class="tab2 on"><a href="#"><span>권역별</span></a></li>
					<li class="tab1 "><a href="#"><span>브랜드별</span></a></li><!-- a 선택시 li class on 추가 -->
				</ul>
			</div>
			
			<!-- 권역별 -->
			<div class="hCon" style="display:">
				<div class="list2">					
					<dl>
						<dt><a href="#"><img src="/images/ko/common/new_2019/main_tab2_tit1.gif" alt="국내"></a></dt>
						<dd>
							<strong class="tit"><img src="/images/ko/common/new_2019/main_tab2_stit1.gif" alt="서울 강북"></strong>
							<ul>
								<li><a href="https://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
								<li><a href="https://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
								<li><a href="https://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
								<li><a href="https://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
							</ul>
						</dd>
						<dd>
							<strong class="tit"><img src="/images/ko/common/new_2019/main_tab2_stit2.gif" alt="서울 강남"></strong>
							<ul>
								<li><a href="https://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
								<li><a href="https://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
								<li><a href="https://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
								<li><a href="https://www.shillastay.com/samsung/index.do?lang=ko">신라스테이 삼성</a></li>
							</ul>
						</dd>
						<dd>
							<strong class="tit"><img src="/images/ko/common/new_2019/main_tab2_stit3.gif" alt="전국"></strong>
							<ul>
								<li><a href="https://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
								<li><a href="https://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
								<li><a href="https://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
								<li><a href="https://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
								<li><a href="https://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
								<li><a href="https://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt><a href="#"><img src="/images/ko/common/new_2019/main_tab2_tit2.gif" alt="해외"></a></dt>
						<dd>
							<strong class="tit"><img src="/images/ko/common/new_2019/main_tab2_stit4.gif" alt="베트남"></strong>
							<ul>
								<li><a href="https://www.shillamonogram.com/mghub/index.do?lang=ko" >신라모노그램 다낭</a></li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
			<!-- //권역별 -->
			
			<!-- 브랜드별 -->
			<div class="hCon" style="display:none">
				<div class="list1">
					<dl>
						<dt><a href="https://www.shillahotels.com"><img src="/images/ko/common/new_2019/main_tab1_tit1.gif" alt="THE SHILLA"></a></dt>
						<dd>
							<ul>
					<li><a href="https://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
												<li><a href="https://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
												</ul>
						</dd>
					</dl>
					<dl>
						<dt><a href="https://www.shillamonogram.com/mghub/index.do?lang=ko"><img src="/images/ko/common/new_2019/main_tab1_tit2.gif" alt="SHILLA MONOGRAM"></a></dt>
						<dd>
							<ul>
								<li><a href="https://www.shillamonogram.com/dnmg/index.do?lang=ko" >신라모노그램 다낭</a></li>
							</ul>
						</dd>
					</dl>
					<dl>
						<dt><a href="https://www.shillastay.com/"><img src="/images/ko/common/new_2019/main_tab1_tit3.gif" alt="SHILLA STAY"></a></dt>
						<dd>
							<ul>
								<li><a href="https://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
								<li><a href="https://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
								<li><a href="https://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
								<li><a href="https://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
								<li><a href="https://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
								<li><a href="https://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
								<li><a href="https://www.shillastay.com/samsung/index.do?lang=ko">신라스테이 삼성</a></li>
								<li><a href="https://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
								<li><a href="https://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
								<li><a href="https://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
								<li><a href="https://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
								<li><a href="https://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
			<!-- //브랜드별 -->
			
			<a href="#" class="btnClose">닫기</a>
		</div>
		<!-- //개선 : 호텔찾기 -->	
		
		<div class="list" style="display:none">
			<div class="hotel">
				<h3><a href="http://www.shillahotels.com/index.do?lang=ko&propertyId=STAYHUB" class="tit">The Shilla</a></h3>
				<ul class="hotelListBox">
					<li><a href="http://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
					<li><a href="http://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
				</ul>
			</div>
			<div class="stay">
				<h3>
					<a href="http://www.shillastay.com/stayhub/index.do" class="tit">Shilla Stay</a>
				</h3>
				<ul class="stayListBox">
					<li class="first"><span class="tit">서울 강북</span>
						<ul>
							<li><a href="http://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
							<li><a href="http://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
							<li><a href="http://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
						</ul> <span class="tit">서울 강남</span>
						<ul>
							<li><a href="http://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
							<li><a href="http://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
							<li><a href="http://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
						</ul>
					</li>
					<li class="last"><span class="tit">전국</span>
						<ul>
							<li><a href="http://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
							<li><a href="http://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
							<li><a href="http://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
							<li><a href="http://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
							<li><a href="http://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 호텔찾기 //end -->
	
	
	<!-- 예약 -->
	<div class="rsvBtn"><a href="https://www.shillahotels.com/dongtan/resv/rpm/memSetStep1.do?propertyId=STAYHUB&sBar=Y&lang=ko">예약<!-- 예약 --></a></div>
	<div id="gnbMenu" class="hubMenu">
		<ul>
			<li class="first"><span class="hMenu1"><a href="/stayhub/globalOffers/listPack.do">스페셜 오퍼<!-- 스페셜 오퍼 --></a></span></li>
			<li><span class="hMenu2"><a href="/stayhub/aboutShillaStay/hotelOverview.do">호텔소개<!-- 호텔소개 --></a></span></li>
			<li class="last"><span class="hMenu3"><a href="/stayhub/findHotel/findHotel.do">위치찾기<!-- 위치찾기 --></a></span></li>
		</ul>
	</div>
</div>

<script>

$(window).load(function() {
	UserInfo.drawName(function(name) {
		name = $.trim(name);
		if(name != null && name != undefined && name != '') {
			jQuery("#loginAreaSpan").hide();
			jQuery("#logoutAreaSpan").show();
		} else {
			jQuery("#loginAreaSpan").show();
			jQuery("#logoutAreaSpan").hide();
		}
	});
});

</script>
</div>
	<!-- <div id="depbar" class="depbar"  style="display:none"></div> -->
	
	<!-- <div id="test" class="test" style="display:none;position:absolute;top:154px;left:0;z-index:15;width:100%;height:31px;background-color:#77726D;"></div> -->
	
	
	




	<script src="./js/jquery.jsSelect.js" charset="UTF-8"></script><!-- 20180209 추가 -->
	<script type="text/javascript">
	$(document).keypress(function(e) { if (e.keyCode == 13) e.preventDefault(); }); // 엔터 막기
	
	var calOpts = {
			calDiv: "sDate",
			calDiv: "rsvCalendarDate",
			ckinYmdId: "ckinYmd",
			ckoutYmdId: "ckoutYmd",
			nightCntId: "nightCnt",
			resvDateInfoId: "resvDateInfo",
			ckinYmdInfoId: "ckinYmdInfo",
			ckoutYmInfodId: "ckoutYmdInfo",
			nightCntInfoId: "nightCntInfo",
			isMain: true,
			today: '2020-03-13' //오늘날짜
			// oks 추가 2019-10-21 어권 추가
			,lang : 'ko'
		};
	

	/// oks 추가 페이지 로드시 요일체크
	function wok(nowDate){
		var week = [
			'일' 
			,'월'
			,'화'
			,'수'
			,'목'
			,'금'
			,'토'
			];
		var dayOfWeek = week[new Date(nowDate).getDay()];
		return dayOfWeek;
	}
	
	var lfs = 30;
$(document).ready(function () {
	// 스크롤 생성 제거
	if($(".scroll.jspScrollable").data('jsp') !== undefined ){
		$(".scroll.jspScrollable").data('jsp').destroy(); 
	}
	
	jQuery('.btnQuestion').on('mouseover', function(){
		jQuery(this).children('.warnBalloonBox').addClass('on')
	}).on('mouseout', function(){
		jQuery(this).children('.warnBalloonBox').removeClass('on')
	});
	
	
	var speedTime='7';
	
		speedTime = parseInt(speedTime)*1000;
	
	
	/*
		[2019_모션추가] 호텔 선택 레이어
		기능 : 호텔 선택 레이어 슬라이드 
		- 호텔을 검색해주세요 (.inpHtSch) 클릭 시 -> 레이어 활성화
		- '.htData > li > a ' 버튼 클릭 시 -> '.flexslider .slides' 슬라이드 추가 
		- 선택한 호텔 정보 출력('.ckList')
		※ .htData > li에 data 속성 추가 필요(*개발*) : data-hotelId="호텔Id", data-hotelTitle="호텔 명", data-addr="호텔 주소", data-imgUrl="슬라이드 이미지"
		※ 언어 변경 시  설정된 언어로 data-hotelTitle, data-addr 값 적용

		※ 검색 결과 없을 경우 호출 : pc.resvSelHotel.isData(false);
		※ 검색 결과 있을 경우 호출 : pc.resvSelHotel.isData(true);
	*/

	/*
		개선  : [2019_모션추가] 달력 고도화 start
	*/
	$.advResvCalendar.setDefaults(calOpts);


	$('.containSlides').flexslider({
           animation: "fade",
           slideshow: true,
           animationLoop: true,
           prevText : '이전',
           nextText: '다음',
           controlNav :false,
           slideshowSpeed: speedTime,
           itemWidth : 1200
       });
 
	
	var ckinD = new Date();
	ckinD.setDate(ckinD.getDate()+parseInt(0));
	var ckinMm = ckinD.getMonth()+1 < 10 ? "0"+(ckinD.getMonth()+1) : ckinD.getMonth()+1; 
	var ckinDd = ckinD.getDate() < 10 ? "0"+ckinD.getDate() : ckinD.getDate();
	
	var ckoutD = new Date();
	ckoutD.setDate(ckoutD.getDate()+(parseInt(0)+1));
	var ckoutMm = ckoutD.getMonth()+1 < 10 ? "0"+(ckoutD.getMonth()+1) : ckoutD.getMonth()+1; 
	var ckoutDd = ckoutD.getDate() < 10 ? "0"+ckoutD.getDate() : ckoutD.getDate();
	
	// oks 
	jQuery("#ckinYmd").val(ckinD.getFullYear()+"-"+ckinMm+"-"+ckinDd);
	jQuery("#ckoutYmd").val(ckoutD.getFullYear()+"-"+ckoutMm+"-"+ckoutDd);
	
	var dayIdx1 = new Date(ckinD.getFullYear(), ckinMm , ckinDd ).getDay();
	var dayIdx2 = new Date(ckoutD.getFullYear(), ckoutMm, ckoutDd ).getDay();
	
	$("#ckinDateInfo").text(ckinD.getFullYear()+"."+ckinMm+"."+ckinDd +" (" + wok($("#ckinYmd").val()) + ")");
	$("#ckoutDateInfo").text(ckoutD.getFullYear()+"."+ckoutMm+"."+ckoutDd+" (" + wok($("#ckoutYmd").val()) + ")");
	
	$("#nightCntInfo").text("1"+messages["javascript.calendar.night"]);
	$("#nightCnt").val("1");

	
	window.setInterval("reloadServerTime()", 10000);
	//fncOpenPopup();
	
	fncMainPopup();
	
	//reseration select default title
	var hotlLabel = "호텔을 선택해주세요.";
	var adltLable = "성인";
	var chldLabel = "어린이";
	var infantLabel = "유아";
	
	//reseration select default title
	$("#findhtl .jsSelect .value").text(hotlLabel);
	$("#adult .jsSelect .value").text(adltLable);
	$("#child .jsSelect .value").text(chldLabel);
	$("#baby .jsSelect .value").text(infantLabel);
	
	
	
	// 달력 열기
	$('.rsvInput').on('click', function(){
		if($("#hotlId").val() == '') {
			alert('호텔을 선택해주세요.');
			$("#hotlId_selection").focus();
			return;
		}
		
		$.resvCalendar.setDefaults(calOpts).createCalendar();	
		$('.rsvCalendarDate').toggleClass('on');
	});
	
	
	
	/************ 호텔 키워드 검색 탭*********************/
	pc.resvSelHotel.init();
	$("#keywordAreaBtn").click(function(){
	 	var $ckOptList = $('.htSearch .ckType');
        var oSelf = this;
        $ckOptList.each(function(){
            oSelf.maxSelCnt = $(this).attr('data-maxSelCnt'); //호텔 최대 선택 가능 갯수

            if(oSelf.maxSelCnt === undefined){
            	// 프로모션의 경우 1개만 선택 가능
                if($('.newpromotionWrap').length > 0){
                    oSelf.maxSelCnt = 1;
                }else{
                    oSelf.maxSelCnt = 5;
                }
                $(this).attr('data-maxSelCnt', oSelf.maxSelCnt);
            }
        });
	});
	
	$("ul.htTab").find("li").click(function(e){
		
		$("#hotlId").val("");
		$("#hotlIdArr").val("");
		$("#keywordAreaBtn").attr("src","/images/ko/common/new_2019/reserve_step1_ok_disable.gif");
		
		$("#htBoxInfo .htTabCon li a").each(function(){
			if($(this).hasClass("on")){
				$(this).removeClass();
			}
		});
		
		if($("#searchBarKeyword").val().length == 1 ){
			$("#htBrandList").hide();
			$("#htRegionList").hide();
			$(".txtErr").show();
			$("#htBoxInfo .noti").html("");
			$("#htBoxInfo .noti").hide();
			$(".noData").html("<p>두 글자 이상 입력해주세요.</p>");
			$(".noData").show();
			// 선택해제 버튼
			$(".btnClear").css("display","none");

		} else {
			if($("#htBrandList .htData").html() == ""){
				$("#htBoxInfo .noData").show();
				$("#htBoxInfo .htTabCon").hide();
				//$("#htBoxInfo .noti").hide();
			}else{
				var $target = $(e.currentTarget);
	            var tabIdx = $target.index();
	            var $tabCont = $('.htSearch .htTabCon');
	            var $resetBtn = $('.htSearch .btnClear');

	            $tabCont.eq(tabIdx).show();
	            $tabCont.eq(tabIdx).siblings().hide();
	            if($("#htBoxInfo .noti").html() == ""){
	            	$("#htBoxInfo .noti").hide();	
	            }else{
	            	$("#htBoxInfo .noti").show();
	            }
			}
		}
		
		$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
	});
	
	$("#htSchDel").click(function(){
		$("#hotlId").val("");
		$("#searchBarKeyword").val("");
		$("#searchBarKeyword").trigger("keyup");
		$("#hotlIdArr").val("");
		$("#htBoxInfo .noti").hide();
		// oks 1017
		$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
	});
	
	$(".btnClear").click(function(){
		$("#hotlId").val("");
		$("#hotlIdArr").val("");
		$("#keywordAreaBtn").attr("src","/images/ko/common/new_2019/reserve_step1_ok_disable.gif");
		$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
	});
	
	$(".btnInpSch").click(function(){
		$("#searchBarKeyword").trigger("click");
	});
	
	$("#searchBarKeyword").click(function(){
		if($("#hotlIdArr").val().length == 0){
			searchFunction("","");
		} else {
			searchFunction("","_plg");
		}
	}).bind().delay(1000).keyup(function(e){
		if(e.keyCode == 13){
			return false;
		}
		
		if(!keyupValidation(e.keyCode)){
			return false;
		}
		
		$("#hotlId").val("");
		$("#hotlIdArr").val("");
		$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
		var keyword = $("#searchBarKeyword").val();
		var regexp = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣0-9a-zA-Z.]/; // 숫자,영문,특수문자
		for( var i=0; i<keyword.length; i++){
			if(keyword.charAt(i) != " " && regexp.test(keyword.charAt(i)) == false ){
				$("#searchBarKeyword").val($("#searchBarKeyword").val().replace(keyword.charAt(i),""));
				//alert(keyword.charAt(i) + "는 입력불가능한 문자입니다");
			}
        }

		if (keyword.length > 1 || keyword.trim() == "" ) {
			$(".txtErr").hide();
			$(".noData").html("<p>검색 결과가 없습니다.<br>다른 검색어를 입력해주세요.</p>");
			$(".noData").hide();
			searchFunction(keyword,"");
		} else {
			$("#htBrandList").hide();
			$("#htRegionList").hide();
			$(".txtErr").show();
			$("#htBoxInfo .noti").html("");
			$("#htBoxInfo .noti").hide();
			$(".noData").html("<p>두 글자 이상 입력해주세요.</p>");
			$(".noData").show();
			// 선택해제 버튼
			$(".btnClear").css("display","none");
		}
		
	});
	/******************************************/
	
	var searchFunction = function(key,plg){
		var chkIdx = 0;
		
		$(".htSearch .htTab li").each(function(idx){
			if($(this).hasClass("on")){
				chkIdx = idx;
			}
		});
		
		if(key.trim() != ""){
			$("#htBoxInfo .noti").show();
		}
		if(key.trim() == ""){
			$("#htBoxInfo .noti").html("");
			$("#htBoxInfo .noti").hide();
		}
		
		var param = encodeURIComponent(
				JSON.stringify({
					"keyword" : key
				}
			)
		);
		var ajaxUrl = "/resv/rpm/searchKeyword.do";
		
		$.ajax({
			url: ajaxUrl,
			data: "data="+param ,
			cache: false,
			type: "POST",
			async: false,
			beforeSend : function(){
			},
			success : function(data){
				var jsonObj = jQuery.parseJSON(data);
				var objData = jsonObj.model;
				var resultCnt = 0;
				var brandHtml = "";
				var regionHtml = "";
				
				var tsHtml = "";
				var stayHtml = "";
				var monoglamHtml = "";
				
				var GNHtml = ""; //강남
				var GBHtml = ""; //강북
				var NWHtml = ""; //전국
				var OSHtml = ""; //해외
				
				//키워드 타이핑 시 초기화
				if(plg != "_plg"){
					$("#hotlId").val("");
					$("#hotlIdArr").val("");
					$(".btnClear").trigger("click");
				}
				
				if(objData.FLAG == "00"){
					if(objData.hotlList.length > 0){
						hotelList = objData.hotlList;
						// 선택해제 버튼
						$(".btnClear").css("display","block");
						
						for(var i = 0; i < hotelList.length; i++){
							var hotelObj = hotelList[i];
							
							var addClassOn = "";
							if(plg == "_plg"){
								var hotlarry = $("#hotlIdArr").val().split(",");
								hotlarry.forEach(function(element) {
									if(element == hotelObj.hotlId){
										addClassOn = "class=\"on\"";
									}
								});
							}
							
							var img = "/images/ko/common/new_2019/bg_check_hotel_default.gif"; 
							if(hotelObj.attFilePath != undefined){ img = "https://www.shilla.net//images/upload/"+hotelObj.attFilePath; } else { img }
							var nm = ""; 
							if(hotelObj.hotlNm != undefined){ nm = hotelObj.hotlNm; }
							var add = ""; 
							if(hotelObj.hotlAddr != undefined){ add = hotelObj.hotlAddr; }
							
							if(hotelObj.brandGroupCd == "TS"){
								//tsHtml +="<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\"data-imgUrl=\""+ img +"\"><a " + addClassOn + " href=\"#none\">"+ nm +"</a></li>";
							}else if(hotelObj.brandGroupCd == "STAY"){
								resultCnt++;
								stayHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\"" +nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a " + addClassOn + " href=\"#none\">"+ nm +"</a></li>";
							}else if(hotelObj.brandGroupCd == "MONOGLAM"){
								//monoglamHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a " + addClassOn + " href=\"#none\">"+ nm +"</a></li>";
							}
							
							if(hotelObj.hotlId != 'S' && hotelObj.hotlId != 'C'){
								if(hotelObj.regionGroupNm == "GN" ){
									GNHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a " + addClassOn + " href=\"#none\">"+ nm +"</a></li>";
								}else if(hotelObj.regionGroupNm == "GB" ){
									GBHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a " + addClassOn + " href=\"#none\">"+ nm +"</a></li>";
								}else if(hotelObj.regionGroupNm == "TS" ){
									NWHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a " + addClassOn + " href=\"#none\">"+ nm +"</a></li>";
								}else if(hotelObj.regionGroupNm =="OS" ){
									//OSHtml += "<li data-hotlId=\""+hotelObj.hotlId+"\"data-hoteltitle=\""+ nm +"\" data-addr=\""+ add +"\" data-imgUrl=\""+ img +"\"><a " + addClassOn + " href=\"#none\">"+ nm +"</a></li>";
								}
							}
							
						}
						
						if(GNHtml != "" || GBHtml != "" || NWHtml != ""){
							regionHtml += "<strong class=\"contury\">국내</strong>";						
						}
						if(GBHtml != ""){
							regionHtml += "<dl>";
							regionHtml += "	<dt>서울 강북</dt>";
							regionHtml += "	<dd>";
							regionHtml += "		<ul>";
							regionHtml += 			GBHtml;
							regionHtml += 	"	</ul>";
							regionHtml += "	</dd>";
							regionHtml += "</dl>";
						}
						if(GNHtml != ""){
							regionHtml += "<dl>";
							regionHtml += "	<dt>서울 강남</dt>";
							regionHtml += "	<dd>";
							regionHtml += "		<ul>";
							regionHtml += 			GNHtml;
							regionHtml += 	"	</ul>";
							regionHtml += "	</dd>";
							regionHtml += "</dl>";
						}
						if(NWHtml != ""){
							regionHtml += "<dl>";
							regionHtml += "	<dt>전국</dt>"; 
							regionHtml += "	<dd>";
							regionHtml += "		<ul>";
							regionHtml += 			NWHtml;
							regionHtml += 	"	</ul>";
							regionHtml += "	</dd>";
							regionHtml += "</dl>";
						}
						if(OSHtml != ""){
							regionHtml += "<strong class=\"contury\">해외</strong>"; 
							regionHtml += "<dl>";
							regionHtml += "	<dt>베트남</dt>"; 
							regionHtml += "	<dd>";
							regionHtml += "		<ul>";
							regionHtml += 			OSHtml;
							regionHtml += 	"	</ul>";
							regionHtml += "	</dd>";
							regionHtml += "</dl>";
						}
						
						if(tsHtml != ""){
							brandHtml += "<dl>";
							brandHtml += "	<dt>더 신라</dt>";
							brandHtml += "	<dd>";
							brandHtml += "		<ul>";
							brandHtml += 			tsHtml;
							brandHtml += 	"	</ul>";
							brandHtml += "	</dd>";
							brandHtml += "</dl>";
						}
						if(monoglamHtml != ""){
							brandHtml += "<dl>";
							brandHtml += "	<dt>신라모노그램</dt>";
							brandHtml += "	<dd>";
							brandHtml += "		<ul>";
							brandHtml += 			monoglamHtml;
							brandHtml += 	"	</ul>";
							brandHtml += "	</dd>";
							brandHtml += "</dl>";
						}
						if(stayHtml != ""){
							brandHtml += "<dl>";
							brandHtml += "	<dt>신라스테이</dt>";
							brandHtml += "	<dd>";
							brandHtml += "		<ul>";
							brandHtml += 			stayHtml;
							brandHtml += 	"	</ul>";
							brandHtml += "	</dd>";
							brandHtml += "</dl>";
						}
						
						$("#htBoxInfo .noData").hide();
						$("#htBrandList .htData").html(brandHtml);
						$("#htRegionList .htData").html(regionHtml);
						//키워드 재검색 시 초기화
						
						if(chkIdx==0){
							$("#htBrandList").hide();
							$("#htRegionList").show();
						}else{
							$("#htBrandList").show();
							$("#htRegionList").hide();
						}
						$(".htSearch .htTab li").removeClass("on");
						$(".htSearch .htTab li:eq("+chkIdx+")").addClass("on");
						
						//권역별
						$("#htBoxInfo .htTabCon li a").click(function(){
							var hotelId = $(this).parent("li").data("hotlid");
							var hotlIdStr = $("#hotlIdArr").val();
							var hotlIdArr = hotlIdStr.split(",");
							var onCount = 0;
							//$("#htBoxInfo .htTabCon li a").each(function(){
							//	if($(this).hasClass("on")){
							//		onCount++;
							//	}
							//});

							hotlIdArr.forEach(function(element){
								onCount++;
							});
							
							if(!$(this).hasClass("on")){
								if(onCount > 4){
									var mgs = messages["javascript.alert.hotel.select"];
									mgs = mgs.replace('{0}', "5");
									alert(mgs);
									return false;
								} else {
									if(hotlIdStr == ""){
										hotlIdStr = hotelId;
										$('#searchBarKeyword').val("");
									}else{
										hotlIdStr += ","+hotelId;
									}
								}
							}else{
								if(hotlIdArr.length == 1){
									// oks 1017
									$("#searchBarKeyword").attr('placeholder', "호텔을 선택해주세요.");
									hotlIdStr = "";
								}else{
									hotlIdStr = "";
									for(var i = 0;i < hotlIdArr.length; i++){
										if(hotlIdArr[i] != hotelId){
											if(0 == i){
												hotlIdStr = hotlIdArr[i];
											}else{
												if(hotlIdStr == ""){
													hotlIdStr = hotlIdArr[i];
													fnHotlIdSelection(hotlIdArr[i]);
													
												}else{
													hotlIdStr += "," + hotlIdArr[i];	
												}
											}
										}
									}
								}
							}
							if(hotlIdStr != "" && hotlIdStr.split(",").length == 1){
								fnHotlIdSelection(hotlIdStr); // ID
							}
							$("#hotlIdArr").val(hotlIdStr);
							
							if(hotlIdStr == ""){
								$("#keywordAreaBtn").attr("src","/images/ko/common/new_2019/reserve_step1_ok_disable.gif");
								//$("#keywordAreaBtn").parent().removeClass();
							}else{
								$("#keywordAreaBtn").attr("src","/images/ko/common/new_2019/reserve_step1_ok.gif");
								$("#keywordAreaBtn").parent().addClass("btnSubmit");
							}
						});
					}else{
						$("#htBrandList .htData").html("");
						$("#htRegionList .htData").html("");
						
						$("#htBoxInfo .noData").css("display","block");
						$("#htBoxInfo .htTabCon").css("display","none");
						// 선택해제 버튼
						$(".btnClear").css("display","none");

					}
					
				}else{
					$("#htBrandList .htData").html("");
					$("#htRegionList .htData").html("");
					
					$("#htBoxInfo .noData").show();
					$("#htBoxInfo .htTabCon").hide();
					// 선택해제 버튼
					$(".btnClear").css("display","none");

				}
				
				// oks 1018
				if(key.length > 1){
					var keywordSearchTxt = "'{0}'에 대한 {1}개의 검색결과";
						keywordSearchTxt = keywordSearchTxt.replace("{0}", key);
						keywordSearchTxt = keywordSearchTxt.replace("{1}", resultCnt);
					jQuery("#htBoxInfo .noti").html(keywordSearchTxt);
					jQuery("#htBoxInfo .noti").css("display","block");
				} else {
					jQuery("#htBoxInfo .noti").html("");
					jQuery("#htBoxInfo .noti").css("display","none");
				}
			},
			error : function(jqxhr, textStatus, error){
				alert("keywordsSearch request fail : " + error);
			}
		});
	};
	
});
//특수키 입력
function keyupValidation(key){
	var result = true;
	if(key == 9 || key == 13 || key == 16 || key == 17 || key == 18 
			|| key == 19 || key == 20 || key == 27 || key == 33 || key == 34 
			|| key == 35 || key == 36 || key == 37 || key == 38 || key == 39 
			|| key == 40 || key == 45 || key == 46 || key == 91 || key == 92
			|| key == 93 || key == 144 || key ==  145 || key == 186 || key == 187 
			|| key == 188 || key == 189 || key == 190 || key == 191 || key == 192 
			|| key == 219 || key == 220 || key == 221 || key == 222){
		result = false;
	}
	return result;
}

/****************************************** 2*/
//호텔별 당일 예약 가능 여부 체크
function fnResvPosbAheadDyYnTF(resvPosbAheadDyCnt){
	var ckinYmd = $("#ckinYmd").val();
	var afterInYmd = "";
	var aheadDayYnTF = true;
	
	var limitDay = new Date("2020-03-13");
	limitDay.setDate(limitDay.getDate()+parseInt(resvPosbAheadDyCnt));
	var limitMm = limitDay.getMonth()+1 < 10 ? "0"+(limitDay.getMonth()+1) : limitDay.getMonth()+1; 
	var limitDd = limitDay.getDate() < 10 ? "0"+limitDay.getDate() : limitDay.getDate();
	var limitYmd = limitDay.getFullYear()+""+limitMm+""+limitDd;
	//예약가능일 체크인 선택 날짜 비교 후 체크인 날짜 변경
	if(parseInt(limitYmd) >= parseInt(ckinYmd.replace(/-/gi,""))){
		var ckinD = new Date();
		ckinD.setDate(ckinD.getDate()+parseInt(resvPosbAheadDyCnt));
		var ckinMm = ckinD.getMonth()+1 < 10 ? "0"+(ckinD.getMonth()+1) : ckinD.getMonth()+1; 
		var ckinDd = ckinD.getDate() < 10 ? "0"+ckinD.getDate() : ckinD.getDate();
		
		afterInYmd = ckinD.getFullYear()	+ "" + ckinMm	+ "" + ckinDd; // 변경된 체크인 날짜( YYYY-MM-DD )
	}else{
		afterInYmd = ckinYmd;
	}
	
	if(parseInt(ckinYmd.replace(/-/gi,"")) < parseInt(afterInYmd.replace(/-/gi,""))){
		aheadDayYnTF = false;
	}
	
	return aheadDayYnTF;
}

function fnHotlIdSelection(selectVal){
	var selectObj = selectVal;
	
	$.ajax({
		url: "/resv/rpm/getHotlInfo.do",
		data : { "hotlId": selectObj },
		cache: false,
		type: "POST",
		async: false,
		success : function(json){
			var data = jQuery.parseJSON(json);
			$("#searchBarKeyword").attr('placeholder', data.model.hotlVo.hotlNm);
			$("#maxCapaCnt").val(data.model.hotlVo.maxCapaCnt);
			$("#resvPosbAheadDyCnt").val(data.model.hotlVo.resvPosbAheadDyCnt);
			
			
			
			$("#prtyExpRoom").val(data.model.hotlVo.prtyExpRoom);
			$("#rsvInquireHotlId").val(data.model.hotlId);	//객실예약연락처 가져오는 호텔ID
			$("#hotlId").val(data.model.hotlId);
			$("#hotlUrlPath").val(selectObj);
			$("input[name='keyword']").each(function(){
				$(this).prop("checked", false);
			});
		},
		error : function(){
			alert( "getHotlInfo Request Failed");
		}
	});
	
}

	// 해당이름의 쿠키를 가져온다.
    function getCookie(cookie_name) {
        var isCookie = false;
        var start, end;
        var i = 0;

        // cookie 문자열 전체를 검색
        while(i <= document.cookie.length) {
             start = i;
             end = start + cookie_name.length;
             // cookie_name과 동일한 문자가 있다면
             if(document.cookie.substring(start, end) == cookie_name) {
                 isCookie = true;
                 break;
             }
             i++;
        }

        // cookie_name 문자열을 cookie에서 찾았다면
        if(isCookie) {
            start = end + 1;
            end = document.cookie.indexOf(";", start);
            // 마지막 부분이라는 것을 의미(마지막에는 ";"가 없다)
            if(end < start)
                end = document.cookie.length;
            // cookie_name에 해당하는 value값을 추출하여 리턴한다.
            return document.cookie.substring(start, end);
        }
        // 찾지 못했다면
        return "";
    }
	function reloadServerTime(){
		callAjax("./getServerTime.do", null, function(data){
			var obj, area = $("#timeWeatherArea"), weather = data.weather;
			obj = area.find("#ampm");
			if(obj.text() != weather.get("ampm")){
				setTimeView(obj, "", obj.text(), weather.get("ampm"));
			}
			obj = area.find("#hour");
			if(obj.text() != weather.get("hour")){
				setTimeView(obj, "hour", obj.text(), weather.get("hour"));
			}
			obj = area.find("#min");
			if(obj.text() != weather.get("min")){
				setTimeView(obj, "min", obj.text(), weather.get("min"));
			}
		}, true, function(errCd){
			//do nothing
		});
	}
	function setTimeView(obj, classPrefix, oldVa, newVa){
		obj.removeClass(classPrefix+oldVa);
		obj.addClass(classPrefix+newVa);
		obj.text(newVa);
	}	
	// 공지사항 팝업
	function fncOpenPop(){
		var eventCookie=getCookie("pop20131119");
        // 쿠키가 없을 경우에만 (다시 보지 않기를 선택하지 않았을 경우.)
        if (eventCookie != "no"){
        	//window.open('/open_pop.html','_blank','width=480,height=366');
        	window.open('/open_pop.html','_blank','width=400,height=530');
            
        }
	}
	//공지사항 팝업	
	function fncPopup(dbbsId,idx) {
		
		if (getCookie("pop_"+dbbsId) != "done") {
			var url = "/stayhub/popop/noticePop.do?dbbsId="+dbbsId;
			var win = window.open(url, dbbsId+idx, 'width=100,height=150,scrollbars=no,top=0,status=no,location=no,menubar=no,left='+lfs);
			lfs = parseInt(lfs) + 360;
			//win.focus(); 
		}
		 
	}
	
	function fncOpenPopup() {
		var popLen = '4';
		var dbbsId ='';
		if(popLen > 0){
			var idx = 0;
			
				dbbsId = '9692';
				fncPopup(dbbsId, idx);
				idx++;
			
				dbbsId = '9691';
				fncPopup(dbbsId, idx);
				idx++;
			
				dbbsId = '9690';
				fncPopup(dbbsId, idx);
				idx++;
			
				dbbsId = '9689';
				fncPopup(dbbsId, idx);
				idx++;
			
		}
		
	}
	
	//메인 팝업
	function fncMainPopupOpen(obj) {
		
		if (getCookie("popup_"+obj.dbbsId+"_"+obj.hotlId) != "done") {
			var url = "/stayhub/popop/mainPopup.do?dbbsId="+obj.dbbsId+"&langTypCd="+obj.langTypCd;
			var opt = "";
			
			if(obj.popSize != ""){
				var popSize = obj.popSize.split(":");
				if(popSize.length > 1){
					opt = "width="+popSize[0]+",height="+popSize[1];
				}
			}
			
			if(obj.popLoc != ""){
				var popLoc = obj.popLoc.split(":");
				if(popLoc.length > 1){
					if(opt != "") opt = opt + ","; 
					opt = opt + "top="+popLoc[0]+",left="+popLoc[1];
				}
			}
			
			if(opt != "") opt = opt + ",";  
			opt = opt + 'scrollbars=no,status=no';
			window.open(url, obj.dbbsId+obj.idx, opt);

		}
		 
	}
	
	//메인 팝업 
	function fncMainPopup() {
		var popLen = '1';

		if(popLen > 0){
			
				var param_0 = new Object();
				param_0.index = "0";
				param_0.hotlId = "STAYHUB";
				param_0.dbbsId = "9689";
				param_0.langTypCd = "KR";
				param_0.subj = "[전 지점] 체크인 / 체크아웃 시간 안내 _ 국문";
				param_0.popLoc = "0:0";
				param_0.popSize = "450:432";
				if("PC,MOBILE,APP".indexOf("PC") > -1){
					fncMainPopupOpen(param_0);
				}
			
		}
		
	}
	
	
	// 검색
	function fncGoResv(){
		
		var hotlLabel = "호텔을 선택해주세요.";
		var ckinLabel = "체크인 날짜를 선택해주세요.";
		var ckoutLabel = "체크아웃 날짜를 선택해주세요.";
		var guestLabel = "투숙인원을 선택해주세요.";
		// 호텔 선택 확인
		 if(jQuery("#hotlIdArr").val() == ""){
			alert(hotlLabel);
			return;
		}
	 	
		// 체크인/아웃 날짜 확인
		if(jQuery("#ckinYmd").val() == ""){
			alert(ckinLabel);
			return;
		}
		if(jQuery("#ckoutYmd").val() == ""){
			alert(ckoutLabel);
			return;
		}
		

		var aryPeople = [];
		jQuery('.number > .num').each(function(index) {
	    	aryPeople.push($(this).text());
		});
	    var sumAds = Number(aryPeople[0]) + Number(aryPeople[3]) + Number(aryPeople[6]);
	    var sumKis = Number(aryPeople[1]) + Number(aryPeople[4]) + Number(aryPeople[7]);
	    var sumBbs = Number(aryPeople[2]) + Number(aryPeople[5]) + Number(aryPeople[8]);
	    
	    if(sumAds <= 0){
			alert(guestLabel);
			return;
		} 
	    
	    var romCnt = 1;
	    if(jQuery(".rsvPeople").find('.r_number ').attr('class').indexOf('addRoom3') > 0) {
	    	romCnt = 3;
	    } else if(jQuery(".rsvPeople").find('.r_number ').attr('class').indexOf('addRoom2') > 0) {
	    	romCnt = 2;
	    } else {
	    	romCnt = 1;
	    }
	    
	    jQuery("#roomCnt").val(romCnt);
	    jQuery("#adltCnt").val(aryPeople[0] +","+ aryPeople[3] +","+ aryPeople[6] );
	    jQuery("#chldCnt").val(aryPeople[1] +","+ aryPeople[4] +","+ aryPeople[7] );
	    jQuery("#infantCnt").val(aryPeople[2] +","+ aryPeople[5] +","+ aryPeople[8] );
	    
	    jQuery("#totlAdltCnt").val(sumAds);
	    jQuery("#totlChldCnt").val(sumKis);
	    jQuery("#totlInfantCnt").val(sumBbs);
	    
	    
		//인원 수 VALIDATION CHECK
		var hotlIdArr = $("#hotlIdArr").val();
		if(hotlIdArr != ""){
			var alertFlag = "N";
			//선택된 호텔 ARRAY STRING;
			var hotlIds = hotlIdArr.split(",");
			//선택된 호텔 갯수
			var hotlCnt = hotlIds.length;
			 // 객실당 최대 선택가능한 총인원수
	        var maxCnt = 4;
	        // 객실당 최대 선택가능한 성인수
	        var adltMaxCnt = 3;
	        // 객실 별 인원 LIST로 변경
	        var adultStr = $("#adltCnt").val();
	        var adltList = adultStr.split(",");
	        var chldStr = $("#chldCnt").val();
	        var chldList = chldStr.split(",");
	        var infantStr = $("#infantCnt").val();
	        var infantList = infantStr.split(",");
	        var roomCnt = $("#roomCnt").val();
	        
	        for(var i = 0; i < hotlCnt; i++){
	    		if(hotlIds[i] == "D"){  
	    			//동탄인 경우
					maxCnt = 3;
	    			adltMaxCnt = 2;
	    			break;
	    		}else if(hotlIds[i] == "HUDSS"){
	    			// 스테이 해운대인 경우
	    			if(hotlCnt == 1){
	    				maxCnt = 5;
	    				adltMaxCnt = 4;
	    			}else{
	    				maxCnt = 4;
	    				adltMaxCnt = 3;
	    			}
	    			continue;
	    		}
	    	}
	        for(var i = 0; i < hotlCnt; i++){
	    		if(hotlIds[i] == "D"){  
	    			//스테이 동탄인 경우
	    			if(alertFlag == "H"){
	    				alertFlag += "D";
	    			}else{
	    				alertFlag = "D";
	    			}
	    		}else if(hotlIds[i] == "HUDSS"){
	    			// 스테이 해운대인 경우
	    			if(alertFlag == "D"){
	    				alertFlag += "H";
	    			}else{
	    				alertFlag = "H";
	    			}
	    		}
	    	}
	        //객실 별 인원 체크
	        for(var roomIdx = 0; roomIdx < Number(roomCnt); roomIdx++){
	        	var adltCnt = adltList[roomIdx]; // 성인 수
	        	var chldCnt = chldList[roomIdx]; // 어린이 수
	        	var infantCnt = infantList[roomIdx]; // 유아 수
	        	var totlCnt = parseInt(adltCnt) + parseInt(chldCnt) + parseInt(infantCnt);
	        	
	        	if(2 > hotlCnt){
	        		if(totlCnt > maxCnt || adltCnt > adltMaxCnt ){
	        			if(alertFlag == "N"){
	        				//객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.
	        				var mag = messages["javascript.fncgoresv.room.alert1"]; 
					        	mag = mag.replace(/<br\/>/g,"\n");
		            		alert(mag);
		            	}else if(alertFlag == "D"){
		            		//객실 1실당 성인과 소인 동반 시 최대 3인까지만 투숙이 가능합니다.
		            		var mag = messages["javascript.fncgoresv.room.alert2"]; 
					        	mag = mag.replace(/<br\/>/g,"\n");
		            		alert(mag);
		            	}else if(alertFlag == "H"){
		            		//객실 1실당 성인과 소인 동반 시 최대 5인까지만 투숙이 가능합니다.
		            		var mag = messages["javascript.fncgoresv.room.alert3"]; 
					        	mag = mag.replace(/<br\/>/g,"\n");
		            		alert(mag);
		            	}
	        			$('.opacity').hide();
						pc.layerPopup.unLockScroll();
						$('.re-loader').hide();
	        			return false;
	        		}
	        	}else{
	        		if(totlCnt > maxCnt || adltCnt > adltMaxCnt ){
	        			if(alertFlag == "N"){
	        				//객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.
		            		var mag = messages["javascript.fncgoresv.room.alert1"]; 
					        	mag = mag.replace(/<br\/>/g,"\n");
		            		alert(mag);
		            	}else if(alertFlag == "D"){
		            		/* alert("객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.\n"
	            			+"\n* 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만"   
	            			+"\n투숙이 가능하오니 3인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오."); */
	            			var mag = messages["javascript.fncgoresv.room.alert4"]; 
				        		mag = mag.replace(/<br\/>/g,"\n");
				        	alert(mag);
		            	}else if(alertFlag == "H"){
		            		/* alert("객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.\n"
	            			+"\n* 신라스테이 해운대는 객실 1실당 성인과 소인 동반 시 최대 5인까지" 
	            			+"\n투숙이 가능하오니 4인 이상 투숙을 원하시는 경우 해운대 지점만 단일 선택해주십시오."); */
		            		var mag = messages["javascript.fncgoresv.room.alert5"]; 
					        	mag = mag.replace(/<br\/>/g,"\n");
		            		alert(mag);
		            	}else if(alertFlag == "DH" || alertFlag == "HD"){
		            		/* alert("객실 1실당 성인과 소인 동반 시 최대 4인까지만 투숙이 가능합니다.\n"
	            			+"\n* 신라스테이 동탄은 객실 1실당 성인과 소인 동반 시 최대 3인까지만" 
	            			+"\n투숙이 가능하오니 3인 이상 투숙을 원하시는 경우 동탄 지점을 선택 해제해주십시오."
	            			+"\n* 신라스테이 해운대는 최대 5인까지 투숙이 가능하오니 4인 이상"
	            			+"\n투숙을 원하시는 경우 해운대 지점만 단일 선택해주십시오."); */
		            		var mag = messages["javascript.fncgoresv.room.alert6"]; 
					        	mag = mag.replace(/<br\/>/g,"\n");
		            		alert(mag);
		            	}
	        			$('.opacity').hide();
						pc.layerPopup.unLockScroll();
						$('.re-loader').hide();
	        			return false;
	        		}
	        	}
	        }
		}
		//인원 수 VALIDATION CHECK
	    
	    
		/****************************************** 1*/
		var noResvHotlNm = "";
		var noResvHotlCnt = 0;
				
		$.ajax({
			url: "/resv/rpm/getHotlInfoList.do",
			data : { "hotlIdStr": $("#hotlIdArr").val() },
			cache: false,
			type: "POST",
			async: false,
			success : function(json){
				var data = jQuery.parseJSON(json);
				var hotlList = data.model.hotlList;
				var lang = "ko";
				
				
				for(var c = 0;c < hotlList.length; c++){
					var hotlObj = hotlList[c];
					var hotlNm = "";
					if(hotlObj.resvPosbAheadDyCnt != "0"){
						aheadDayYnTF = fnResvPosbAheadDyYnTF(hotlObj.resvPosbAheadDyCnt);
						if(!aheadDayYnTF){
							switch (lang) {
							case "ko" : hotlNm = hotlObj.hotlNmKr; break;
							case "en" : hotlNm = hotlObj.hotlNmEn; break;
							case "ja" : hotlNm = hotlObj.hotlNmJp; break;
							case "zh" : hotlNm = hotlObj.hotlNmCn; break;
							default	  : hotlNm = hotlObj.hotlNmKr; break;
							}
		
							noResvHotlNm += hotlNm + ", ";
							noResvHotlCnt++; 
						}
					}
				}
			},
			error : function(){
				alert( "getHotlInfoList Request Failed");
			}
		});
		
		if(noResvHotlCnt > 0){
			noResvHotlNm = noResvHotlNm.substring(0, noResvHotlNm.lastIndexOf(","));
			/* alert(noResvHotlNm+"은 당일 예약이 불가하오니 투숙일을 변경해주십시오. 당일 예약을 원하시는 경우 다른 호텔을 선택해주십시오\n"
	        +"\n- 제주신라호텔 : 당일 15시까지 예약 가능\n"
	        +"- 신라스테이 전 지점 : 당일 23시까지 예약 가능"); */
			var mag = messages["javascript.fncgoresv.room.alert7"]; 
				mag = mag.replace('{0}', noResvHotlNm);
				mag = mag.replace(/<br\/>/g,"\n");
					alert(mag);
			return ;
		}

		
		/////////////
		jQuery("#resvForm").attr("method", "post");
		jQuery("#resvForm").attr("action", "https://www.shillahotels.com/stayhub/resv/rpm/memSetStep1.do");
		jQuery("#resvForm").submit();
		

	}
	
</script>

<!-- start 20180209 메인 예약바 추가 -->
<script type="text/javascript">
$(document).ready(function () {
    $('.selArea ul li').on('click', function(){
        if(!jQuery(this).hasClass("rsvInput")){
            if(jQuery(".rsvCalendarDate").is(":visible")){
                jQuery(".rsvCalendarDate").toggleClass('on');
            }
            $(this).addClass('on').siblings().removeClass('on').children().removeClass('jsSelect_on');
        }else{
            $(this).addClass('on').siblings().removeClass('on').children().removeClass('jsSelect_on');
        }
    });
    $('.warnBalloon').on('mouseover', function(){
        $(this).children('.warnBalloonInner').addClass('on')
    }).on('mouseout', function(){
        $(this).children('.warnBalloonInner').removeClass('on')
    });
    
});
</script>

<!-- end 20180209 메인 예약바 추가 -->
<form name="resvForm" id="resvForm" method="get" >
	<input type="hidden" name="hotlId" id="hotlId" />
	<input type="hidden" name="nightCnt" id="nightCnt" />
	<input type="hidden" name="maxCapaCnt" id="maxCapaCnt" />
	<input type="hidden" id="URL_PREFIX" name="URL_PREFIX" value="/stayhub"/>
	<input type="hidden" name="resvPosbAheadDyCnt" id="resvPosbAheadDyCnt" />
	
	<!-- 2019 추가 -->
	<input type="hidden" id="hotlIdArr" name="hotlIdArr" />
	<input type="hidden" id="adltCnt" name="adltCnt" />
	<input type="hidden" id="chldCnt" name="chldCnt" />
	<input type="hidden" id="infantCnt" name="infantCnt" />
	<input type="hidden" id="totlAdltCnt" name="totlAdltCnt" />
	<input type="hidden" id="totlChldCnt" name="totlChldCnt" />
	<input type="hidden" id="totlInfantCnt" name="totlInfantCnt" />
	<input type="hidden" id="roomCnt" name="roomCnt" />
	<input type="hidden" name="ckinYmd" id="ckinYmd" />
	<input type="hidden" name="ckoutYmd" id="ckoutYmd" />
</form>  

<div id="contents" class="mainVisual hub">
<script src="./js/jquery.flexslider-min.js" charset="UTF-8"></script><!-- 20180227 추가 -->
<script type="text/javascript">
	$(document).ready(function () {
		var selectHotlTxt = "호텔을 선택해주세요.";
		$('#searchBarKeyword').attr('placeholder' , selectHotlTxt);
		
		
		var speedTime='7';
		
			speedTime = parseInt(speedTime)*1000;
		

		$('.containSlides').flexslider({
            animation: "fade",
            slideshow: true,
            animationLoop: true,
            prevText : '이전',
            nextText: '다음',
            controlNav :false,
            slideshowSpeed: speedTime,
            itemWidth : 1200
        });
		
		$('.specialOfferSlide').flexslider({
		    animation: "slide",
		    slideshowSpeed: '4500',
		    directionNav: true,
		    slideshow: false,
		    prevText: '이전',
		    nextText: '다음',
		    controlsContainer: '#specialOfferControl'
		});
            
	});
</script>
	<div class="containSlides">
	<ul class="slides">
					<li>
						<a href="#">
							<img class="img" src="./images/contents/main/MAIN_STAYHUB/R0000000ZV1T_KR.jpg"   alt="Joyful Staycation" />
						</a>
					</li>

					<li>
						<a href="#">
							<img class="img" src="./images/contents/main/MAIN_STAYHUB/R0000000YC2G_KR.jpg"   alt="Happy Sunday" />
						</a>
					</li>

					<li>
						<a href="#">
							<img class="img" src="./images/contents/main/MAIN_STAYHUB/R00000010MYN_KR.jpg"   alt="10+1 프로모션" />
						</a>
					</li>

	</ul>
	<div id="mainVisualControl" class="mainControl"></div>



	<!-- 개선 : 호텔예약 -->
	<div class="rsvWrap new_rsvBox">
  		<!-- 검색영역 -->
		<div class="rsvSchHotel">
			<!-- 호텔 선택 -->
	  		<div class="rsvSchCont htSch">
	  			
	  		</div>
	  		<!-- //호텔 선택 -->
	  		
	  		<!-- 날짜 선택 -->
	  		<div class="rsvSchCont htCheck">
	  			
	  		</div>
	  		<!-- //날짜 선택 -->
	  		
	  		<!-- 객실 인원 선택 -->
	  		<div class="rsvSchCont htRoom">
	  			
	  		</div>
	  		<div class="rsvSchCont btnSearch">
	  			
	  		</div>
	  		<!-- //객실 인원 선택 -->
	  	</div>
		<!-- //검색영역 -->
	
		<!-- 호텔 선택 -->
	    <div class="ly_reserve htSearch"> 
	      	<!-- 호텔 선택 부분 좌측영역 -->
			<div class="htBoxTop">
				
			</div>
	
			<div class="htBox" style="display:block">
				<div class="htChoice">
					<div class="htBoxResult">
				  	<div class="scroll">
				  		<div class="scrollCont" id="htBoxInfo">
			           		
						</div>
					</div>
					</div>
				</div>
			  	<!-- 호텔 선택 부분 좌측영역 --> 
			  
				<!-- 호텔 이미지 스와이프 우측영역 -->
				<div class="ckHotelInfo">									
				    <div class="ckHotel">
						<strong class="tit">호텔정보</strong>
						<!-- 검색결과 있음 > 선택 후 -->
						<div class="slideBox">
							<a href="#" class="ad-prev">이전</a><!-- 호텔 2개 이상 선택 시 노출 -->
							<div class="flexslider">
								<ul class="slides"></ul>
							</div>
						<a href="#" class="ad-next">다음</a><!-- 호텔 2개 이상 선택 시 노출 -->
						<!-- //호텔 2개 이상 선택 시 노출 -->
						</div>
						<div class="ckList">
							<ul>
							</ul>
						</div>
				      <!-- //검색결과 있음 > 선택 후 -->
				   	</div>	               	
				</div>
				<!--// 호텔 이미지 스와이프 우측영역 -->
			</div>
				
			<!-- 버튼영역 -->
			<a href="#none" class="btnClear" style="display:block;">
				<img src="/images/ko/common/new_2019/btn_hotel_clear_txt.png" alt="선택해제">
			</a><!-- 검색결과 없는 경우에는 비노출 -->
							
			<div class="btnList">
				<a href="javascript:void(0);" class="btnSubmit" ><img id="keywordAreaBtn" src="/images/ko/common/new_2019/reserve_step1_ok_disable.gif" alt="확인"></a>
			</div>
	    	<!-- //버튼영역 -->
	    </div>
	    <!-- //호텔 선택 -->
	
	    <!-- 달력 Area -->
		<div class="ly_reserve rsvCalendarDate new_rsvCal" id="rsvCalendarDate"></div>
		<!-- //달력 Area -->
	
		<!-- 프로모션 달력 Area -->
		<div class="ly_reserve promotionCalendar new_rsvCal" id="promotionCalendar"></div>
		<!-- //달력 Area -->
	
		<!-- 달력 Area html 소스 -->
			
	    <!-- //달력 Area html 소스 -->
	
	    <!-- 객실인원선택 -->
	    <div class="ly_reserve rsvPeople" style="display:none;">
	      <div class="r_number">
	        <div class="con room1">
	        	<dl>
	        		<dt>객실 1</dt>
	        		<dd>
	        			<ul>
	        				<li>
	        					<strong class="tit">성인</strong>
	             			<div class="number">
	             				<a href="#" class="minus">감소</a>
	             				<span class="num">2</span>
	             				<a href="#" class="plus disabled">증가</a>
	             			</div>
	        				</li>
	        				<li>
	        					<strong class="tit">어린이</strong>
	             			<div class="number">
	             				<a href="#" class="minus">감소</a>
	             				<span class="num">0</span>
	             				<a href="#" class="plus">증가</a>
	             			</div>
	        				</li>
	        				<li>
	        					<strong class="tit">유아</strong>
	             			<div class="number">
	             				<a href="#" class="minus">감소</a>
	             				<span class="num">0</span>
	             				<a href="#" class="plus">증가</a>
	             			</div>
	        				</li>
	        			</ul>
	        		</dd>
	        	</dl>
	        </div>
	      	<div class="con room2">
	          <dl>
	        		<dt>객실 2</dt>
	        		<dd>
	        			<ul><!-- 객실3까지 추가 후에 객실2 btnRooms del2 버튼 클릭하여 삭제처리 할 경우 객실3의 데이터 객실2로 이동-->
	        				<li>
	        					<strong class="tit">성인</strong>
	             			<div class="number">
	             				<a href="#" class="minus">감소</a>
	             				<span class="num">0</span>
	             				<a href="#" class="plus">증가</a>
	             			</div>
	        				</li>
	        				<li>
	        					<strong class="tit">어린이</strong>
	             			<div class="number">
	             				<a href="#" class="minus">감소</a>
	             				<span class="num">0</span>
	             				<a href="#" class="plus">증가</a>
	             			</div>
	        				</li>
	        				<li>
	        					<strong class="tit">유아</strong>
	             			<div class="number">
	             				<a href="#" class="minus">감소</a>
	             				<span class="num">0</span>
	             				<a href="#" class="plus">증가</a>
	             			</div>
	        				</li>
	        			</ul>
	        		</dd>
	        		<dd class="rooms">
	        			<a href="#" class="btnRooms del2">삭제</a><!-- r_number addRoom2 일 경우 클릭 시 addRoom2 삭제, r_number addRoom2 addRoom3일 경우 클릭 시 addRoom3 삭제 -->
	        			<a href="#" class="btnRooms add2">추가</a><!-- 클릭 시 r_number에 class addRoom2 추가 -->
	        		</dd>
	        	</dl>
	        </div>
	        <!-- 객실 추가하기 -->
	        <div class="con room3">
	        	<dl>
	        		<dt>객실 3</dt>
	        		<dd>
	        			<ul>
	        				<li>
	        					<strong class="tit">성인</strong>
	             			<div class="number">
	             				<a href="#" class="minus">감소</a>
	             				<span class="num">0</span>
	             				<a href="#" class="plus">증가</a>
	             			</div>
	        				</li>
	        				<li>
	        					<strong class="tit">어린이</strong>
	             			<div class="number">
	             				<a href="#" class="minus">감소</a>
	             				<span class="num">0</span>
	             				<a href="#" class="plus">증가</a>
	             			</div>
	        				</li>
	        				<li>
	        					<strong class="tit">유아</strong>
	             			<div class="number">
	             				<a href="#" class="minus">감소</a>
	             				<span class="num">0</span>
	             				<a href="#" class="plus">증가</a>
	             			</div>
	        				</li>
	        			</ul>
	        		</dd>
	        		<dd class="rooms">
	        			<a href="#" class="btnRooms del3">삭제</a><!-- 클릭 시 r_number에 class addRoom3 삭제 -->
	        			<a href="#" class="btnRooms add3">추가</a><!-- 클릭 시 r_number에 class addRoom3 추가 -->
	        		</dd>
	        	</dl>
	        </div>
	        <!-- //객실 추가하기 -->
	        <ul class="notiList1">
	        	<li>※ 객실은 최대 3개까지 선택 가능합니다.<!-- 객실은 최대 3개까지 선택 가능합니다 --></li>
	        	<li>※ 어린이 : 37개월 이상 ~ 만 12세 이하 / 유아 : 36개월 이하</li>
	        </ul>
	      </div>
	      <div class="btnList">
	    		<a href="#none" class="btnSubmit"><img src="/images/ko/common/new_2019/reserve_step1_ok.gif" alt="확인"></a>
	    	</div>
	    </div>
	    <!--// 객실인원선택 -->
	</div>
<!-- //개선 : 호텔예약 -->
		
	</div>
</div>






	<script type="text/javascript">
	$(function () {
		if($("#mainImages img").size() == 1) {
			$("#mainImages a").remove();
		}
	});
	</script> 
		<script type="text/javascript" src="./js/siteoverlay2.js">	</script> 
		<script type="text/javascript">
		wn_so_pid(32);
	</script>

	
	<div class="foot hub_foot">		
	<!-- hubmain -->
	<div class="localBox">
		<div class="localBoxer">
			<div class="compInfo">
				<a href="main">
					<p class="logo" style="margin-top: 28px;">HON STAY</p>
				</a>
			</div>
			<div class="linkInfo">
				<ul class="Infolst">
					<li class="m1"><a href="#">호텔 소식</a></li>
					<li class="m2"><a href="#">갤러리</a></li>
					<li class="m3"><a href="#">고객문의</a></li>
				</ul>
			</div>
			<div class="snsNews">
				<dl class="sns">
					<dt class="dt">SNS</dt>
					<dd class="facebook"><a title="Facebook - popup" target="_blank" href="http://www.facebook.com/shillastay"><span>Facebook</span></a></dd>
					<dd class="instagram"><a title="Instagram - popup" target="_blank" href="https://www.instagram.com/shillastay_official"><span>instagram</span></a></dd>
					<!-- <dd class="googleplus"><a title="googleplus 바로가기" target="_blank" href="https://plus.google.com/+TheShillaHotelsResorts"><span>Googleplus</span></a></dd> -->
				</dl>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="linkBox">
			<ul>
				<li class="link1 first"><a href="#">About Shilla Stay</a></li>
				<li class="link2"><a href="#">개인정보취급방침</a></li>
				<li class="link3"><a href="#">이메일무단수집금지</a></li> 
				<li class="link4 "><a href="#">영상정보처리기기 운영방침</a>
				<li class="link5 last"><a href="#" target="_blank">윤리경영</a></li>
				</ul>
		</div>
		<div class="selectLang">
			<ul>
				<li class="en"><a href="#">English</a></li>
				<li class="ja"><a href="#">日本語</a></li>
				<li class="zh"><a href="#">简体中文</a></li>
				</ul>
		</div>
		<div class="adressBox">
			<p>혼 라이프 주식회사    서울특별시 영등포구 양산로 53  (우 : 07271)  TEL. 02-2230-0700   FAX. 02-2230-0726   사업자등록번호 201-86-40254   통신판매신고번호 영등포구0882호   대표이사 강노이</p>
		</div>
		<div class="copyright">COPYRIGHT &copy; HON LIFE CO., LTD. ALL RIGHTS RESERVED. </div>
	</div>




</div>

</div>
	<!-- N2S 스크립트 광고  수집용 Start --> 
<!-- N2S 스크립트 광고  수집용 End --> 
</body>
</html>