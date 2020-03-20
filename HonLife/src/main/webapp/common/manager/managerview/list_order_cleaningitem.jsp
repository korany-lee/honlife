<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="../../../common/manager/managerheader.jsp"/>
<main>
		<div class="col-left contact-info">

			<jsp:include page="../../../common/manager/sidemenu.jsp" />
		
			
		</div>

		<div class="col-right">
		<section class="animate-in-view">

	

			<div class="section-content clearfix">
			
			<span  style="font-size: 40px;"> 발주 리스트</span>
	        </div>


	<div class="table" style="position:relative;right: 20px;">

		<div class="table-head">

			<div class="table-head-content section-content clearfix">

				<div class="th"><span>카테고리</span></div>
				<div class="th"><span>종류</span></div>
				<div class="th"><span>요금</span></div>
				

			</div>

		</div>

		<div class="table-body">
			<div class="table-rows">		
			
						
						<div class="tr reserved">
							<div class="tr-content">
								<div class="tr-head">
									<div class="td">
										<span>의류</span>
									</div>
									<div class="td">
										<span>와이셔츠</span>
									</div>
									
									<div class="td">
										<span>1,500원</span>
										<span class="icon icon-plus"></span>
									</div>
								</div>

								<div class="tr-body">												
										<div class="col-left">										
											<div class="img-wrap">
												<img src="careView/images/laundry/dress/shirt.jpg" style="width: 300px;"alt="dressphoto" />
											</div>
										</div>				
									<div class="col-right" style="margin-right: 260px;">
										<div class="ap-description">
											<p style="font-size: 50px;">셔츠</p>											
											<p style="font-size: 30px;">1500원</p>
											</div>		
										<button class="minimal-btn close-tr elem-line-after">close</button>
									</div>
								</div>
							</div>
						</div>
						
						
						<div class="tr reserved">
							<div class="tr-content">
								<div class="tr-head">
									<div class="td">
										<span>의류</span>
									</div>
									<div class="td">
										<span>맨투맨, 후드티</span>
									</div>
									
									<div class="td">
										<span>3,900원</span>
										<span class="icon icon-plus"></span>
									</div>
								</div>

								<div class="tr-body">												
										<div class="col-left">										
											<div class="img-wrap">
												<img src="careView/images/laundry/dress/MtoM.jpg" style="width: 300px;"alt="dressphoto" />
											</div>
										</div>				
									<div class="col-right" style="margin-right: 260px;">
										<div class="ap-description">
											<p style="font-size: 50px;">맨투맨, 후드티</p>											
											<p style="font-size: 30px;">3,900</p>
											</div>		
										<button class="minimal-btn close-tr elem-line-after">close</button>
									</div>
								</div>
							</div>
						</div>
						
						
						<div class="tr reserved">
							<div class="tr-content">
								<div class="tr-head">
									<div class="td">
										<span>거실</span>
									</div>
									<div class="td">
										<span>쇼파 커버</span>
									</div>
									
									<div class="td">
										<span>8,000원</span>
										<span class="icon icon-plus"></span>
									</div>
								</div>

								<div class="tr-body">												
										<div class="col-left">										
											<div class="img-wrap">
												<img src="careView/images/laundry/living/cover.jpg" style="width: 300px;"alt="dressphoto" />
											</div>
										</div>				
									<div class="col-right" style="margin-right: 260px;">
										<div class="ap-description">
											<p style="font-size: 50px;">쇼파 커버</p>											
											<p style="font-size: 30px;">8,000원</p>
											</div>		
										<button class="minimal-btn close-tr elem-line-after">close</button>
									</div>
								</div>
							</div>
						</div>
						
						
						<div class="tr reserved">
							<div class="tr-content">
								<div class="tr-head">
									<div class="td">
										<span>거실</span>
									</div>
									<div class="td">
										<span>무릎담요</span>
									</div>
									
									<div class="td">
										<span>5,000원</span>
										<span class="icon icon-plus"></span>
									</div>
								</div>

								<div class="tr-body">												
										<div class="col-left">										
											<div class="img-wrap">
												<img src="careView/images/laundry/living/damyo.jpg" style="width: 300px;"alt="dressphoto" />
											</div>
										</div>				
									<div class="col-right" style="margin-right: 260px;">
										<div class="ap-description">
											<p style="font-size: 50px;">무릎담요</p>											
											<p style="font-size: 30px;">5,000원</p>
											</div>		
										<button class="minimal-btn close-tr elem-line-after">close</button>
									</div>
								</div>
							</div>
						</div>
						
						
						<div class="tr reserved">
							<div class="tr-content">
								<div class="tr-head">
									<div class="td">
										<span>침실</span>
									</div>
									<div class="td">
										<span>일반 토퍼</span>
									</div>
									
									<div class="td">
										<span>14,900원</span>
										<span class="icon icon-plus"></span>
									</div>
								</div>

								<div class="tr-body">												
										<div class="col-left">										
											<div class="img-wrap">
												<img src="careView/images/laundry/bedroom/topper.jpg" style="width: 300px;"alt="dressphoto" />
											</div>
										</div>				
									<div class="col-right" style="margin-right: 260px;">
										<div class="ap-description">
											<p style="font-size: 50px;">일반 토퍼</p>											
											<p style="font-size: 30px;">14,900원</p>
											</div>		
										<button class="minimal-btn close-tr elem-line-after">close</button>
									</div>
								</div>
							</div>
						</div>
						
						
						<div class="tr reserved">
							<div class="tr-content">
								<div class="tr-head">
									<div class="td">
										<span>침실</span>
									</div>
									<div class="td">
										<span>실크이불</span>
									</div>
									
									<div class="td">
										<span>24,900원</span>
										<span class="icon icon-plus"></span>
									</div>
								</div>

								<div class="tr-body">												
										<div class="col-left">										
											<div class="img-wrap">
												<img src="careView/images/laundry/bedroom/silk.jpg" style="width: 300px;"alt="dressphoto" />
											</div>
										</div>				
									<div class="col-right" style="margin-right: 260px;">
										<div class="ap-description">
											<p style="font-size: 50px;">실크이불</p>											
											<p style="font-size: 30px;">24,900원</p>
											</div>		
										<button class="minimal-btn close-tr elem-line-after">close</button>
									</div>
								</div>
							</div>
						</div>
						

					
					
					
					
			</div>

		</div>

	</div>

</section>
		
		</div>
		
			<div id="results" style="display:none;" ></div>

	<style id='wpcf7-wpcf7-5e6f0acff3915-inline-inline-css' type='text/css'>
#wpcf7-5e6f0acff3915 {display:none !important; visibility:hidden !important;}
</style>
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

</main>
</body>
</html>