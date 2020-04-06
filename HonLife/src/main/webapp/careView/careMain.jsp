<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html >

<head>
	<meta charset="UTF-8" />

	<title>HON CARE</title>

	<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap&subset=korean" rel="stylesheet">
<script type='text/javascript' src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
	


	
<link rel='stylesheet' id='style-css'  href='careView/css/maincss/style.min.css' type='text/css' media='all' />





</head>

<body class="home page-template-default page page-id-410 cookies-not-set">

	<header class="transparent">

		<div class="header-content clearfix">

			<div class="col-left">
				<a class="logo" href="careMain" title="HON LIFE"></a>			
			</div>
		
			<div class="col-right">
				<c:if test="">
			    <a href="manager/main" class="regist" > 관리자페이지</a> 
			    	</c:if>
			    <br>
			<c:if test="${empty memberInfo }">
				<a  href="careJoin" class="regist" >회원가입</a>		
				 <br>	
				<a  href="carelogin"  class="regist"> 로그인</a>
			</c:if>
			<c:if test="${!empty memberInfo }">
				<a href = "care/logout" class="regist" >로그아웃</a>
			</c:if>
						
			</div>
				
             	<div class="nav-toggle">            		
             	<span class="nav-toggle-label" id="mainMenu">Menu</span>
					<span class="nav-toggle-lines">
						<span></span>
						<span></span>
						<span></span>
					</span>
				</div>
		

	

		</div> <!-- END .header-content -->

		<nav>
			<button class="close-nav minimal-btn">Close<svg class="icon stroke" width="18" height="18" xmlns="http://www.w3.org/2000/svg"><path d="M17.056 1L1 17.056m16.056 0L1 1" stroke="#b7c0c4" stroke-width="1.2" fill="none" fill-rule="evenodd"/></svg></button>


			<ul id="menu-header-nav-en" class="menu list-style-none">
				<li id="menu-item-4281" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4281"><a href="care/cleanAmountInfo">청소요금안내</a></li>
				<li id="menu-item-1803" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1803"><a href="care/laundryAmountInfo">세탁요금안내</a></li>
				<li id="menu-item-1804" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1804"><a href="care/cleanRev">청소예약</a></li>
				<li id="menu-item-1805" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1805"><a href="#">세탁예약</a></li>
				<li id="menu-item-1806" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1806"><a href="care/recruitment">모집요강</a></li>
				<li id="menu-item-1807" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1807"><a href="#">나의 예약내역</a></li>
</ul>
		
		
			<div class="nav-bottom">

				<div class="contact-info clearfix">

										<div class="contact-info-col">
						<span class="contact-info-col-title">Contact Us</span>

						<span>TEL. 02-2230-0700</span>

						<span>FAX. 02-2230-0726</span>
						
											</div>

					<div class="contact-info-col">
						<span class="contact-info-col-title">Office</span>
						<address>혼 라이프 주식회사 <br>  서울특별시 영등포구 양산로 53  (우 : 07271) </address>
					</div>
				</div>


			</div>
	 </nav>

	</header>


	


<section class="hero">

	<div class="hero-bg fixed" style="background-image:url(careView/images/main/caremainroom.jpg)"></div>

	<div class="section-content">

		<h1 style="font-size: 70px;">Hon Care</h1>
		<h2>Simple & Comfortable Life</h2>

		<a class="play-btn fancybox" href="care/cleanRev">청소 예약하기</a>
		<a class="play-btn fancybox" href="#">세탁 예약하기</a>

	</div>

</section>

<main>

	<section class="main-section-1">

		<div class="section-content animate-in-view clearfix">

			<div class="col-left text-col">
				<h2 style="font-size: 40px;">매니저가 되는 방법을 확인해보세요!</h2>
<p style="font-size: 25px;">등록을 위한 회비나 업무에 따른 수수료가 없습니다 </p>

<p>처음이라서 걱정이신 분도, 다른 일을 해보신분도 일의 선택부터 당당하게 일하는법까지! 
<br> 전문교육을 통해 든든하게 지원해드리겠습니다!</p>


				<a class="light-color elem-line-before" href="care/recruitment">모집요강</a>
			</div>

			<div class="col-right img-col">
				<img width="699" height="480" src="careView/images/main/clean.jpg" class="attachment-full size-full" alt="Vox Vertical Village entrance" sizes="(max-width: 699px) 100vw, 699px" />
							</div>

		</div>

	</section>

	<section class="main-section-2 animate-in-view">

		<img style=" width:100%; height:400px;" src="careView/images/main/caremainroom1.jpg" class="attachment-full size-full" alt="Vox Vertical Village features large terraces with lots of natural plants"  sizes="(max-width: 1100px) 100vw, 1440px" />
	</section>

	<section class="main-section-3">

		<div class="section-content animate-in-view clearfix">

			<div class="col-right text-col">
				<h2>세탁의 전문가들이 정성스럽게 <br>세탁해드립니다!</h2>
			
			<p>수백만 점을 세탁해도 고객은 단 한 점의 옷으로 평가하며 출혈경쟁의 원가부담을 값싼 노동력과 저급한 원료로 대체하지 않습니다.
			 품질과 직결되는 수고로운 일에 기교를 부리지 않습니다. 오직 고객과 세탁에 집중합니다.</p>
			 <p>품목별로 공정을 분리하고 세탁하여 전문성을 극대화했습니다.
			  만일 품질에 만족하지 못하시면 어떠한 추가비용 없이 재세탁 해드립니다. 이유있는 1등 서비스를 지금 경험해보세요.</p>
