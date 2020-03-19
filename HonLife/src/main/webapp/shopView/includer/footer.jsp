<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="shopView/css/footer.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="footer">
			<div class="inner_footer">
				<div class="footer_cc">
					<h2 class="tit_cc">고객행복센터</h2>
					<div class="cc_view cc_call">
						<h3><span class="tit">1644-1100</span></h3>
						<dl class="list">
							<dt>365고객센터</dt>
							<dd>오전 7시 - 오후 7시</dd>
						</dl>
					</div>
					<div class="cc_view cc_kakao">
						<h3><a class="tit" href="#none">카카오톡 문의</a></h3>
						<script type="text/javascript">
							$('.cc_kakao .tit').on('click',function(e){
								e.preventDefault();
								$.ajax({
									type: "GET",
									url: apiDomain+'/v1/mypage/asks/confirm/kakao',
									dataType: 'json',
									success: function(data) {
										if(data.data.ok_button_action_url.indexOf('https://api.happytalk.io/') > -1){
											if(confirm('['+data.data.title+'] '+data.data.message)) window.open(data.data.ok_button_action_url,'_blank');
										}else{
											alert(data.data.title+'\n'+data.data.message);
										}
									}
								})
							});
						</script>
	
						<dl class="list">
							<dt>365고객센터</dt>
							<dd>오전 7시 - 오후 7시</dd>
						</dl>
					</div>
					<div class="cc_view cc_qna">
						<h3><a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="tit">1:1 문의</a></h3>
						<dl class="list">
							<dt>24시간 접수 가능</dt>
							<dd>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dd>
						</dl>
					</div>
				</div>
				<div class="company">
					<ul class="list">
						<li><a class="link" href="/shop/introduce/about_kurly.php">혼샵소개</a></li><!-- 2018-09-06 어바웃컬리 장아름 수정 -->
						<li><a class="link" href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&showinfo=0&wmode=opaque&enablejsapi=1" onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">혼샵소개영상</a></li>
						<li><a class="link" href="https://marketkurly.recruiter.co.kr/appsite/company/index" target="_blank">인재채용</a></li>
						<li><a class="link" href="/shop/service/agreement.php">이용약관</a></li>
						<li><a class="link emph" href="/shop/service/private.php">개인정보처리방침</a></li>
						<li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
					</ul>
					
					혼 라이프 주식회사 <span class="bar">I</span> 사업자등록번호 : 210-86-40254 <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&apv_perm_no=" target="_blank" class="link">사업자정보 확인</a>
					<br>
					통신판매업 : 제 2018-서울영등포-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이고은
					<br>
					주소 : 서울특별시 영등포구 양산로 53(우:07271) <span class="bar">I</span> 대표이사 : 강노이
					<br>
					입점문의 : <a href="https://forms.gle/NJNBNmtYeKQyX5Rn9" target="_blank" class="link">입점문의하기</a> <span class="bar">I</span> 제휴문의 : <a href="mailto:business@honlife.com" class="link">business@honlife.com</a>
					<br>
					채용문의 : <a href="mailto:recruit@honlife.com" class="link">recruit@honlife.com</a>
					<br>
					팩스: 070 - 7500 - 6098 <span class="bar">I</span> 이메일 : <a href="mailto:help@honlife.com" class="link">help@honlife.com</a>

					<em class="copy">&copy; HON LIFE CO.LTD. ALL RIGHTS RESERVED</em>
				</div>
			</div>
			
			
		</div>

</body>
</html>