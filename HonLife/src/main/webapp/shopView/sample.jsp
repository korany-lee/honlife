
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="euc-kr" />
	<meta name="title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
	<meta name="description" content="모두가 사랑하는 장보기, 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
	
<meta property="og:title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
<meta property="og:description" content="모두가 사랑하는 장보기, 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:image" content="https://res.kurly.com/images/marketkurly/logo_sns_marketkurly_180810.png" />
<meta property="og:url" content="https://www.kurly.com/shop/goods/goods_cart.php?" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="www.kurly.com" />
<meta name="keywords" content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식" />
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge" /><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"2982e7e5e8",applicationID:"467839462"};window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var i=n[t]={exports:{}};e[t][0].call(i.exports,function(n){var i=e[t][1][n];return r(i||n)},i,i.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(e,n,t){function r(){}function i(e,n,t){return function(){return o(e,[u.now()].concat(f(arguments)),n?null:this,t),n?void 0:this}}var o=e("handle"),a=e(4),f=e(5),c=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",d=l+"ixn-";a(p,function(e,n){s[n]=i(l+n,!0,"api")}),s.addPageAction=i(l+"addPageAction",!0),s.setCurrentRouteName=i(l+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,i="function"==typeof n;return o(d+"tracer",[u.now(),e,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return n.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],t),e}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=i(d+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){var t=e.getEntries();t.forEach(function(e){"first-paint"===e.name?c("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&c("timing",["fcp",Math.floor(e.startTime)])})}function i(e,n){var t=e.getEntries();t.length>0&&c("lcp",[t[t.length-1]])}function o(e){if(e instanceof s&&!l){var n,t=Math.round(e.timeStamp);n=t>1e12?Date.now()-t:u.now()-t,l=!0,c("timing",["fi",t,{type:e.type,fid:n}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var a,f,c=e("handle"),u=e("loader"),s=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){a=new PerformanceObserver(r),f=new PerformanceObserver(i);try{a.observe({entryTypes:["paint"]}),f.observe({entryTypes:["largest-contentful-paint"]})}catch(p){}}if("addEventListener"in document){var l=!1,d=["click","keydown","mousedown","pointerdown","touchstart"];d.forEach(function(e){document.addEventListener(e,o,!1)})}}},{}],3:[function(e,n,t){function r(e,n){if(!i)return!1;if(e!==i)return!1;if(!n)return!0;if(!o)return!1;for(var t=o.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}n.exports={agent:i,version:o,match:r}},{}],4:[function(e,n,t){function r(e,n){var t=[],r="",o=0;for(r in e)i.call(e,r)&&(t[o]=n(r,e[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],5:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,i=t-n||0,o=Array(i<0?0:i);++r<i;)o[r]=e[n+r];return o}n.exports=r},{}],6:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function i(e){function n(e){return e&&e instanceof r?e:e?c(e,f,o):o()}function t(t,r,i,o){if(!l.aborted||o){e&&e(t,r,i);for(var a=n(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function d(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||i(t)}function w(e,n){u(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:d,addEventListener:d,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(l.aborted=!0,s=l.backlog={})}var f="nr@context",c=e("gos"),u=e(4),s={},p={},l=n.exports=i();l.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(i.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[n]=r,r}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){i.buffer([e],r),i.emit(e,n,t)}var i=e("ee").get("handle");n.exports=r,r.ee=i},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!x++){var e=E.info=NREUM.info,n=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();u(y,function(n,t){e[n]||(e[n]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=d.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function i(){"complete"===d.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=e("handle"),u=e(4),s=e("ee"),p=e(3),l=window,d=l.document,m="addEventListener",v="attachEvent",g=l.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:g,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1167.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=n.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),e(2),d[m]?(d[m]("DOMContentLoaded",o,!1),l[m]("load",r,!1)):(d[v]("onreadystatechange",i),l[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=e(6)},{}],"wrap-function":[function(e,n,t){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;n.exports=function(e,n){function t(e,n,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){l([u,"",[r,a,i],f])}s(n+"start",[r,a,i],f);try{return c=e.apply(a,r)}catch(p){throw s(n+"err",[r,a,p],f),p}finally{s(n+"end",[r,a,c],f)}}return r(e)?e:(n||(n=""),nrWrapper[a]=e,p(e,nrWrapper),nrWrapper)}function u(e,n,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<n.length;c++)f=n[c],a=e[f],r(a)||(e[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||n){var o=c;c=!0;try{e.emit(t,r,i,n)}catch(a){l([a,t,r,i])}c=o}}function p(e,n){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(e);return t.forEach(function(t){Object.defineProperty(n,t,{get:function(){return e[t]},set:function(n){return e[t]=n,n}})}),n}catch(r){l([r])}for(var i in e)f.call(e,i)&&(n[i]=e[i]);return n}function l(n){try{e.emit("internal-error",n)}catch(t){}}return e||(e=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<meta name="naver-site-verification" content="58ff7c242d41178131208256bfec0c2f93426a1d" />

<script type="text/javascript" src="https://res.kurly.com/js/lib/jquery-1.10.2.min.js"></script>

<link rel="shortcut icon" href="https://res.kurly.com/images/marketkurly/logo/favicon_v2.png" type="image/x-icon">
<link rel="apple-touch-icon" sizes="57x57" href="https://res.kurly.com/images/marketkurly/logo/ico_57.png"> 
<link rel="apple-touch-icon" sizes="60x60" href="https://res.kurly.com/images/marketkurly/logo/ico_60.png"> 
<link rel="apple-touch-icon" sizes="72x72" href="https://res.kurly.com/images/marketkurly/logo/ico_72.png"> 
<link rel="apple-touch-icon" sizes="76x76" href="https://res.kurly.com/images/marketkurly/logo/ico_76.png"> 
<link rel="apple-touch-icon" sizes="114x114" href="https://res.kurly.com/images/marketkurly/logo/ico_114.png"> 
<link rel="apple-touch-icon" sizes="120x120" href="https://res.kurly.com/images/marketkurly/logo/ico_120.png"> 
<link rel="apple-touch-icon" sizes="144x144" href="https://res.kurly.com/images/marketkurly/logo/ico_144.png"> 
<link rel="apple-touch-icon" sizes="152x152" href="https://res.kurly.com/images/marketkurly/logo/ico_152.png"> 
<link rel="apple-touch-icon" sizes="180x180" href="https://res.kurly.com/images/marketkurly/logo/ico_180.png"> 
<link rel="icon" type="image/png" sizes="32x32" href="https://res.kurly.com/images/marketkurly/logo/ico_32.png"> 
<link rel="icon" type="image/png" sizes="192x192" href="https://res.kurly.com/images/marketkurly/logo/ico_192.png"> 
<link rel="icon" type="image/png" sizes="16x16" href="https://res.kurly.com/images/marketkurly/logo/ico_16.png"> 
	

<script>
var jwtToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjYXJ0X2lkIjoiYmFkMThiNTlmYTJiNjI1MTg3MTc5YTJlZDk1MzU2NDEiLCJpc19ndWVzdCI6dHJ1ZSwidXVpZCI6bnVsbCwic3ViIjpudWxsLCJpc3MiOiJodHRwOi8vbWt3ZWIuYXBpLmt1cmx5LnNlcnZpY2VzL3YxL3VzZXJzL2F1dGgvZ3Vlc3QiLCJpYXQiOjE1ODYyMzQ0NzIsImV4cCI6MTU4NjIzODA3MiwibmJmIjoxNTg2MjM0NDcyLCJqdGkiOiJ3dExUakxNZ29TS3c5SFpLIn0.q6zmy2v92miPyOTVDpENQNFCF-e_UIt6zxuWyEac5Hw';
var apiDomain = 'https://api.kurly.com';
var GD_ISMEMBER = !!Number('0');
var checkIsApp = true;// 해당스크립트관련으로 앱체크공용변수추가 생성.앱에서 불필요한 호출제거
</script>



<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?ver=1.8.3"></script>
<script src="/shop/data/skin/designgj/thefarmers.js?ver=1.8.3"></script>
<script src="/shop/data/skin/designgj/common.js?ver=1.8.3"></script>
<script src="/shop/data/skin/designgj/polify.js?ver=1.8.3"></script>
<script src="/shop/data/skin/designgj/ui_v2.js?ver=1.8.3"></script>


<!-- ie9_axios -->
<script src="//res.kurly.com/js/vue/xdomain.min.js" slave="https://api.kurly.com/xdomain?ver=1"></script>
<!-- Automatically provides/replaces `Promise` if missing or broken. -->
<script src="//res.kurly.com/js/vue/es6-promise.min.js"></script>
<script src="//res.kurly.com/js/vue/es6-promise.auto.min.js"></script>
<!-- json import -->
<script type="text/javascript" src="//res.kurly.com/js/vue/axios.min.js"></script>
<!-- vue.js -->
<!--<script src="https://res.kurly.com/js/vue/vue.js"></script>-->

<script src="//res.kurly.com/js/vue/vue.min.js"></script>
<script src="/common_js/axios.js?ver=1.8.3"></script>

<link rel="styleSheet" href="/shop/data/skin/designgj/normalize.css?ver=1.8.3">
<link rel="styleSheet" href="/shop/data/skin/designgj/section1.css?ver=1.8.3">
<link rel="styleSheet" href="/shop/data/skin/designgj/common.css?ver=1.8.3">

<!-- 네이버 트레커 -->

			<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
			<script type="text/javascript" src="/shop/lib/js/naverCommonInflowScript.js?Path=goods/goods_cart.php&amp;Referer=&amp;AccountID=s_4f41b5625072&amp;Inflow=" id="naver-common-inflow-script"></script>
			
<!-- // 네이버 트레커 -->

<!-- 카카오 픽셀 -->
<!-- // 카카오 픽셀-->

<style>.async-hide { opacity: 0 !important} </style>
<script type="text/javascript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o), 
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-90734988-1', 'auto');//'UA-90734988-1'
<!-- KM-201 장차석 : 구글 옵티마이즈&태그 메니저 -->
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
	amplitudeUid = 'bad18b59fa2b625187179a2ed9535641';
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
<script src="/common_js/kurlytracker/kurlytracker.js?ver=1.8.3"></script>

<!-- KM-2251 Facebook Pixel 트래킹 -->
<script src="/common_js/kurlytracker/facebookPixel.js?ver=1.8.3"></script>


</head>



<body class="goods-goods_cart"  oncontextmenu="return false" ondragstart="return false" onselectstart="return !enableSelection">

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
        <a href="http://www.kurly.com/shop/event/kurlyEvent.php?htmid=event/join/join_200325" id="eventLanding">
            지금 가입하고 인기상품 <b>100원</b>에 받아가세요!<img src="https://res.kurly.com/pc/ico/1908/ico_arrow_fff_84x84.png" class="bnr_arr">
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

<script src="/common_js/usermenu_v1.js?ver=1.8.3"></script>
<script>
$(document).ready(function(){
    
    userMenu.loginCheck = false;
});
</script>
<!-- // 탑 네비게이션 바 -->

<style>
#headerLogo{position:relative;width:1050px;height:63px;margin:0 auto}
#headerLogo .bnr_delivery{position:absolute;left:17px;top:-28px;margin:auto;height:22px}
#headerLogo .bnr_delivery img{width:163px;height:22px}
#headerLogo .logo{position:absolute;left:50%;bottom:6px;width:200px;height:79px;margin-left:-100px}
#headerLogo .logo img{display:block;width:103px;height:79px;margin:0 auto}
#headerLogo .logo #gnbLogoContainer {margin:0 auto}
#gnb.gnb_stop{position:fixed;z-index:300;left:0;top:0;width:100%}
#gnb .gnb_kurly{position:relative;z-index:300;min-width:1050px;background-color:#fff;font-family:'Noto Sans';letter-spacing:-0.3px}
#gnb .gnb_kurly:after{content:"";position:absolute;z-index:299;left:0;top:56px;width:100%;height:9px;background:url(https://res.kurly.com/pc/service/common/1902/bg_1x9.png) repeat-x 0 100%}
#gnb .inner_gnbkurly{position:relative;width:1050px;height:56px;margin:0 auto}
/* 검색창 */
#gnb .gnb_search{position:absolute;right:45px;top:10px;width:238px}
#gnb .gnb_search .inp_search{width:238px;height:36px;padding:0 50px 0 20px;border:1px solid #f7f7f6;border-radius:18px;background-color:#f7f7f7;font-family: 'Noto Sans';font-weight:400;font-size:12px;color:#666;line-height:16px;outline:none}
#gnb .gnb_search .inp_search.focus{background-color:#fff;color:#333}
#gnb .gnb_search .btn_search{position:absolute;right:10px;top:3px;width:30px;height:30px}
/* 장바구니 */
#gnb .cart_count{position:absolute;right:-6px;top:10px}
#gnb .cart_count .inner_cartcount{text-align:center;font-weight:400}
#gnb .cart_count .num{display:none;position:absolute;left:19px;top:-1px;min-width:20px;height:20px;padding:0 5px;border:2px solid #fff;border-radius:10px;background-color:#5f0080;font-size:9px;color:#fff;line-height:15px;text-align:center;white-space:nowrap}
#gnb .cart_count img{display:block;width:36px;height:36px;margin:0 auto}
#gnb .cart_count .msg_cart{display:none;position:absolute;right:-7px;top:61px;width:348px;height:102px;border:1px solid #ddd;background-color:#fff;opacity:0}
#gnb .cart_count .inner_msgcart{display:block;overflow:hidden;padding:20px 0 0 20px}
#gnb .cart_count .msg_cart .thumb{float:left;width:46px;height:60px}
#gnb .cart_count .msg_cart .desc{float:left;width:240px;padding:8px 0 0 20px;font-weight:700;font-size:14px;line-height:21px}
#gnb .cart_count .msg_cart .tit{display:block;overflow:hidden;width:100%;color:#999;white-space:nowrap;text-overflow:ellipsis}
#gnb .cart_count .msg_cart .name{overflow:hidden;float:left;max-width:178px;text-overflow:ellipsis}
#gnb .cart_count .msg_cart .txt{display:block;padding-top:3px;color:#333}
#gnb .cart_count .msg_cart .point{position:absolute;right:13px;top:-14px;width:20px;height:14px;background:url(https://res.kurly.com/pc/ico/1903/ico_layer_point.png) no-repeat 0 0}
/* GNB메인 */
#gnb .gnb_main{overflow:hidden;width:1050px;margin:0 auto}
#gnb .gnb_main .gnb{float:left;width:100%}
#gnb .gnb_main .gnb li{float:left;background:url(https://res.kurly.com/pc/service/common/1902/line_1x11_c_ccc.png) no-repeat 100% 23px}
#gnb .gnb_main .gnb .lst{background:none}
#gnb .gnb_main .gnb a{overflow:hidden;float:left;height:55px;padding:16px 50px 0 48px;font-size:16px;color:#333;line-height:20px}
#gnb .gnb_main .gnb a .txt{font-weight:700}
#gnb .gnb_main .gnb a:hover,
#gnb .gnb_main .gnb a.on{font-weight:700;color:#5f0080}
#gnb .gnb_main .gnb a:hover .txt{border-bottom:1px solid #5f0080}
#gnb .gnb_main .menu1 a{padding-left:19px}
#gnb .gnb_main .menu1 .ico{float:left;width:16px;height:14px;margin:4px 14px 0 0;background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off.png) no-repeat}
#gnb .gnb_main .menu1 a.on .ico,
#gnb .gnb_main .menu1 a:hover .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all.png) no-repeat 0 0}
#gnb .gnb_main .menu1 a.on .txt,
#gnb .gnb_main .menu1 a:hover .txt,
#gnb .gnb_main .menu1 .txt{float:left;font-weight:700;border-bottom:0}
/* GNB서브 */
#gnb .gnb_sub{display:none;overflow:hidden;position:absolute;z-index:301;left:0;top:55px;width:213px;padding-top:1px}
#gnb .gnb_sub .inner_sub{width:100%;border:1px solid #ddd;background:url(https://res.kurly.com/pc/service/common/1908/bg_gnb_sub_v3.png) repeat-y 0 0}
#gnb .size_over{overflow-x:hidden;overflow-y:auto}
#gnb .gnb_sub .gnb_menu{width:219px}
#gnb .gnb_sub .gnb_menu li{width:100%;text-align:left}
#gnb .gnb_sub .gnb_menu li:first-child{padding-top:0}
#gnb .gnb_sub .menu{display:block;overflow:hidden;width:100%;height:40px;padding:8px 0 0 14px;cursor:pointer}
#gnb .gnb_sub .gnb_menu li:first-child .menu{height:39px;padding-top:7px}
#gnb .gnb_sub .current .menu{background:#f7f7f7}
#gnb .gnb_sub .current .txt,
#gnb .gnb_sub .menu.on.off:hover .txt,
#gnb .gnb_sub .menu.on .txt{font-weight:700;color:#5f0080}
#gnb .gnb_sub .ico{float:left;width:24px;height:24px}
#gnb .gnb_sub .ico img{width:24px;height:24px}
#gnb .gnb_sub .ico .ico_off{display:block}
#gnb .gnb_sub .ico .ico_on{display:none}
#gnb .gnb_sub .current .ico_off,
#gnb .gnb_sub .menu.on .ico_off,
#gnb .gnb_sub .menu:hover .ico_off{display:none}
#gnb .gnb_sub .current .ico_on,
#gnb .gnb_sub .menu.on .ico_on,
#gnb .gnb_sub .menu:hover .ico_on{display:block}
#gnb .gnb_sub .ico_arrow{display:none;float:right;width:16px;height:17px;padding:6px 9px 0 0}
#gnb .gnb_sub .ico_arrow img{width:7px;height:11px}
#gnb .gnb_sub .current .ico_arrow{display:block}
#gnb .gnb_sub .txt{float:left;padding:0 4px 0 10px;font-weight:400;font-size:14px;color:#333;line-height:22px;white-space:nowrap}
#gnb .gnb_sub .ico_new{overflow:hidden;float:left;width:14px;height:14px;margin-top:5px;background-position:50% 50%;background-repeat:no-repeat;background-size:14px 14px;font-size:0;line-height:0;text-indent:-9999px}
#gnb .gnb_sub .sub_menu{position:absolute;z-index:0;left:200px;top:0;width:248px;height:100%;padding:0 0 0 20px;background:url(https://res.kurly.com/images/common/bg_1_1.gif) repeat 0 0;opacity:0;transition:opacity 0.2s}
#gnb .gnb_sub .current .sub_menu{z-index:1;opacity:1;transition:opacity 0.5s}
#gnb .gnb_sub .sub_menu li:first-child{padding-top:11px}
#gnb .gnb_sub .sub_menu .sub{display:block;overflow:hidden;height:40px;padding-left:20px;font-size:14px;color:#333;line-height:18px;cursor:pointer}
#gnb .gnb_sub .sub_menu .sub:hover .name{border-bottom:1px solid #5f0080;font-weight:700;color:#5f0080}
#gnb .gnb_sub .sub_menu .sub.on{font-weight:700;color:#5f0080}
#gnb .gnb_sub .recommend{overflow:hidden;width:529px;padding:21px 0 0 40px}
#gnb .gnb_sub .recommend li{float:left;width:120px;height:130px;padding:0 10px 0 0}
#gnb .gnb_sub .recommend li:first-child{padding-top:0}
#gnb .gnb_sub .recommend .sub{display:block;overflow:hidden;width:120px;height:130px;padding:0;cursor:pointer}
#gnb .gnb_sub .recommend .thumb{display:block;width:110px;height:83.4px;margin-bottom:8px;background-position:50% 50%;background-repeat:no-repeat;background-size:cover}
#gnb .gnb_sub .recommend .thumb img{width:110px;height:84px}
#gnb .gnb_sub .recommend .name{font-size:14px;line-height:18px}
@media
only screen and (-webkit-min-device-pixel-ratio: 1.5),
only screen and (min-device-pixel-ratio: 1.5),
only screen and (min-resolution: 1.5dppx) {
    #gnb .gnb_sub .ico_new{background:url(https://res.kurly.com/pc/ico/1808/ico_new_gnb_16x16.png) no-repeat 0 0;background-size:8px 8px}
    #gnb .cart_count .msg_cart .point{background:url(https://res.kurly.com/pc/ico/1903/ico_layer_point_x2.png) no-repeat 0 0;background-size:20px 14px}
    #gnb .gnb_main .menu1 .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off_x2.png) no-repeat 0 0;background-size:16px 14px}
    #gnb .gnb_main .menu1 a.on .ico,
    #gnb .gnb_main .menu1 a:hover .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_x2.png) no-repeat 0 0;background-size:16px 14px}
}
</style>

<div id="headerLogo" class="layout-wrapper">
    <h1 class="logo">
        <a href="/" class="link_main">
            <span id="gnbLogoContainer"></span>
            <img src="https://res.kurly.com/images/marketkurly/logo/logo_x2.png" alt="마켓컬리 로고">
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
                    <li><a class="link bargain " href="/shop/goods/goods_list.php?list=sale"><span class="txt">알뜰쇼핑</span></a></li>
                    <li class="lst"><a class="link event " href="/shop/goods/event.php?&"><span class="txt">이벤트</span></a></li>
                </ul>
                
                <div id="side_search" class="gnb_search">
                    <form action="/shop/goods/goods_search.php?&" onsubmit="return searchTracking(this)">
                        <input type=hidden name=searched value="Y">
                        <input type=hidden name=log value="1">
                        <input type=hidden name=skey value="all">
                        <input type="hidden" name="hid_pr_text" value="" />
                        <input type="hidden" name="hid_link_url" value="" />
                        <input type="hidden" id="edit" name="edit" value=""/>
                                                <input name=sword type=text id="" class="inp_search" value="" required label="검색어">

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

<script src="/common_js/gnb_v1.js?ver=1.8.3"></script>
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



    <div class="layout-wrapper">
        <p class="goods-list-position"></p>
    </div>

    <!-- 서브페이지 위치 및 제목 작성 -->
    <div class="layout-page-header">
        <h2 class="layout-page-title">장바구니</h2>
        <div class="pg_sub_desc">
            <p>주문하실 상품명 및 수량을 정확하게 확인해 주세요.</p>
        </div>
    </div>
</div>

		<div id="main">
			<div id="content">

		    <!-- 퀵 메뉴 -->
			<div id="qnb" class="quick-navigation">


<style>
    #qnb{position:absolute;z-index:1;right:20px;top:70px;width:80px;font:normal 12px/16px "Noto Sans";color:#333;letter-spacing:-0.3px;transition:top 0.2s}
    .goods-goods_view #qnb{top:20px}
    /* 배너 */
    #qnb .bnr_qnb{padding-bottom:7px}
    #qnb .bnr_qnb .thumb{width:80px;height:120px;vertical-align:top}
    /* 메뉴 */    
    #qnb .side_menu{width:80px;border:1px solid #ddd;border-top:0 none;background-color:#fff}
    #qnb .link_menu{display:block;height:29px;padding-top:5px;border-top:1px solid #ddd;text-align:center}
    #qnb .link_menu:hover,
    #qnb .link_menu.on{color:#5f0080}
    /* 최근본상품 */
    #qnb .side_recent{position:relative;margin-top:6px;border:1px solid #ddd;background-color:#fff}
    #qnb .side_recent .tit{display:block;padding:22px 0 6px;text-align:center}
    #qnb .side_recent .list_goods{overflow:hidden;position:relative;width:60px;margin:0 auto}
    #qnb .side_recent .list{position:absolute;left:0;top:0}
    #qnb .side_recent .link_goods{display:block;overflow:hidden;width:60px;height:80px;padding:1px 0 2px}
    #qnb .side_recent .btn{display:block;overflow:hidden;width:100%;height:17px;border:0 none;font-size:0;line-height:0;text-indent:-9999px}
    
    #qnb .side_recent .btn_up{position:absolute;left:0;top:0;background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover.png) no-repeat 50% 50%}
    #qnb .side_recent .btn_up.off{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up.png) no-repeat 50% 50%}
    #qnb .side_recent .btn_down{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover.png) no-repeat 50% 0}
    #qnb .side_recent .btn_down.off{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down.png) no-repeat 50% 0}
    
    
    @media
    only screen and (-webkit-min-device-pixel-ratio: 1.5),
    only screen and (min-device-pixel-ratio: 1.5),
    only screen and (min-resolution: 1.5dppx) {
        #qnb .side_recent .btn_up{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover_x2.png);background-size:12px 18px}
        #qnb .side_recent .btn_down{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover_x2.png);background-size:12px 18px}
        #qnb .side_recent .btn_up.off{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_x2.png);background-size:12px 18px}
        #qnb .side_recent .btn_down.off{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_x2.png);background-size:12px 18px}
    }
    @media all and (max-width: 1250px){
        #qnb{display:none}
    }
</style>


<!-- 이벤트 배너영역 -->
<div class="bnr_qnb" id="brnQuick"></div>
<script>
    var brnQuick = {
        nowTime : '1586236510152',
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
    <a href="/shop/event/kurlyEvent.php?htmid=event/lovers/lovers_200401" class="link_menu ">등급별 혜택</a>
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
    var i, len, getGoodsRecent, item, _nowTime = '1586236510152';

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
<style type="text/css">
    /* 장바구니에서만 전용 */
    .layout-page-header{padding-bottom:10px}
</style>

<div class="user_form section_cart">
    <form id="viewCart" name="frmCart" method="post" action="/shop/order/order.php">
        <input type="hidden" name="mode" value="setOrder">
        <div class="tbl_comm cart_goods">
            <table class="tbl_comm tbl_header">
                <caption>장바구니 목록 제목</caption>
                <colgroup>
                    <col style="width:375px">
                    <col style="width:432px">
                    <col style="width:115px">
                    <col style="width:110px">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th id="thSelect">
                            <div class="all_select">
                                <label class="label_check" :class="{checked : allChecked}">
                                    <input type="checkbox" name="allCheck" class="ico_check" v-model="allChecked" @change="onClickAllChecked">
                                </label>
                                <span class="tit">
                                    전체선택 (<span class="num_count" v-text="checkedCount"></span>/<span class="num_total" v-text="totalCount"></span>)
                                </span>
                            </div>            
                        </th>
                        <th id="thInfo">상품 정보</th>
                        <th id="thCount">수량</th>
                        <th id="thCost">상품금액</th>
                        <th id="thDelete"><span class="screen_out">삭제선택</span></th>
                    </tr>
                </thead>
            </table>
            
            <div id="viewGoods">
                <template v-for="product in products" v-if="!noData">
                    <cart-item v-if="!product.is_package"
                               :bus="bus"
                               :parent-product="product"
                               :product="product"
                               :key="product.no"
                               :type="type"
                               :tag-name="product.tags.names"
                               :tag-type="product.tags.tagType"
                               @on-change-checked="onChangeChecked($event, product)"
                               @update-price="updatePrice($event, product, false)"
                               @on-delete="onDelete"
                    ></cart-item>
                    <cart-item v-if="product.is_package"
                               v-for="(childProduct,idx) in product.products"
                               :bus="bus"
                               :name="product.name"
                               :idx="idx"
                               :parent-product="product"
                               :product="childProduct"
                               :key="childProduct.no"
                               :type="type"
                               :tag-name="childProduct.tags.names"
                               :tag-type="childProduct.tags.tagType"
                               :is-last-product="idx===product.products.length-1"
                               @on-change-checked="onChangeChecked($event,childProduct)"
                               @update-price="updatePrice($event, product, idx)"
                               @on-delete="onDelete"
                    ></cart-item>
                </template>
                <div v-if="noData" class="no_data">장바구니에 담긴 상품이 없습니다.</div>
            </div>
        </div>

        <div class="all_select select_option">
            <label class="label_check"  :class="{checked : allChecked}">
                <input type="checkbox" name="allCheck" class="ico_check" v-model="allChecked" @change="onClickAllChecked">
            </label>
            <span class="tit">
                전체선택 (<span class="num_count" v-text="checkedCount"></span>/<span class="num_total" v-text="totalCount"></span>)
            </span>
            <button type="button" class="btn_delete" @click="onCheckItem('selectDel')">선택 삭제</button>
            <button type="button" class="btn_delete" @click="onCheckItem('soldout')">품절 상품 삭제</button>
        </div>

        <cart-result :original-sum-amount="originalSumAmount"
                     :goods-dc-amount="goodsDcAmount"
                     :class-dc-amount="classDcAmount"
                     :shipping-charges="shippingCharges"
                     :delivery-free-amout="deliveryFreeAmout"
                     :delivery-free-limit="deliveryFreeLimit"
                     :amount-money="amountMoney"
                     :footer-message="footerMessage"
                     :no-data="noData"
                     :total-count="totalCount"
                     :point-result="pointResult"
                     :login-check="loginCheck"
                     :member-dc="memberDc"
                     :checked-count="checkedCount"
                     :kurly-pass="kurlyPass"
                     :user-grade="userGrade"
                     :type="type"
                     @on-check-item="onCheckItem('submit')"
        ></cart-result>
        <p class="info_notice" v-html="headerMessage"></p>
    </form>
</div>

<div class="bg_loading" id="bgLoading">
    <div class="loading_show"></div>
</div>

<script src="/common_js/common_filter.js?ver=1.8.3"></script>
<script src="/common_js/cart_v2.js?ver=1.8.3"></script>
<script>
viewCart.userGrade = "";

// KM-1483 Amplitude
KurlyTracker.setScreenName('cart')
</script>
<script type="text/javascript">
viewCart.loginCheck=false;
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
					
					<ul class="list_sns">
						<li>
							<a href="https://instagram.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_instagram.png" alt="마켓컬리 인스타그램 바로가기"></a>
						</li>
						<li>
							<a href="https://www.facebook.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_fb.png" alt="마켓컬리 페이스북 바로가기"></a>
						</li>
						<li>
							<a href="http://blog.naver.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_blog.png" alt="마켓컬리 네이버블로그 바로가기"></a>
						</li>
						<li>
							<a href="https://m.post.naver.com/marketkurly" class="link_sns" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_naverpost.png" alt="마켓컬리 유튜브 바로가기"></a>
						</li>
						<li>
							<a href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg" class="link_sns lst" target="_blank"><img src="https://res.kurly.com/pc/ico/1810/ico_youtube.png" alt="마켓컬리 유튜브 바로가기"></a>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="footer_link">
				<div class="authentication">
					<a href="#none" onclick="popup('https://res.kurly.com/pc/img/1909/img_isms.jpg',550,700);return false;" class="mark" target="_blank">
						<img src="https://res.kurly.com/pc/ico/2001/logo_isms.png" alt="isms 로고" class="logo">
						<p class="txt">
							[인증범위] 마켓컬리 쇼핑몰 서비스 개발 · 운영<br>
							[유효기간] 2019.04.01 ~ 2022.03.31
						</p>
					</a>

					<a href="#none" onclick="popup('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=EP&certNum=2020-EP-N001',527,720);return false;" class="mark" target="_blank">
						<img src="https://res.kurly.com/pc/ico/2001/logo_eprivacyplus.png" alt="eprivacy plus 로고" class="logo">
						<p class="txt">
							개인정보보호 우수 웹사이트 ·<br>
							개인정보처리시스템 인증 (ePRIVACY PLUS)
						</p>
					</a>

					<a href="#none" onclick="popup('http://pgweb.uplus.co.kr/ms/escrow/s_escrowYn.do?mertid=go_thefarmers',460,550);return false;" class="mark lguplus" target="_blank">
						<img src="https://res.kurly.com/pc/ico/1810/logo_lguplus_v2.png?v=1" alt="LG U+로고" class="logo">
						<p class="txt">
							고객님의 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한<br>
							LG U+ 구매안전(에스크로) 서비스를 이용하실 수 있습니다.
						</p>
					</a>
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

<!-- FacebookPixel Code -->
<!-- End Facebook Pixel Code -->

			
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"2982e7e5e8","applicationID":"467839462","transactionName":"MVBTZxFTDEJVAUFcWwgaZEEKHRFZWxIaUlsJUUIcBF0NVUc9VlRGEhtBWxM=","queueTime":0,"applicationTime":30,"atts":"HRdQEVlJH0w=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>