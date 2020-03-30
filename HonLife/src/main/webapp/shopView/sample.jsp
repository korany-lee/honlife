
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="euc-kr" />
	<meta name="title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
	<meta name="description" content="모두가 사랑하는 장보기, 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
	
<meta property="og:title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
<meta property="og:description" content="모두가 사랑하는 장보기, 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:image" content="https://res.kurly.com/images/marketkurly/logo_sns_marketkurly_180810.png" />
<meta property="og:url" content="https://www.kurly.com/shop/member/join.php?" />
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
var jwtToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjYXJ0X2lkIjoiNjM5OTczOTMwOWFiODM4OWQ3NjU1ZWE5OWU3ZGIwMjgiLCJpc19ndWVzdCI6dHJ1ZSwidXVpZCI6bnVsbCwic3ViIjpudWxsLCJpc3MiOiJodHRwOi8vbWt3ZWIuYXBpLmt1cmx5LnNlcnZpY2VzL3YxL3VzZXJzL2F1dGgvZ3Vlc3QiLCJpYXQiOjE1ODU1MjgyNDUsImV4cCI6MTU4NTUzMTg0NSwibmJmIjoxNTg1NTI4MjQ1LCJqdGkiOiJoanF6dDFpbllSNzF1cXJEIn0.7oG2x6g5spjFnu1p_D8DbE9f4kJOPZx0FvzjIZrDx94';
var apiDomain = 'https://api.kurly.com';
var GD_ISMEMBER = !!Number('0');
var checkIsApp = true;// 해당스크립트관련으로 앱체크공용변수추가 생성.앱에서 불필요한 호출제거
</script>



<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?ver=202003300931"></script>
<script src="/shop/data/skin/designgj/thefarmers.js?ver=202003300931"></script>
<script src="/shop/data/skin/designgj/common.js?ver=202003300931"></script>
<script src="/shop/data/skin/designgj/polify.js?ver=202003300931"></script>
<script src="/shop/data/skin/designgj/ui_v2.js?ver=202003300931"></script>


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
<script src="/common_js/axios.js?ver=202003300931"></script>

<link rel="styleSheet" href="/shop/data/skin/designgj/normalize.css?ver=202003300931">
<link rel="styleSheet" href="/shop/data/skin/designgj/section1.css?ver=202003300931">
<link rel="styleSheet" href="/shop/data/skin/designgj/common.css?ver=202003300931">

<!-- 네이버 트레커 -->

			<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
			<script type="text/javascript" src="/shop/lib/js/naverCommonInflowScript.js?Path=member/join.php&amp;Referer=&amp;AccountID=s_4f41b5625072&amp;Inflow=" id="naver-common-inflow-script"></script>
			
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

<!-- Facebook Pixel Code -->
<!-- KM-819 장차석 : alert 창이 열렸다가 자동으로 닫히는 버그발생으로 분기처리 -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','//connect.facebook.net/en_US/fbevents.js');

fbq('init', '526625657540055');
fbq('track', "PageView");
</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=526625657540055&ev=PageView&noscript=1"
/></noscript>
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
	amplitudeUid = '6399739309ab8389d7655ea99e7db028';
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
<script src="/common_js/kurlytracker/kurlytracker.js?ver=202003300931"></script>
	


</head>



<body class="member-join"  oncontextmenu="return false" ondragstart="return false" onselectstart="return !enableSelection">

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

<script src="/common_js/usermenu_v1.js?ver=202003300931"></script>
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

<script src="/common_js/gnb_v1.js?ver=202003300931"></script>
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
        nowTime : '1585528263684',
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
    var i, len, getGoodsRecent, item, _nowTime = '1585528263684';

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

<div class="page_aticle"><!-- Start indiv -->

<script src="/shop/data/skin/designgj/godo.password_strength.js" type="text/javascript"></script>
<script src="/common_js/join_v1.js?ver=202003300931"></script>

