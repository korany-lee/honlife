<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="euc-kr" />
	<meta name="title" content="HON SHOP :: 혼자서도 멋지게, 모두의 혼 #" />
	<meta name="description" content="모두가 사랑하는 장보기, 혼 샵! 대량으로 구매하고 매일 아침 문 앞에서 만나요!" />
	
<meta property="og:title" content="HON SHOP :: 혼자서도 멋지게, 모두의 혼 #" />
<meta property="og:description" content="모두가 사랑하는 장보기, 혼 샵! 대량으로 구매하고 매일 아침 문 앞에서 만나요!" />
<meta property="og:image" content="https://res.kurly.com/images/marketkurly/logo_sns_marketkurly_180810.png" />
<meta property="og:url" content="https://www.kurly.com/shop/main/index.php?" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="www.kurly.com" />
<meta name="keywords" content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식" />
<title>HON SHOP :: 혼자서도 멋지게, 모두의 혼 샵</title>

<script type="text/javascript" src="https://res.kurly.com/js/lib/jquery-1.10.2.min.js"></script>



<script>
var jwtToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjYXJ0X2lkIjoiYzM3ODA5NDVhNjNiYmVlOTY5OWU3YTg1ZTAwZTA4NzQiLCJpc19ndWVzdCI6dHJ1ZSwidXVpZCI6bnVsbCwic3ViIjpudWxsLCJpc3MiOiJodHRwOi8vbWt3ZWIuYXBpLmt1cmx5LnNlcnZpY2VzL3YxL3VzZXJzL2F1dGgvZ3Vlc3QiLCJpYXQiOjE1ODQzNDAzMjAsImV4cCI6MTU4NDM0MzkyMCwibmJmIjoxNTg0MzQwMzIwLCJqdGkiOiJjRzVGdVhzeVRJa25LM0JkIn0.SXYs564GVUsVhUFsa4VlmOM9Whs6Wv7R6lLhHUvLJtg';
var apiDomain = 'https://api.kurly.com';
var GD_ISMEMBER = !!Number('0');
var checkIsApp = true;// 해당스크립트관련으로 앱체크공용변수추가 생성.앱에서 불필요한 호출제거
</script>



<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?ver=202003161543"></script>
<script src="/shop/data/skin/designgj/thefarmers.js?ver=202003161543"></script>
<script src="/shop/data/skin/designgj/common.js?ver=202003161543"></script>
<script src="/shop/data/skin/designgj/polify.js?ver=202003161543"></script>
<script src="/shop/data/skin/designgj/ui_v2.js?ver=202003161543"></script>


<!-- ie9_axios -->
<script src="//res.kurly.com/js/vue/xdomain.min.js" slave="https://api.kurly.com/xdomain"></script>
<!-- Automatically provides/replaces `Promise` if missing or broken. -->
<script src="//res.kurly.com/js/vue/es6-promise.min.js"></script>
<script src="//res.kurly.com/js/vue/es6-promise.auto.min.js"></script>
<!-- json import -->
<script type="text/javascript" src="//res.kurly.com/js/vue/axios.min.js"></script>
<!-- vue.js -->
<!--<script src="https://res.kurly.com/js/vue/vue.js"></script>-->

<script src="//res.kurly.com/js/vue/vue.min.js"></script>
<script src="shopView/js/axios.js"></script>

<link rel="styleSheet" href="shopView/css/normalize.css?ver=202003161543">
<link rel="styleSheet" href="shopView/css/section1.css?ver=202003161543">
<link rel="styleSheet" href="shopView/css/common.css?ver=202003161543">
<link rel="styleSheet" href="shopView/css/shop.css">

<!-- 네이버 트레커 -->

			<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
			<script type="text/javascript" src="/shop/lib/js/naverCommonInflowScript.js?Path=main/index.php&amp;Referer=&amp;AccountID=s_4f41b5625072&amp;Inflow=" id="naver-common-inflow-script"></script>
			
<!-- // 네이버 트레커 -->

<!-- 카카오 픽셀 -->
<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
	kakaoPixel('4255794279014838741').pageView();
</script>
<!-- // 카카오 픽셀-->