<p>&nbsp;</p>

				<a class="light-color elem-line-before" href="laundryAmountInfo" style="font-size: 20px;" >세탁요금 안내</a> <br>
				<a class="light-color elem-line-before" href="" style="font-size: 20px;">세탁예약 하기</a>
			</div>

			<div class="col-left img-collage clearfix">

				<div class="img-collage-elem-2">
				 <img style="width:585px; height:420px;" src="careView/images/main/clean1.jpg" class="attachment-full size-full" alt="Carefully selected prints and materials make Vox Vertical Village the perfect apartment for your family"  sizes="(max-width: 390px) 100vw, 390px" />				</div>

			</div>

		</div>

	</section>

	<section class="main-section-4 section-with-gradient">

		<div class="section-content animate-in-view clearfix">

			<div class="col-left text-col">
				<h2>믿고 맡길수있도록 꼼꼼한 검증을 청소매니저분들이 함께합니다.</h2>
<p style="font-size: 30px;"><b>표준화된 청소가이드 </b></p>
<p>주방,거실,방,화장실 각 영역별로 표준화된 청소가이드에 맞춰 깔끔하게 청소해드립니다! </p>
<p>&nbsp;</p>

				<a class="light-color elem-line-before" href="care/cleanRev" style="font-size: 20px;">청소요금 안내</a><br>
				<a class="light-color elem-line-before" href="" style="font-size: 20px;">청소예약하기</a>
			</div>

			<div class="col-right img-col">
				<img width="699" height="479" src="careView/images/main/clean2.jpg" class="attachment-full size-full" alt="Vox Vertical Village lounge for premium apartments in Timisoara"  sizes="(max-width: 699px) 100vw, 699px" />			</div>

		</div>

	</section>

	<section class="main-section-5 articles-section">

		<div class="section-content animate-in-view clearfix">

			<div class="intro">

				<h2 style="font-size: 30px;">후기를 확인해보세요!</h2>

				<a class="view-all light-color elem-line-after" href="" style="font-size: 20px;">후기게시판</a>

			</div>

			<div class="articles-container articles-layout-style-2 articles-carousel">

				
					
						<article>		
					<div class="article-thumb-gallery loading">

						<a href="https://www.voxverticalvillage.ro/en/stadiul-lucrarilor-februarie-2020/">

							<img width="290" height="194" src="careView/images/main/clean1.jpg" class="attachment-article-thumb-small size-article-thumb-small wp-post-image" alt=""  sizes="(max-width: 290px) 100vw, 290px" />							<span class="layer layer-1"></span>
							<span class="layer layer-2"></span>

							<span class="article-thumb-overlay">
								<span>확인!</span>
							</span>

						</a>

					</div>

				
			
	<span class="date light-color small-font" style="font-size: 20px;">작성날짜</span>

		<h4>		<a href="" style="font-size: 15px;">내용</a>
	</h4>
	<a class="more light-color elem-line-after" href="#">후기게시판</a>

</article>
 





					
				
			</div>

		</div>

	</section>

</main>


	<footer>

		<div class="footer-content clearfix">

			<div class="col-left">
				<div class="adressBox">
					<p><b>혼 라이프 주식회사 </b> <br>   서울특별시 영등포구 양산로 53  (우 : 07271) <br> TEL. 02-2230-0700 <br>  FAX. 02-2230-0726 <br> 사업자등록번호 201-86-40254   통신판매신고번호 영등포구0882호  <br>대표이사<b style="font-size: 20px;"> 강노이</b></p>
				</div>		
					<div class="copyright">COPYRIGHT &copy; HON LIFE CO., LTD. ALL RIGHTS RESERVED. </div>
			</div>

		
<button class="up-btn minimal-btn">Go Up <svg class="arrow fill" width="13" height="21" xmlns="http://www.w3.org/2000/svg"><path d="M6 6.5h1v14H6v-14zm.8-4.233L1.773 8.671.83 7.93 6.8.324l5.971 7.606-.943.741L6.8 2.267z" fill="#787F89" fill-rule="nonzero"/></svg></button>
		</div> <!-- END .footer-content -->

		<div class="bottom clearfix">

			<div class="col-left">

				<button class="up-btn minimal-btn">Go Up <svg class="arrow fill" width="13" height="21" xmlns="http://www.w3.org/2000/svg"><path d="M6 6.5h1v14H6v-14zm.8-4.233L1.773 8.671.83 7.93 6.8.324l5.971 7.606-.943.741L6.8 2.267z" fill="#787F89" fill-rule="nonzero"/></svg></button>

			</div>

			<div class="col-right">
				<p class="copyright" style="font-size: 35px;">©2020 HON CARE</p>
			</div>

		</div> <!-- END .bottom -->

	</footer>

	
	
	
	
	
	



<script type='text/javascript'>
/* <![CDATA[ */
var wpcf7 = {"apiSettings":{"root":"https:\/\/www.voxverticalvillage.ro\/en\/wp-json\/contact-form-7\/v1\/","namespace":"contact-form-7\/v1"}};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=5.1.6'></script>


<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-content/themes/voxverticalvillage/assets/js/slick.min.js'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var url = {"archive_ap":"https:\/\/www.voxverticalvillage.ro\/en\/residences\/"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-content/themes/voxverticalvillage/assets/js/scripts.min.js'></script>
<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-includes/js/wp-embed.min.js?ver=5.3.2'></script>

	</body>

</html>
