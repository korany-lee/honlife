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
		<div id="header"><!-- ie8 이하 브라우져 띠배너 -->
<style type="text/css">
    .notice_ie8{display:none;width:100%;height:70px;padding-top:23px;background-color:#d5586f;font-weight:400;font-size:16px;font-family:'Noto Sans';color:#fff;letter-spacing:-0.4px;text-align:center}
    .notice_ie8 .inner_noticeie8{display:block;width:1050px;margin:0 auto}
    .notice_ie8 .emph{padding:0 16px 0 11px;background:url(https://res.kurly.com/pc/ico/1801/ico_arrow_noticeie8.png) no-repeat 100% 55%;font-family:'Noto Sans';font-weight:700}
</style>
<a target="_blank" href="https://support.microsoft.com/ko-kr/help/17621/internet-explorer-downloads" id="noticeIe8" class="notice_ie8">
    <span class="inner_noticeie8">
        고객님의 브라우저에서는 마켓컬리가 정상 동작하지 않습니다. 최신버전의 인터넷 익스플로러를 이용해주세요.    
        <span class="emph">설치하기</span>
    </span>
</a>
<script type="text/javascript">
if( (document.all && !document.querySelector) || (document.all && document.querySelector && !document.addEventListener) ){
    $('#noticeIe8').css({'display':'block'});
}
</script>
<!-- // ie8 이하 브라우져 띠배너 -->

<div class="bnr_header" id="top-message">
<!-- 상단 띠배너 -->
        <!-- 신규회원이벤트 -->
        <a href="http://www.kurly.com/shop/event/kurlyEvent.php?htmid=event/join/join_200226" id="eventLanding">
            지금 가입하고 정기배송 서비스 <b>10회 무료</b> 체험하세요<img src="https://res.kurly.com/pc/ico/1908/ico_arrow_fff_84x84.png" class="bnr_arr">
            <div class="bnr_top">
                <div class="inner_top_close">
                    <button id="top-message-close" class="btn_top_bnr">가입하고 혜택받기</button>
                </div>
            </div>
        </a>
        <script>
            // PROM-476 장차석 : GA) 이벤트 트래킹
            $('#eventLanding').on('click', function(){
                ga('send', 'event', 'click', 'general_header_sighup', location.href);
            });
        </script>
</div>

<script type="text/javascript">
    $(document).ready(function(){
        $("#top-message-close").on("click",function(){
            setCookie('top_msg_banner2','set_cookie',1)
        });
        if(getCookie('top_msg_banner2') == 'set_cookie'){
            $("#top-message").hide()
        }else{
            $("#top-message").show() ;
        }
    });

    function setCookie(cookieName, value, exdays){
        var exdate = new Date();
        exdate.setDate(exdate.getDate() + exdays);
        var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
        document.cookie = cookieName + "=" + cookieValue +"; path=/;"
    }

    function getCookie(cookieName) {
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
</script>


<!-- 탑 네비게이션 바 -->
<div id="userMenu">
    <user-menu-pc
            :login-check="loginCheck"
            :notification-item="notificationItem"
            :user-info="userInfo"
            :return-url="returnUrl"
    ></user-menu-pc>
</div>

<script src="shopView/js/usermenu_v1.js"></script>
<script>
$(document).ready(function(){
    
    userMenu.loginCheck = false;
});
</script>
<!-- // 탑 네비게이션 바 -->



<div id="headerLogo" class="layout-wrapper">
    <h1 class="logo">
        <a href="/" class="link_main">
            <span id="gnbLogoContainer"></span>
            <img src="shopView/images/honshop_main.png" alt="마켓컬리 로고">
        </a>
    </h1>
    <a href="/shop/board/view.php?id=notice&no=64" onclick="ga('send','event','etc','main_gif_btn_click');" class="bnr_delivery">
        <img src="https://res.kurly.com/pc/service/common/1908/delivery_190819.gif" alt="서울, 경기, 인천 샛별배송, 수도권 이외 지역 택배배송" >
    </a>
</div>

<div id="gnb">
    <h2 class="screen_out">메뉴</h2>
    <div id="gnbMenu" class="gnb_kurly">
        <div class="inner_gnbkurly">
            <div class="gnb_main">
                <ul class="gnb">
                    <li class="menu1"><a href="#none"><span class="ico"></span><span class="txt">전체 카테고리</span></a></li>
                    <li><a class="link new " href="/shop/goods/goods_list.php?category=038"><span class="txt">신상품</span></a></li>
                    <li><a class="link best " href="/shop/goods/goods_list.php?category=029"><span class="txt">베스트</span></a></li>
                    <li><a class="link bargain " href="/shop/goods/goods_list.php?list=sale"><span class="txt">대량상품</span></a></li>
                    <li class="lst"><a class="link event " href="/shop/goods/event.php?&"><span class="txt">이벤트</span></a></li>
                </ul>
                
                <div id="side_search" class="gnb_search">
                    <form action="/shop/goods/goods_search.php?&" onsubmit="return searchTracking(this)">
                        <input type=hidden name=searched value="Y">
                        <input type=hidden name=log value="1">
                        <input type=hidden name=skey value="all">
                        <input type="hidden" name="hid_pr_text" value="봄맞이 비타민 기획전" />
                        <input type="hidden" name="hid_link_url" value="https://www.kurly.com/shop/goods/goods_list.php?category=656" />
                        <input type="hidden" id="edit" name="edit" value=""/>
                                                <input name=sword type=text id="sword" class="inp_search" value="봄맞이 비타민 기획전" required label="검색어">

                        <input type=image src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png" class="btn_search">
                    </form>
                    <script>
                        // KM-1483 Amplitude 연동
                        function searchTracking(form){
                            var _searchTrackingData = {
                                selection_type : 'keyword',
                                keyword : $(form).find('[name = sword]').val(),
                                package_id : null,
                                package_name : null,
                                position : null,
                            }
                            KurlyTracker.setEventInfo(_searchTrackingData.selection_type);
                            KurlyTracker.setAction('select_search', _searchTrackingData).sendData();
                            return chkForm(form);
                        }
                    </script>
                </div>

                <div class="cart_count">
                    <div class="inner_cartcount">
                                                <a href="/shop/goods/goods_cart.php" class="btn_cart">
                            <img src="https://res.kurly.com/pc/ico/1908/ico_cart_x2_v2.png" alt="장바구니">
<span class="num realtime_cartcount" id="cart_item_count"></span>                        </a>
                    </div>

                    <div id="addMsgCart" class="msg_cart">
                        <span class="point"></span>
                        <div class="inner_msgcart">
                            <img src="https://res.kurly.com/images/common/bg_1_1.gif" alt="" class="thumb">
                            <p class="desc">
                                <span class="tit"></span>
                                <span class="txt">장바구니에 담겼습니다.</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="gnb_sub">
                <div class="inner_sub">
                    <ul class="gnb_menu" data-default="219" data-min="219" data-max="731"><!-- 배경사이즈 -->
                        <gnb-menu-pc v-for="(item, idx) in dataGnb"
                                     :main-menu="item"
                                     :sub-menu="item.categories"
                                     :sub-open="item.subOpen"
                                     :get-category-num="getCategoryNum"
                                     :key="'gnb'+idx"
                                     :idx="idx"
                        ></gnb-menu-pc>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="shopView/js/gnb_v1.js"></script>
<script type="text/javascript">
//
gnbMenu.update();

// 검색창 클래스 추가/삭제
$(document).ready(function(){
    $('#gnb .inp_search').focus(function(){
        $(this).addClass('focus');
    });
    $('#gnb .inp_search').blur(function(){
        $(this).removeClass('focus');
    });
    // 검색창기능 수정
    $('[name=sword]').on('keyup', function(){
        if($('#edit').length > 0) $('#edit').val('Y');
        var str = $(this).val();
        //var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
        var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%\\\=\(\'\"]/gi; // & 제거 B&O 검색어 이슈
        if(regExp.test(str)){
            var result = str.replace(regExp, "");
            $(this).val(result);
        }
    });
});
// 로고 클릭 이벤트
$('#header .link_main').on('click', function(e){
    e.preventDefault();
    KurlyTracker.setAction('select_main_logo').sendData();
    location.href = $(this).attr('href');
});

$('#gnb .gnb .link').on('click', function(e){
    e.preventDefault();
    var _event_name, _event_info;
    if($(this).hasClass('new')){
        _event_name = 'select_new_product_subtab';
    }else if($(this).hasClass('best')){
        _event_name = 'select_popular_product_subtab';
    }else if($(this).hasClass('bargain')){
        _event_name = 'select_bargain_subtab';
    }else if($(this).hasClass('event')){
        _event_name = 'select_event_list_subtab';
    }
    _event_info = $(this).attr('href');

    KurlyTracker.setEventInfo(_event_info).setAction(_event_name).sendData();
    location.href = _event_info;
});

// 장바구니 아이콘 클릭이벤트
$('#gnbMenu .btn_cart').on('click', function(e){
    e.preventDefault();
    KurlyTracker.setAction('select_cart').sendData();
    location.href = $(this).attr('href');
});
</script>



</div>

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

		<div id="footer">
			<div class="inner_footer">
				<div class="footer_cc">
					<h2 class="tit_cc">고객행복센터</h2>
					<div class="cc_view cc_call">
						<h3><span class="tit">1644-1107</span></h3>
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
						<li><a class="link" href="/shop/introduce/about_kurly.php">컬리소개</a></li><!-- 2018-09-06 어바웃컬리 장아름 수정 -->
						<li><a class="link" href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&showinfo=0&wmode=opaque&enablejsapi=1" onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">컬리소개영상</a></li>
						<li><a class="link" href="https://marketkurly.recruiter.co.kr/appsite/company/index" target="_blank">인재채용</a></li>
						<li><a class="link" href="/shop/service/agreement.php">이용약관</a></li>
						<li><a class="link emph" href="/shop/service/private.php">개인정보처리방침</a></li>
						<li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
					</ul>
					
					법인명 (상호) : 주식회사 컬리 <span class="bar">I</span> 사업자등록번호 : 261-81-23567 <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&apv_perm_no=" target="_blank" class="link">사업자정보 확인</a>
					<br>
					통신판매업 : 제 2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이지훈
					<br>
					주소 : 서울시 도산대로 16길 20, 이래빌딩 B1 ~ 4F <span class="bar">I</span> 대표이사 : 김슬아
					<br>
					입점문의 : <a href="https://forms.gle/NJNBNmtYeKQyX5Rn9" target="_blank" class="link">입점문의하기</a> <span class="bar">I</span> 제휴문의 : <a href="mailto:business@kurlycorp.com" class="link">business@kurlycorp.com</a>
					<br>
					채용문의 : <a href="mailto:recruit@kurlycorp.com" class="link">recruit@kurlycorp.com</a>
					<br>
					팩스: 070 - 7500 - 6098 <span class="bar">I</span> 이메일 : <a href="mailto:help@kurlycorp.com" class="link">help@kurlycorp.com</a>

					<em class="copy">&copy; KURLY CORP. ALL RIGHTS RESERVED</em>
				</div>
			</div>
			
			
		</div>
			
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