<style>.async-hide { opacity: 0 !important} </style>
<script type="text/javascript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), 
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-90734988-1', 'auto');//'UA-90734988-1'
<!-- KM-201 장차석 : 구글 옵티마이즈&태그 메니저 -->
ga('require', 'GTM-MRW9DRV');
(function(a,s,y,n,c,h,i,d,e){s.className+=' '+y;h.start=1*new Date;
    h.end=i=function(){s.className=s.className.replace(RegExp(' ?'+y),'')};
    (a[n]=a[n]||[]).hide=h;setTimeout(function(){i();h.end=null},c);h.timeout=c;
})(window,document.documentElement,'async-hide','dataLayer',4000,{'GTM-MRW9DRV':true});

(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NJDKR7R');
<!-- End KM-201 장차석 : 구글 옵티마이즈&태그 메니저 -->

var uuidCheck = "";
var cookie_uuid = null;

function setCookieGa(cookieName, value){
	var exdays = 365;
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue +"; path=/;"
}

function getCookieGa(cookieName) {
	cookieName = cookieName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cookieName);
	var cookieValue = '';
	if(start != -1){
		start += cookieName.length;
		var end = cookieData.indexOf(';', start);
		if(end == -1)end = cookieData.length;
		cookieValue = cookieData.substring(start, end);
	}
	return unescape(cookieValue);
}

function deleteCookieGa(cookieName){
	var expireDate = new Date();
	//어제 날짜를 쿠키 소멸 날짜로 설정한다.
	expireDate.setDate( expireDate.getDate() - 1 );
	document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString() + "; path=/";
}


/* 로그인 */
if(uuidCheck !== "") {
	if( !getCookieGa('ga_uuid') ){
		setCookieGa('ga_uuid', uuidCheck);
	}else{
		if( getCookieGa('ga_uuid') !== uuidCheck){
			deleteCookieGa('ga_uuid');
			setCookieGa('ga_uuid', uuidCheck); /* 로그인 사용자쿠키 추가 */
		}
	}
	ga('set', 'userId', uuidCheck);
	ga('send', 'pageview',{'dimension1':  uuidCheck});
}else{
	ga('send', 'pageview');
}

//edge browser correspondence
var enableSelection = true;
$(function(){
    $('input, textarea').on('focus', function(){
        enableSelection = false;
    }).on('blur', function(){
        enableSelection = true;
    });
});
</script>

<!-- Facebook Pixel Code -->
<!-- End Facebook Pixel Code -->

<script>
(function(e,t){var n=e.amplitude||{_q:[],_iq:{}};var r=t.createElement("script")
;r.type="text/javascript"
;r.integrity="sha384-vYYnQ3LPdp/RkQjoKBTGSq0X5F73gXU3G2QopHaIfna0Ct1JRWzwrmEz115NzOta"
;r.crossOrigin="anonymous";r.async=true
;r.src="https://cdn.amplitude.com/libs/amplitude-5.8.0-min.gz.js"
;r.onload=function(){if(!e.amplitude.runQueuedFunctions){
	console.log("[Amplitude] Error: could not load SDK")}}
;var i=t.getElementsByTagName("script")[0];i.parentNode.insertBefore(r,i)
;function s(e,t){e.prototype[t]=function(){
	this._q.push([t].concat(Array.prototype.slice.call(arguments,0)));return this}}
	var o=function(){this._q=[];return this}
	;var a=["add","append","clearAll","prepend","set","setOnce","unset"]
	;for(var u=0;u<a.length;u++){s(o,a[u])}n.Identify=o;var c=function(){this._q=[]
			;return this}
	;var l=["setProductId","setQuantity","setPrice","setRevenueType","setEventProperties"]
	;for(var p=0;p<l.length;p++){s(c,l[p])}n.Revenue=c
	;var d=["init","logEvent","logRevenue","setUserId","setUserProperties","setOptOut","setVersionName","setDomain","setDeviceId", "enableTracking", "setGlobalUserProperties","identify","clearUserProperties","setGroup","logRevenueV2","regenerateDeviceId","groupIdentify","onInit","logEventWithTimestamp","logEventWithGroups","setSessionId","resetSessionId"]
	;function v(e){function t(t){e[t]=function(){
		e._q.push([t].concat(Array.prototype.slice.call(arguments,0)))}}
		for(var n=0;n<d.length;n++){t(d[n])}}v(n);n.getInstance=function(e){
		e=(!e||e.length===0?"$default_instance":e).toLowerCase()
		;if(!n._iq.hasOwnProperty(e)){n._iq[e]={_q:[]};v(n._iq[e])}return n._iq[e]}
	;e.amplitude=n})(window,document);