<style type="text/css">
	#content{margin-bottom:30px;padding-bottom:70px;background-color:#f9f9f9}
	.member_join{width:640px;margin:0 auto}
	.member_join .boardWrite{padding:9px 0 19px;border:1px solid #f3f2f4;background-color:#fff}
	.member_join .field_head.head_type2{padding:0 0 29px}
	.member_join .reg_agree{margin-top:10px;padding:29px 0 21px 29px;border:1px solid #f3f2f4;background-color:#fff}
</style>

<script language="javascript">
    function checkSubmit() {
        var oForm = document.getElementById("form");

        var rdo_jumin		= document.getElementById("RnCheckType_jumin");
        var rdo_ipin		= document.getElementById("RnCheckType_ipin");
        var rdo_hpauthDream = document.getElementById("RnCheckType_hpauthDream");

        if (rdo_ipin && rdo_ipin.checked)  {
            goIDCheckIpin();
        } else if (rdo_hpauthDream && rdo_hpauthDream.checked) {
            gohpauthDream();
        } else if (rdo_jumin && rdo_jumin.checked) {
            if(chkagreement(oForm)) {
                if (chkForm2(oForm)) {
                    oForm.submit();
                }
            }
        }else {
            if (chkagreement(oForm)) oForm.submit();
        }
    }
</script>

<div class="page_location">
	<a class="link" href="/">홈</a>
	>
	<strong class="current">회원가입</strong>
</div>
<div class="head_section head_join">
	<h2 class="tit">회원가입</h2>
</div>

<div class="member_join"><!-- 회원가입일때만 스타일 적용 -->


	
	
<div class="">
	<form id=form name=frmMember method=post action="/shop/member/indb.php" onsubmit="return chkForm2(this)">
		<input type=hidden name=mode value="joinMember">
		<input type="hidden" name="check_mobile" value="" />
		<input type="hidden" name="auth_finish_code" value="" />
		<input type=hidden name=rncheck value="">
		<input type=hidden name=dupeinfo value="">
		<input type=hidden name=pakey value="">
		<input type=hidden name=foreigner value="">
		<input type=hidden name=passwordSkin value="Y"><!-- 비밀번호 작성 규칙 보완 스킨패치 여부 -->

		<input type=hidden name=private2 value="">
		<input type=hidden name=private3 value="">
		<input type=hidden name='return_url' value="">

		<!-- 네이버체크아웃(회원연동) -->
		

		<div class="field_head head_type1">
			<h3 class="tit"><span class="screen_out">기본정보</span></h3>
			<p class="sub">*필수입력사항</p>	
		</div>
		
		<div class="boardWrite">
			<table class="tbl_comm">
				<tr>
					<td class="memberCols1">아이디*</td>
					<td class="memberCols2">
						<input type="text" name="m_id" value="" maxlength="16" required fld_esssential option=regId label="아이디" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
						<input type="hidden" name="chk_id" required fld_esssential label="아이디중복체크" value="">
						<a href="javascript:chkId()"><span class="bhs_button">중복확인</span></a>
						<p class="txt_guide">
							<span class="txt txt_case1">6자 이상의 영문 혹은 영문과 숫자를 조합</span>
							<span class="txt txt_case2">아이디 중복확인</span>
						</p>
					</td>
				</tr>
				<tr>
					<td class="memberCols1"> 비밀번호*</td>
					<td class="memberCols2">
						<input type=password name=password required fld_esssential option=regPass label="비밀번호" maxlength="16" class="reg_pw" placeholder="비밀번호를 입력해주세요">
						<p class="txt_guide">
							<span class="txt txt_case1">10자 이상 입력</span>
							<span class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span>
							<span class="txt txt_case3">동일한 숫자 3개 이상 연속 사용 불가</span>
						</p>
					</td>
				</tr>
				<tr class="member_pwd">
					<td class="memberCols1">비밀번호확인*</td>
					<td class="memberCols2">
						<input type=password name=password2 required fld_esssential option=regPass label="비밀번호" maxlength="16" class="confirm_pw" placeholder="비밀번호를 한번 더 입력해주세요">
						<p class="txt_guide">
							<span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
						</p>
					</td>
				</tr>
				<tr>
					<td class="memberCols1">이름*</td>
					<td class="memberCols2">
						<input type="text" name=name value="" required fld_esssential label="이름" placeholder="고객님의 이름을 입력해주세요">
					</td>
				</tr>

				<tr>
					<td class="memberCols1">  이메일*</td>
					<td class="memberCols2">
						<input type="text" name=email value="" size=30 required fld_esssential option=regEmail label="이메일"  placeholder="예: marketkurly@kurly.com">
<input type=hidden name=chk_email required fld_esssential label="이메일중복체크">						<a href="javascript:void(0)" onClick="chkEmail()"><span class="bhs_button">이메일 중복확인</span></a>
					</td>
				</tr>
				

				<tr class="mobile">
					<td class="memberCols1">  휴대폰*</td>
					<td class="memberCols2">
						<div class="phone_num">
							<input type="text" value="" pattern="[0-9]*" name="mobileInp" placeholder="숫자만 입력해주세요" class="inp"  >
							<input type="hidden" name="mobile[]" id="mobile0" value="" required fld_esssential option=regNum label="휴대폰" >
							<input type="hidden" name="mobile[]" id="mobile1" value="" required fld_esssential option=regNum label="휴대폰" >
							<input type="hidden" name="mobile[]" id="mobile2" value="" required fld_esssential option=regNum label="휴대폰" >
							<a href="javascript:void(0)"  id="btn_cert" ><span class="bhs_button disabled">인증번호받기</span></a>
						</div>
						<div class="cert_confirm_row">
							<input type="text" name="auth_code" id="auth_code" value='' size='' maxlength='6' label="인증번호 확인"  disabled class="inp_confirm" >
							<a href="javascript:void(0)" id="btn_cert_confirm" return false><span class="bhs_button disabled">인증번호 확인</span></a>
							<p id="countdown" class="count_down"></p>
						</div>
						<p class="txt_guide">
							<span class="txt txt_case1"></span>
						</p>

					</td>
				</tr>

				<tr>
					<td class="memberCols1">배송 주소</td>
					<td class="memberCols2">
						<div class="field_address">
							<input type="hidden" name="zonecode" id="zonecode" size="5" readonly value="" label="주소를 선택해 주세요.">
							<input type="hidden" name=zipcode[] id="zipcode0" size=3 readonly value="" label="주소를 선택해 주세요.">
							<input type="hidden" name=zipcode[] id="zipcode1" size=3 readonly value="" label="주소를 선택해 주세요.">
							<input type="hidden" name=address id="address" readonly value="" label="주소를 선택해 주세요.">
							<input type="hidden" name="road_address" id="road_address" value="">
							<a href="javascript:void(0)" id="btnAddressSearch" onClick="javascript:popup('../proc/popup_address.php',530,500)">
								<span class="bhs_button">
									<span class="ico"></span>
									<span class="txt">주소 검색</span>
								</span>
							</a>
							<p class="txt_guide">
								<span class="txt txt_case1">배송가능여부를 확인할 수 있습니다.</span>
							</p>
							<div id="addressView">
								<div class="view_address"></div>
							</div>
						</div>
						
						<div class="field_address lst">
							<input type="text" name="address_sub" id="address_sub" value="" onkeyup="SameAddressSub(this)" oninput="SameAddressSub(this)" label="세부주소" placeholder="세부주소를 입력해주세요." class="byteTotext">
							<p class="txt_guide">
								<span class="txt">
									<span id="div_road_address"></span>
									<span id="div_road_address_sub"></span>
								</span>	
							</p>

							<div class="bytes_wrapper chk_bytes">
								<span class="bytes">0</span>자 / <span class="limit">50</span>자
							</div>
						</div>
					</td>
				</tr>


				<tr class="select_sex">
					<td class="memberCols1">성별</td>
					<td class="memberCols2">
						<div class="group_radio">
							<label class="label_radio">
								<input type=radio name=sex_option label="성별" value="m">
								<span class="text_position">남자</span>
							</label>
							<label class="label_radio">
								<input type=radio name=sex_option label="성별" value="w">
								<span class="text_position">여자</span>
							</label>
							<label class="label_radio">
								<input type=radio name=sex_option label="성별" value="n">
								<span class="text_position">선택안함</span>
							</label>
							<input type="hidden" type=radio name=sex label="성별" value="">
						</div>
					</td>
				</tr>

				<tr class="birth field_birth">
					<td class="memberCols1">생년월일</td>
					<td class="memberCols2">
						<div class="birth_day">
							<input type="text" name=birth_year id="birth_year" pattern="[0-9]*" value="" label="생년월일" size=4 maxlength=4 placeholder="YYYY">
							<span class="bar"><span>/</span></span>
							<input type="text" name=birth[] id="birth_month" pattern="[0-9]*" value="" label="생년월일" size=2 maxlength=2 placeholder="MM">
							<span class="bar"><span>/</span></span>
							<input type="text" name=birth[] id="birth_day" pattern="[0-9]*"value="" label="생년월일" size=2 maxlength=2 placeholder="DD">
						</div>
						<p class="txt_guide">
							<span class="txt bad"></span>
						</p>
						
					</td>
				</tr>
				
				<tr class="route" id="selectRecommend">
					<td class="memberCols1">추가입력 사항</td>
					<td class="memberCols2">
						<div class="group_radio">
							<span class="radio_wrapper">
								<label id="labelRecomm" class="label_radio">
									<input type="radio" name="recommendId" label="추천인아이디">
									<span class="text_position">추천인 아이디</span>
								</label>
							</span>
							<span class="radio_wrapper">
								<label class="label_radio">
									<input type="radio" name="eventName" label="참여이벤트명">
									<span class="text_position">참여 이벤트명</span>
								</label>
							</span>
						</div>
						<div class="input_wrapper">
							<input type="text" name="recommid" value="" class="inp" placeholder="추천인 아이디를 입력해주세요.">
							<p class="txt">- 추천인 아이디와 참여 이벤트명 중 하나만 선택 가능합니다.</p>
							<p class="txt">- 가입 이후, 추가 수정이 불가합니다. 대소문자 및 띄어쓰기에 유의해주세요.</p>
						</div>
					</td>
				</tr>


			</table>

		</div>

		<div class="reg_agree">
			<div class="bg_dim"></div>
			<div class="field_head head_type2">
				<h3 class="tit">이용약관동의*</h3>
				<p class="sub">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
			</div>
				<div class="check">
					<label class="inp_check check_agree label_all_check">
						<input type=checkbox class="styled-checkbox-black" name="agree_allcheck">
						<span class="txt_checkbox">전체동의</span>
					</label>
				</div>
				<div class="check_view">
					<label class="select_check check_agree">
						<input type="checkbox" value="" name="agree" required class="styled-checkbox-black">
						<span class="txt_checkbox">이용약관 <span class="sub">(필수)</span></span>
					</label>
					<a href="#none" class="link btn_link btn_agreement">약관보기 </a>
				</div>
				<!--레이어-->
				<div class="layer layer_agreement">
					<div class="inner_layer">
						<h4 class="tit_layer">이용약관</h4>
						<div class="box_tbl" id="serviceView"></div>
						<script>
                            var serviceView = new Vue({
                                el: '#serviceView',
                                data: {
                                    pageUrl : campaginUrl + 'pc/service/agreement.html',
                                    storagetObj : null,
                                    eventStart : false, // 딱 한번만실행
                                },
                                methods: {
                                    update:function(){
                                        var $self = this;
                                        $.ajax({
                                            url : $self.pageUrl
                                        }).done(function(result){
                                            $('#serviceView').html(result);
                                            $self.storagetObj = JSON.parse(sessionStorage.getItem("agreement"));
                                            if(!$self.eventStart){
                                                $self.eventStart = true;
                                                $self.pageUrl = campaginUrl + 'pc/service/' + $self.storagetObj[$self.storagetObj.length-1].name + '.html'
                                                $self.update();
                                            }
                                        });
                                    }
                                }
                            });
                            serviceView.update();
						</script>
						<button type="button" class="btn_ok">확인</button>
						<button type="button" class="btn_close"><span class="screen_out">레이어 닫기</span></button>
					</div>
				</div>
				<!--//레이어-->
				<div class="check_view">
					<label class="select_check check_agree">
						<input type="checkbox" id="private1" name="private1" value="" required class="styled-checkbox-black">
						<span class="txt_checkbox">개인정보처리방침 <span class="sub">(필수)</span></span>
					</label>
					<a href="#none" class="link btn_link btn_link2 btn_essential">약관보기 </a>
				</div>
				<!--레이어-->
				<div class="layer layer_essential">
					<div class="inner_layer">
						<h4 class="tit_layer">개인정보 수집·이용 동의 (필수)</h4>
						<div class="box_tbl">
							<table cellpadding="0" cellspacing="0" width="100%">
								<caption class="screen_out">개인정보 수집·이용 동의 (필수)</caption>
								<colgroup>
									<col width="45%">
									<col width="30%">
									<col width="25%">
								</colgroup>
								<thead>
									<tr>
										<th scope="row">수집 목적</th>
										<th scope="row">수집 항목</th>
										<th scope="row">보유 기간</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>이용자 식별 및 본인여부</td>
										<td rowspan="3">아이디, 비밀번호, 이름, 휴대폰번호, 이메일</td>
										<td rowspan="3">회원 탈퇴 후 30일 내</td>
									</tr>
									<tr>
										<td>계약 이행 및 약관변경 등의 고지를 위한 연락, 본인의사 확인 및 민원 등의 고객 고충 처리</td>
									</tr><tr>
										<td>부정 이용 방지, 비인가 사용방지 및 서비스 제공 및 계약의 이행</td>
									</tr>
								</tbody>
							</table>
						</div>
						<p class="txt_service">* 서비스 제공을 위해서 필요한 최소한의 개인정보이므로 동의를 해 주셔야 서비스를 이용하실 수 있습니다.</p>
						<button type="button" class="btn_ok">확인</button>
						<button type="button" class="btn_close"><span class="screen_out">레이어 닫기</span></button>
					</div>
				</div>
				<!--//레이어-->
				<div class="check_view">
					<input type="hidden" id="consentHidden" name="consent[1]" value="">
					<label class="select_check check_agree">
						<input type="checkbox" name="hiddenCheck" class="styled-checkbox-black">
						<span class="txt_checkbox no_pd">개인정보처리방침 <span class="sub">(선택)</span></span>
					</label>
					<a href="#none" class="link btn_link btn_link3 btn_choice">약관보기 </a>
				</div>
				<!--레이어-->
				<div class="layer layer_choice">
					<div class="inner_layer">
						<h4 class="tit_layer">개인정보 수집·이용 동의 (선택)</h4>
						<div class="box_tbl">
							<table cellpadding="0" cellspacing="0" width="100%">
								<caption class="screen_out">개인정보의 수집 및 이용목적</caption>
								<colgroup>
									<col width="40%">
									<col width="25%">
									<col width="35%">
								</colgroup>
								<thead>
								<tr>
									<th scope="row">수집 목적</th>
									<th scope="row">수집 항목</th>
									<th scope="row">보유 기간</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>맞춤형 회원 서비스 제공</td>
									<td>성별, 생년월일</td>
									<td>회원 탈퇴 후 30일 내</td>
								</tr>
								<tr>
									<td>거점 기반 서비스 제공</td>
									<td>주소</td>
									<td>회원 탈퇴 후 30일 내</td>
								</tr>
								</tbody>
							</table>
						</div>
						<p class="txt_service">※ 동의를 거부하시는 경우에도 서비스는 이용하실 수 있습니다.</p>
						<button type="button" class="btn_ok">확인</button>
						<button type="button" class="btn_close"><span class="screen_out">레이어 닫기</span></button>
					</div>
				</div>
				<!--//레이어-->

			<div class="check_view">
				<label class="select_check check_agree ">
					<input type="checkbox" name="marketing" class="styled-checkbox-black" >
					<span class="txt_checkbox no_pd">무료배송, 할인쿠폰 등 혜택/정보 수신 <span class="sub">(선택)</span></span>
				</label>
				<div class="check_event email_sms">
					<label class="select_check check_agree ">
						<input type="checkbox" name="sms" class="styled-checkbox-black" value="n">
						<span class="txt_checkbox no_pd">SMS</span>
					</label>
					<label class="select_check check_agree ">
						<input type="checkbox" name="mailling" class="styled-checkbox-black" value="n">
						<span class="txt_checkbox no_pd">이메일</span>
					</label>
				</div>
				<div class="sms_info">
					<img src="https://res.kurly.com/pc/img/1901/img_event_check_x2.png" alt="동의 시 한 달간 [5%적립]과 [무료배송](첫 구매 후 1주일 내 적용)">
				</div>
			</div>

			<div class="check_view">
				<label class="select_check check_agree check_fourteen">
					<input type="checkbox" value="n" name="fourteen_chk" required class="styled-checkbox-black">
					<span class="txt_checkbox">본인은 만 14세 이상입니다. <span class="sub">(필수)</span></span>
				</label>
			</div>
		</div>		

		<div id="avoidDbl">
			<button type="submit" class="btn_submit">가입하기</button>
		</div>
	</form>
</div>

</div>


<iframe id="ifrmRnCheck" name="ifrmRnCheck" style="display:none;"></iframe>
<iframe id="ifrmHpauth" name="ifrmHpauth" style="display:none;"></iframe>
<script src="/shop/data/skin/designgj/js/pw_validate.js?ver=202003300931"></script>
<script src="/shop/data/skin/designgj/js/delivery_address.js?ver=202003300931"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('input[name=name]').on('keyup keydown blur', function(){
	        preventSpecialChars($(this), 'write');	
        });
            
        $("#avoidDbl .btn_submit").click(function(){
            $("input[type='text']").each(function(){
                var input_txt = $(this).val();
                var input_trim_txt = input_txt.replace(/(^\s*)|(\s*$)/gi, "");
                $(this).val(input_trim_txt);
            })
        });

        // PRDPJ-159 장차석 : 사용자 아이디와 추처인 아이디 중복 안되도록 처리
		var $nameRecommid = $('[name=recommid]');
		var $nameMId = $('[name=m_id]');
		$($nameRecommid , $nameMId).blur(function(){
			if ($.trim($nameMId.val()) !== '' && $.trim($nameRecommid.val()) !== '' &&
					($nameRecommid.val() === $nameMId.attr('data-id') || $nameRecommid.val() === $nameMId.val())) {
				$nameRecommid.val('');
				alert('추천인 아이디에는 본인 아이디를 입력할 수 없습니다.');
			}
		});

        //개인정보처리방침
        function getAgreement() {
           jQuery.ajax({
                url: "/shop/service/private.php",
                cache: false,
                dataType: "html",
                type: "GET",
                contentType: 'text/html; charset=euc-kr',
                success: function(data) {
                    jQuery(".agreement_box").html( jQuery(data).find('.hundred'));
                }
            });
        }
        getAgreement();

        // 레이어 열기,닫기
        $('.check_view .btn_link').on('click',function(e){
            e.preventDefault();
            var $layer1 = $(this).is('.btn_agreement');
            var $layer2 = $(this).is('.btn_essential');
            var $layer3 = $(this).is('.btn_choice');
            var bgDimd = $('.bg_dim');
            var $target = $(this).parents('.reg_agree').find('.layer');

            var $agreement = $(this).parents('.reg_agree').find('.layer_agreement');
            var $essential = $(this).parents('.reg_agree').find('.layer_essential');
            var $choice = $(this).parents('.reg_agree').find('.layer_choice');
            var topResult = null;

            if($layer1 == true){
                bgDimd.show();
                $agreement.show();
                $essential.hide();
                $choice.hide();
                topResult = $agreement;
            }else if($layer2 == true){
                bgDimd.show();
                $essential.show();
                $agreement.hide();
                $choice.hide();
                topResult = $essential;
            }else if($layer3 == true){
                bgDimd.show();
				$choice.show();
                $essential.hide();
                $agreement.hide();
                topResult = $choice;
            }
            topResult.css({
                /*top: $(window).scrollTop() - $('#content').offset().top + ($(window).height()/2) - (topResult.height()/2) - 50,*/
                'margin-top':-topResult.height() / 2
            });
        });
        $('.reg_agree .btn_ok,.reg_agree .btn_close').on('click',function(e){
            e.preventDefault();
            $(this).parents('.layer').hide();
            $('.bg_dim').hide();
        });

        // 이용약관전체동의
		var agree = $('.reg_agree');
        $('.check_agree input[name = agree_allcheck]').change(function(){
            if($(this).is(':checked') === true){
                $('.check_agree').addClass('checked')
                agree.find('input[type=checkbox]').attr('checked','checked');
                agree.find('input[type=checkbox]').prop('checked','checked');
                agree.find('input[type=checkbox]').val('y');
                $('#consentHidden').val('y');
            }else{
                $('.check_agree').removeClass('checked')
                agree.find('input[type=checkbox]').attr('checked','');
                agree.find('input[type=checkbox]').prop('checked','');
                agree.find('input[type=checkbox]').val('n');
                $('#consentHidden').val('n');
            }
        });
        $('.reg_agree').find('input[type=checkbox]').change(function(){
            if($(this).is(':checked')){
				$(this).parent().addClass('checked');
                $(this).attr('checked','checked');
                $(this).prop('checked','checked');
                $(this).val('y');
                if($(this).attr('name') == 'hiddenCheck') $('#consentHidden').val('y');
			}else{
                $(this).parent().removeClass('checked');
                $(this).attr('checked','');
                $(this).prop('checked','');
                $(this).val('n');
                if($(this).attr('name') == 'hiddenCheck') $('#consentHidden').val('n');
			}
            $('.reg_agree').find('input[type=checkbox]').each(function(){
                if($(this).is(':checked') === false){
                    $('.label_all_check').removeClass('checked');
                    return false;
                }
            });
            if($(this).attr('name') === 'marketing'){
                if($(this).is(':checked')){
                    $('.email_sms').find('.check_agree').addClass('checked');
                    $('.email_sms').find('input').attr('checked','checked');
                    $('.email_sms').find('input').prop('checked','checked');
                    $('.email_sms').find('input').val('y');
                }else{
                    $('.email_sms').find('.check_agree').removeClass('checked');
                    $('.email_sms').find('input').attr('checked','');
                    $('.email_sms').find('input').prop('checked','');
                    $('.email_sms').find('input').val('n');
                }
            }
            if($(this).attr('name') === 'mailling' || $(this).attr('name') === 'sms'){
                var emailSmsCount = 0;
                $(this).parents('.email_sms').find('input').each(function(){
                    if($(this).is(':checked')) emailSmsCount++;
                });
                if(emailSmsCount === 2){
                    $('input[name=marketing]').parent().addClass('checked');
                    $('input[name=marketing]').attr('checked','checked');
                    $('input[name=marketing]').prop('checked','checked');
                }else{
                    $('input[name=marketing]').parent().removeClass('checked');
                    $('input[name=marketing]').attr('checked','');
                    $('input[name=marketing]').prop('checked','');
                }
            }

            // 전체동의
            if($('.reg_agree').find('.checked').length >= 7){
                $('.check_agree input[name = agree_allcheck]').parent().addClass('checked');
                $('.check_agree input[name = agree_allcheck]').prop('checked','checked');
            }else{
                $('.check_agree input[name = agree_allcheck]').parent().removeClass('checked');
                $('.check_agree input[name = agree_allcheck]').prop('checked','');
			}
        });

        function inputFocus() {
            $('#form input').focus(function () {
                var element = $(this);
                if (element.offset().top - $(window).scrollTop() < 80)
                {
                    $('html, body').animate({
                        scrollTop: element.offset().top - 80
                    }, 0);
                }
            });
        }
        inputFocus();


        // 글자 갯수확인 + 문장조합확인
        var checkType1 = false;// 갯수
        var checkType2 = false;// 문자
        var checkType3 = false;// 문자만
        function check_confirm(characterReg, minNum){
            if(characterReg.length < minNum){
                checkType1 = false;
            }else{
                checkType1 = true;
            }

            var checkNumber = characterReg.search(/[0-9]/g); // 숫자
            var checkEnglish = characterReg.search(/[a-zA-Z]/ig); // 대소문자
            var checkSpecial = characterReg.search(/[~`!>@?/<#"'\$;:\]%\.\^,&\[*()_\+\-=|\\{}]/ig); // 특수문자
            var checkAscii = characterReg.search(/[^a-zA-Z0-9~`!>@?/<#"'\$;:\]%\.\^,&\[*()_\+\-=|\\{}]/ig); // 아스키 특수문자

            if(checkNumber >= 0 && checkEnglish >= 0 && checkAscii === -1) {
                checkType2 = true;
                checkType3 = true;
                if(checkSpecial !== -1) checkType3 = false;
            }else if(checkNumber >= 0 && checkSpecial !== -1 && checkAscii === -1){
                checkType2 = true;
                checkType3 = false;
            }else if(checkEnglish >= 0 && checkSpecial !== -1 && checkAscii === -1) {
                checkType2 = true;
                checkType3 = false;
            }else if( checkEnglish >= 0 && checkSpecial === -1 && checkAscii === -1) {
                checkType3 = true;
                if (checkNumber === -1) checkType2 = false;
            }else{
                checkType2 = false;
                checkType3 = false;
            }
        }


        // 아이디검증
        var saveId;
        $('[name=m_id]').on('focus',function(){
            saveId = $(this).val();
            $(this).parent().find('.txt_guide').show();
        });
        $('[name=m_id]').on('keyup', function(){
            var $target = $(this).parent().find('.txt_guide');
            var $chkVal =  $(this).val();
            var $numMin = 6;
            if(saveId !== $chkVal) class_change($target.eq(1),'bad');// 중복확인후 수정될때
            check_confirm($chkVal,$numMin);
            if(checkType1 === true && checkType3 === true){
                class_change($target.find('.txt_case1'), 'good');
                $(this).attr('data-validator',"true");
            }else{
                class_change($target.find('.txt_case1'),'bad');
                $(this).attr('data-validator',"false");
            }
            if($('[name=chk_id]').val() == 1){
                $('[name=chk_id]').val('');
                class_change($target.find('.txt_case2'),'bad');
			}
        });

        // 비밀번호검증
        $('[name=password], [name=newPassword], [name=password2], [name=confirmPassword]').on('focus',function(){
            $(this).parent().find('.txt_guide').show();
        });
        $('[name=password], [name=newPassword], [name=password2], [name=confirmPassword]').on('blur', function () {
            if ($(this).parent().find('.txt').hasClass('bad') || $.trim($(this).val()) === "" ){
                if (!$(this).hasClass('bad')) $(this).addClass('bad');
            } else {
                if ($(this).hasClass('bad')) $(this).removeClass('bad')
            }
        });
        $('input[name=password2], [name=confirmPassword]').on('keyup', function(){
            var $target = $(this).parent().find('.txt_guide');

            if( ( $("[name=password]").val() === $('[name=password2]').val() && $.trim($("[name=password]").val()) != "") || ( $("[name=newPassword]").val() === $('[name=confirmPassword]').val() && $.trim($("[name=newPassword]").val()) != "") ) {
                class_change($target.find('.txt_case1'),'good');
            }else{
                class_change($target.find('.txt_case1'),'bad');
            }
        });

        $('input[name=password], [name=newPassword]').on('keyup', function(e){
            var $target = $(this).parent().find('.txt_guide');
            var $chkVal =  $(this).val();
            var $numMin = 10;

            check_confirm($chkVal,$numMin);

            if(checkType1 === false && checkType2 === false){
                class_change($target.find('.txt_case1'),'bad');
                class_change($target.find('.txt_case2'),'bad');
            }
            if(checkType1 === true && checkType2 === false){
                class_change($target.find('.txt_case1'),'good');
                class_change($target.find('.txt_case2'),'bad');
            }
            if(checkType1 === false && checkType2 === true){
                class_change($target.find('.txt_case1'),'bad');
                class_change($target.find('.txt_case2'),'good');
            }
            if(checkType1 === true && checkType2 === true){
                class_change($target.find('.txt_case1'),'good');
                class_change($target.find('.txt_case2'),'good');
            }

			var hasThreeOrMoreConsecutiveNumbers = pwValidate.hasThreeOrMoreConsecutiveNumbers($chkVal)
            if (hasThreeOrMoreConsecutiveNumbers) {
                class_change($target.find('.txt_case3'),'bad');
            } else {
                class_change($target.find('.txt_case3'),'good');
			}
            
            if($(this).attr('id') == 'newPassword'){
                if($('[name=originalPassword]').val() == $('[name=newPassword]').val() ){
                    class_change($target.find('.txt_case4'),'bad');
				}else{
                    class_change($target.find('.txt_case4'),'good');
				}
                $('[name=confirmPassword]').trigger('keyup');
                var newPasswordCheckNum = 0;
                $target.find('.txt').each(function(){
                   if($(this).hasClass('good')) newPasswordCheckNum++;
                   $('[name=newPasswordCheck]').val(newPasswordCheckNum);
				});
			}else{
                $('[name=password2]').trigger('keyup');    
			}
        });

        // 라디오버튼 토글-성별
        $('.select_sex .group_radio .label_radio').on('click', function (e){
            e.preventDefault();
            var target = $(this);
            var radioTarget = target.find('input[name=radio]');
            var selectedVal = target.find('input').val();
            radioTarget.prop('checked',true);
            target.addClass('checked').siblings().removeClass('checked');
			target.siblings("input").val(selectedVal)
        });
    });

    // 클래스변경
    function class_change(obj,state){
        if(state === 'good') {
            if (obj.hasClass('bad')) obj.removeClass('bad');
            obj.addClass('good');
        }else{
            if(obj.hasClass('good')) obj.removeClass('good');
            obj.addClass('bad');
        }
    }

    function defaultRnCheckType() {
        var authtype = document.getElementsByName("RnCheckType");

        if (authtype.item(0) != null) {
            var div_jumin		= document.getElementById("div_RnCheck_jumin");
            var div_ipin		= document.getElementById("div_RnCheck_ipin");
            var div_hpauthDream = document.getElementById("div_RnCheck_hpauthDream");

            if (authtype.item(0).value == 'jumin')
            {
                div_jumin.style.display='';
            } else if(authtype.item(0).value == 'ipin') {
                div_ipin.style.display='';
            } else if(authtype.item(0).value == 'hpauthDream') {
                div_hpauthDream.style.display='';
            }
            authtype.item(0).checked = true;
        }
    }

    function selectRnCheckType(){
        var div_jumin		= document.getElementById("div_RnCheck_jumin");
        var div_ipin		= document.getElementById("div_RnCheck_ipin");
        var div_hpauthDream = document.getElementById("div_RnCheck_hpauthDream");

        var rdo_jumin		= document.getElementById("RnCheckType_jumin");
        var rdo_ipin		= document.getElementById("RnCheckType_ipin");
        var rdo_hpauthDream = document.getElementById("RnCheckType_hpauthDream");

        if(rdo_jumin && rdo_jumin.checked == true){
            if (div_jumin != null) { div_jumin.style.display=''; }
            if (div_ipin != null) { div_ipin.style.display='none'; }
            if (div_hpauthDream != null) { div_hpauthDream.style.display='none'; }
        }
        if(rdo_ipin && rdo_ipin.checked == true){
            if (div_jumin != null)	{ div_jumin.style.display='none'; }
            if (div_ipin != null)	{ div_ipin.style.display=''; }
            if (div_hpauthDream != null) { div_hpauthDream.style.display='none'; }
        }
        if(rdo_hpauthDream && rdo_hpauthDream.checked == true){
            if (div_jumin != null)	{ div_jumin.style.display='none'; }
            if (div_ipin != null)	{ div_ipin.style.display='none'; }
            if (div_hpauthDream != null) { div_hpauthDream.style.display=''; }
        }
    }

    function checkCurrentPassword(el) {
        var currentPassword = $(el).val();
        var errorMessage = $(el).parent().find(".txt_guide");
        if (currentPassword.trim() === "") {
            errorMessage.show();
            return false;
        }
        var req = {password:currentPassword};
        kurlyApi({
            method:'post',
            url:'/v1/users/check/password',
			data:req
        }).then(function (response) {
            if (response) {
                if (response.status === 200 && response.data.hasOwnProperty('data')) {
                    errorMessage.hide();
                    return true;
                }
            }
            errorMessage.show();
			return false;
        });
	}

    function chkId()
    {
        var alertMsg = "아이디는 6자 이상의 영문 혹은 영문과 숫자 조합만 가능합니다";
        var $target = $("[name='m_id']").parent().find('.txt_case2');
        var id_txt = $("[name='m_id']").val();
        var id_trim_txt = id_txt.replace(/(^\s*)|(\s*$)/gi, "");
        $("input[name='m_id']").val(id_trim_txt);
        var form = document.frmMember;
        if ($("input[name='m_id']").val() === "") {
            alert("아이디를 입력해 주세요.");
            return;
        }
        if($("input[name='m_id']").val().length < 6){alert("아이디는 6자 이상의 영문 혹은 영문과 숫자 조합만 가능합니다");return;}
        if (!chkText(form.m_id,form.m_id.value,"아이디를 입력해주세요")) return;
        var idPattern = /^[a-zA-Z0-9]{1}[^"']{3,15}$/; // chkPatten 메소드에서 가져옴
        var isValidId = eval(idPattern);
        if (!isValidId.test(form.m_id.value)) {
            alert(alertMsg);
			return;
        }
        var $idValidator = $("[name='m_id']").attr('data-validator');
        if($idValidator === "false"){
            $("[name=id_chk]").val('');
            alert(alertMsg);
            if($target.hasClass('good')) $target.removeClass('good');
            $target.addClass('bad');
        }else{
            ifrmHidden.location.href = "indb.php?mode=chkId&m_id=" + form.m_id.value;
		}
    }
    function chkId2(num){
        var $target = $("[name='m_id']").parent().find('.txt_case2');
        var id_txt = $("[name='m_id']").val();
        if(num == 1){
            if($target.hasClass('bad')) $target.removeClass('bad');
            $target.addClass('good');
            $("[name='m_id']").attr('data-id',id_txt);
        }else{
            if($target.hasClass('good')) $target.removeClass('good');
            $target.addClass('bad');
        }
    }

    function chkEmail()
    {
        var email_txt = $("input[name='email']").val();
        var trim_txt = email_txt.replace(/(^\s*)|(\s*$)/gi, "");
        var email_regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
        $("input[name='email']").val(trim_txt)
        if ($("input[name='email']").val() === "") {
            alert("이메일 주소를 입력해 주세요.");
            return false;
        }
		if(email_regex.test(trim_txt) === false) {
            alert("잘못된 이메일 형식입니다.");
            return false;
        }

        var form = document.frmMember;
        if (!chkText(form.email,form.email.value,"이메일을 입력해주세요")) return;
        if (!chkPatten(form.email,form.email.getAttribute('option'),"정상적인 이메일 주소를 입력해주세요.")) return;
        var chkUrl = "indb.php?mode=chkEmail&email=" + form.email.value + "&m_id=";
        ifrmHidden.location.href = chkUrl;
    }

    $("input[name='mobile[]']").change(function() {
        $("input[name='check_mobile']").val("0");
    });

    
	// 생년월일 입력시 폼 포커스 이벤트
	$('.birth_day input').focus(function(){
		$(this).parent().addClass('on');
		
	}).keyup(function(){
		var inputText = $(this).val();
		var number = $(this).val().replace(/[^0-9]/g,'');
		$(this).val(number);
	}).blur(function(){
		$(this).parent().removeClass('on');
		// KM-1261 회원가입 14세 인증
		birthCheckAction.validatorText();
	});
	

    function chkForm2(f) {
        if ($("input[name='chk_id']").val() != "1")
        {
            alert("아이디 중복확인을 완료해 주세요.", function () {
                $("input[name='chk_id']").focus();
            });
            return false;
        }

	    if(! preventSpecialChars($('input[name=name]'), 'result')){
		    return false;
	    }
		
        if ($("input[name='check_mobile']").val() != "1")
        {
            alert("휴대폰 인증을 완료해 주세요.", function () {
                $('#btn_cert').focus();
            });
            return false;
        }

        
        if (document.getElementById('avoidDbl')) btn = document.getElementById('avoidDbl').innerHTML;

        var email_txt = $("input[name='email']").val();
        var trim_txt = email_txt.replace(/(^\s*)|(\s*$)/gi, "");
        var email_regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
        $("input[name='email']").val(trim_txt)
        if(email_regex.test(trim_txt) === false) {
            alert('잘못된 이메일 형식입니다.', function () {
                $('input[name=email]').focus();
            });
            return false;
        }

        if($('[name=agree]').attr('checked') != 'checked'){
            alert('[(필수) 이용약관 동의]에 동의를 하셔야 회원가입이 가능합니다.', function () {
                $('#agree').focus();
            });
            return false;
        }
		if($('[name=private1]').attr('checked') != 'checked'){
            alert('[(필수) 개인정보취급방침 동의]에 동의를 하셔야 회원가입이 가능합니다.', function () {
                $('#private1').focus();
            });
            return false;
        }
		if($('[name=fourteen_chk]').attr('checked') != 'checked'){
            alert('[(필수) 본인은 만 14세 이상입니다.]에 동의를 하셔야 회원가입이 가능합니다.', function () {
                $('#fourteenChk').focus();
            });
            return false;
        }

		// KM-1261 회원가입 14세 인증
		if(! birthCheckAction.validatorForm()){
			return false;
		}
        
        if (chkForm(f) === false) {
            return false;
        }
        return true;
    }

    function goIDCheckIpin() {

        return;
    }


    $(document).ready(function() {
        // 추천인 자동 설정
        var recommRegExp = new RegExp("recommid=([^&]+)", "i");
        var match = location.search.match(recommRegExp);
        if(match !== null && match.length === 2) {
            $('#labelRecomm').click();
            $('input[name=recommid]').val("");
        }
    });


	// KM-1483 Amplitude
	KurlyTracker.setScreenName('sign_up').setAction('view_sign_up').sendData();
</script>

</div><!-- End indiv -->

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

			
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"2982e7e5e8","applicationID":"467839462","transactionName":"MVBTZxFTDEJVAUFcWwgaZEEKHRFZWxIaWFELV1RBTFgNWFpMRV1E","queueTime":0,"applicationTime":36,"atts":"HRdQEVlJH0w=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>