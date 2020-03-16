<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="stayView/css/header.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="mainWrap WrapHub">

	<div class="head">
	<div class="header">
<h1 class="logo" style="padding-top: 8px;"><a href="main">HON STAY</a></h1>
	<!-- 로그인  -->
	<span class="loginArea hub" id="loginAreaSpan">
		<a href="header">로그인</a>
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
	</div>
	</div>
</body>
</html>