var amplitudeUid = uuidCheck;
if(amplitudeUid === null){
	amplitudeUid = 'c3780945a63bbee9699e7a85e00e0874';
}
var appResult = {
	is_release_build : false
};
<!---->
appResult.is_release_build = true;
<!---->
amplitude.getInstance().init("65bebb55595beb82e78d5d1ae808702c", amplitudeUid);
</script>
<!-- KM-1483 : amplitude 트래킹 -->
<script src="shopView/js/kurlytracker.js"></script>
	


</head>



<body class="main-index"  oncontextmenu="return false" ondragstart="return false" onselectstart="return !enableSelection">

<!-- KM-201 장차석 : Google Tag Manager (noscript) -->
<!-- End Google Tag Manager (noscript) -->


<div id="wrap" class="">
	<div id="pos_scroll"></div>

	<div id="container">
		<jsp:include page="includer/header.jsp"></jsp:include>
		<div id="main">
			<div id="content">

		    <!-- 퀵 메뉴 -->
			<div id="qnb" class="quick-navigation">


<!-- 이벤트 배너영역 -->
<div class="bnr_qnb" id="brnQuick"></div>
<script>
    var brnQuick = {
        nowTime : '1584340981205',
        update : function(){
            $.ajax({
                url : campaginUrl + 'pc/service/bnr_quick.html'
            }).done(function(result){
                $('#brnQuick').html(result);
            });    
        }
    }
    brnQuick.update();
</script>
<!-- // 이벤트 배너영역 -->

<div class="side_menu">
    <a href="/shop/event/kurlyEvent.php?htmid=event/lovers/lovers_200301" class="link_menu ">등급별 혜택</a>
    <a href="/shop/board/list.php?id=recipe" class="link_menu ">레시피</a>
    <a href="/shop/goods/goods_review_best.php" class="link_menu ">베스트 후기</a>
</div>
<div class="side_recent" style="display:none">
    <strong class="tit">최근 본 상품</strong>
    <div class="list_goods" data-height="209">
        <ul class="list"></ul>
    </div>
    <button type="button" class="btn btn_up off">최근 본 상품 위로 올리기</button>
    <button type="button" class="btn btn_down">최근 본 상품 아래로 내리기</button>
</div>
<script>
/**
 * 상품상세일때 현재 보고 있는 상품 담기. 상품URL & 상품이미지
 * 최종 저장 날짜로 부터 24시가 지날시 localStorage 삭제
 */
var getGoodsRecent = (function(){
    var i, len, getGoodsRecent, item, _nowTime = '1584340981205';

    _goodsRecent();
    function _goodsRecent(){
        if(localStorage.getItem('goodsRecent') === null){
            return false;
        }
        
        try{
            getGoodsRecent = JSON.parse(localStorage.getItem("goodsRecent"));
            len = getGoodsRecent.length;
            if(addDays(getGoodsRecent[len - 1].time, 1) < _nowTime){
                localStorage.removeItem('goodsRecent');
            }else{
                for(i = 0; i < len; i++){
                    item = '<li><a class="link_goods" href="/shop/goods/goods_view.php?goodsno=' + getGoodsRecent[i].no + '"><img src="' + getGoodsRecent[i].thumb + '" alt=""></a></li>';
                    $('.side_recent .list').append(item);
                }
                $('.side_recent').show();
            }
        } catch(e){
            console.log("JSON parse error from the Quick menu goods list!!!", e);
        }
    }

    function addDays(date, days){
        var result = new Date(date);
        result.setDate(result.getDate() + days);
        return result.getTime();
    }
    
    // return {
    // }
})();
</script>

			</div>


<!-- 메인공지팝업 -->
<div id="mainNotice">
    <div id="mainNoticePop">
        <pop-view-pc v-for="(popup, idx) in popList" v-if="!noData"
                     :popup-id="popupId"
                     :key="'popup'+idx"
                     :idx="idx"
                     :item="popup"
                     @popup-close="popupClose"
        ></pop-view-pc>
    </div>


</div>
<script src="shopView/js/main_notice_v1.js"></script>
<script>
    mainNotice.type='pc';
</script>
<!-- // 메인공지팝업 -->



<div id="kurlyMain" class="page_aticle page_main" v-cloak>
    <h2 class="screen_out">마켓컬리 메인</h2>
    <component-printer
            v-for="section in mainData"
            :section="section"
            :type="type"
            :component-name="typeToComponent(section.section_type)"
    ></component-printer>
</div>

<div class="bg_loading" id="bgLoading" style="display:block">
    <div class="loading_show"></div>
</div>

<script src="https://res.kurly.com/js/lib/moment.min.js"></script>
<script src="https://res.kurly.com/js/lib/jquery.bxslider.min.js"></script>
<script src="shopView/js/common_filter.js"></script>
<script src="shopView/js/main_v1.js"></script>

<script>
$(document).ready(function(){
    kurlyMain.type = 'pc';
    kurlyMain.update();

    // GNB Logo checking
    chkGNBLogo('pc');
});
</script>


</div><!-- #content -->
		</div><!-- #container -->


		<!-- 배송지역 검색 결과 -->
		<div id="layerDSR"><!-- layer delivery search result -->
			<div class="bg_dim"></div>
			
			<div class="in_layer">
				<div class="inner_layer layer_star">
					<strong class="dsr_result">샛별배송 지역입니다.</strong>
					<div class="ani">
						<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_kurly.png" src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="샛별배송 이미지">
					</div>
					<p class="dsr_desc">
						<strong class="emph">오늘 밤 11시 전</strong>까지 주문시<br>
						<strong class="emph">다음날 아침 7시</strong> 이전 도착합니다!
					</p>
					<p class="dsr_notice">샛별배송은 휴무 없이 매일 배송 합니다</p>
				</div>

				<div class="inner_layer layer_normal">
					<strong class="dsr_result">택배배송 지역입니다.</strong>
					<div class="ani">
						<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_car.png" src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="택배배송 이미지">
					</div>
					<p class="dsr_desc">
						<strong class="emph">밤 8시 전</strong>까지 주문시<br>
						<strong class="emph">다음날</strong> 도착합니다!
					</p>
					<p class="dsr_notice">일요일은 배송 휴무로 토요일에는 주문 불가</p>
				</div>

				<div class="inner_layer layer_none">
					<strong class="dsr_result">배송 불가 지역입니다.</strong>
					<div class="ani">
						<img data-src="https://res.kurly.com/mobile/img/1908/img_delivery_none.png" src="https://res.kurly.com/mobile/service/common/bg_1x1.png" alt="배송불가 이미지">
					</div>
					<p class="dsr_desc">
						<strong class="emph">도로명 주소</strong>로 검색하셨다면,<br>
						<strong class="emph">지번 주소(구 주소)</strong>로 다시 시도해 주세요.
					</p>
					<p class="dsr_notice">배송지역을 확장하도록 노력하겠습니다!</p>
				</div>

				<div class="layer_btn1">
					<button type="button" class="btn_close" onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();">확인</button>
				</div>
				<button type="button" class="layer_close" onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();"></button>
			</div>
		</div>

		<jsp:include page="includer/footer.jsp"></jsp:include>
			
	</div><!-- #main -->
</div><!-- #wrap -->


<!-- page Top -->
<a href="#top" id="pageTop">맨 위로가기</a>
<script>
	$(document).ready(function(){
		var pageTop = {
			$target : $('#pageTop'),
			$targetDefault : 0,
			$scrollTop : 0,
			$window : $(window),
			$windowHeight : 0,
			setTime : 500,
			saveHeight : 0,
			init:function(){
			},
			action:function(){
				var $self = this;
				$self.$windowHeight = parseInt($self.$window.height());
				$self.$window.on('scroll', function(){
					$self.$scrollTop = parseInt($self.$window.scrollTop());
					if($self.$scrollTop >= $self.$windowHeight){
						if(!$self.$target.hasClass('on')){
							$self.position();
							$self.$target.addClass('on');
							$self.showAction();
						}
					}else{
						if($self.$target.hasClass('on')){
							$self.position();
							$self.$target.removeClass('on');
							$self.hideAction();
						}
					}
				});
                
				$self.$target.on('click', function(e){
					e.preventDefault();
					$self.topAction();
				});
			},
			showAction:function(){
				var $self = this;
				$self.$target.stop().animate({
					opacity:1,
					bottom:$self.saveHeight
				}, $self.setTime);
			},
			hideAction:function(){
				var $self = this;
				$self.$target.stop().animate({
					opacity:0,
					bottom:-$self.$target.height()
				}, $self.setTime);
			},
			topAction:function(){
				var $self = this;
				$self.hideAction();
				$('html,body').animate({
					scrollTop:0
				}, $self.setTime);
			},
			position:function(){
				var $self = this;
				$self.saveHeight = 15;
				if($('#sectionView').length > 0){
					$self.saveHeight = 25;
				}
				if($('#branch-banner-iframe').length > 0 && parseInt( $('#branch-banner-iframe').css('bottom') ) > 0){
					$('#footer').addClass('bnr_app');
					$self.saveHeight += $('#branch-banner-iframe').height();
				}
			}
		}
		pageTop.action();
	});
</script>
<!-- // page Top -->


			
<script>
// 클릭인인경우(푸터에 있으나, 아직공용작업은 못함) => bgLoading 이부분 처리필요
var bodyScroll = {
	winScrollTop : 0,
	body : $('body'),
	gnb : $('#gnb'),
	bg : $('#bgLoading'),
	bodyFixed : function(){
		var $self = this;
		var gnbCheck = false;
		$self.gnb = $('#gnb');
		if($self.gnb.hasClass('gnb_stop')){
			gnbCheck = true;
		}
		$self.body = $('body');
		$self.bg = $('#bgLoading');
		$self.winScrollTop = $(window).scrollTop();
		$self.bg.show();
		$self.body.addClass('noBody').css({
			'top' : -$self.winScrollTop
		});
	},
	bodyDefault : function(type){
		var $self = this;
		$self.body.removeClass('noBody').removeAttr('style');
		$self.bg.hide();
		if(type === undefined){
			window.scrollTo(0, $self.winScrollTop);
		}
	}
}
</script>
			


<!-- 절대! 지우지마세요 : Start -->
<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank" style="display:none;width:100%;height:600px;"></iframe>
<script>
(function (theFrame) {
  theFrame.contentWindow.location.href = theFrame.src;
}(document.getElementById("ifrmHidden")));
</script>
<!-- 절대! 지우지마세요 : End -->

<!-- PROM-316 [Branch] 트래킹 -->
<script src="https://res.kurly.com/js/polifill/customeEvent.js"></script><!-- polifll -->
<script>
	window.addEventListener('load', function () {
		// KM-1238 branch
		(function(b,r,a,n,c,h,_,s,d,k){if(!b[n]||!b[n]._q){for(;s<_.length;)c(h,_[s++]);d=r.createElement(a);d.async=1;d.src="https://cdn.branch.io/branch-latest.min.js";k=r.getElementsByTagName(a)[0];k.parentNode.insertBefore(d,k);b[n]=h}})(window,document,"script","branch",function(b,r){b[r]=function(){b._q.push([r,arguments])}},{_q:[],_v:1},"addListener applyCode autoAppIndex banner closeBanner closeJourney creditHistory credits data deepview deepviewCta first getCode init link logout redeem referrals removeListener sendSMS setBranchViewData setIdentity track validateCode trackCommerceEvent logEvent disableTracking".split(" "), 0);
		branch.init('key_live_meOgzIdffiVWvdquf7Orkacksxa2LneN');
		// branch.init('key_test_joIkrHgomhL3qaEreXL5QdigzEn6Ucd4');
		branch.setIdentity(uuidCheck);
		branch.track("pageview");

		// branchReady
		var _eventBranchReady = new CustomEvent("branchReady", {
			detail:{ // 전달 할께 있으면 반드시 detail 오브젝트에 넣어야 함
				val:'1',
			}
		});
		document.dispatchEvent(_eventBranchReady);
		// END branchReady
	}, false);
</script>
<!-- // PROM-316 [Branch] 트래킹 -->

			
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"2982e7e5e8","applicationID":"467839462","transactionName":"MVBTZxFTDEJVAUFcWwgaZEEKHRFZWxIaWFUPWx5aDVYHSRoSXUU=","queueTime":0,"applicationTime":43,"atts":"HRdQEVlJH0w=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>