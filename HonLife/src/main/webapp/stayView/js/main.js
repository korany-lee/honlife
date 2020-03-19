/**
 * 
 */

AUI().ready(
	'liferay-sign-in-modal',
	function(A) {
		var signIn = A.one('.sign-in > a');

		if (signIn && signIn.getData('redirect') !== 'true') {
			signIn.plug(Liferay.SignInModal);
		}
	}
);

AUI().use('event', 'node', function(A) {
	    (function() {
	        Liferay.Journal = {
	            getPortlet : function(elt) {
	                var nodeObject = A.one(elt);
	                return nodeObject.ancestor('.portlet-boundary');
	            },

	            display : function(elt, articleId) {
	                var portletNode = Liferay.Journal.getPortlet(elt);
	                var portletId = portletNode.portletId;
	                var renderURL = Liferay.PortletURL.createRenderURL();
	                renderURL.setParameter("articleId", articleId);
	                renderURL.setPortletId(portletId);
	                renderURL.setPortletMode("view");
	                renderURL.setWindowState("normal");
	                //alert(renderURL.toString());
	                window.location = renderURL.toString();
	            }
	        };
	    })();
	});

AUI().use(function() {
	$(".do_nav .navbar-collapse .level-1").hover(function(){
		$(".do_nav").addClass("do_bar_on");
	}, function() {
		$(".do_nav").removeClass("do_bar_on");
	});
   $(".do_nav .navbar-collapse .level-2 > li").hover(function(){
      $(this).parent().css('height','70vh');
   }, function() {
      $(this).parent().css('height','70vh');
   }, $(".do_nav .navbar-collapse .level-1 > li").hover(function(){
      $(this).children("ul").css('height','auto');
   }));
   
   /*** 메뉴바 컨텐츠 정렬 스크립트 ****/
   $(".level-1 > li").hover(function(){
	   
	   var W = $(this).find("ul li").last().offset().left + $(this).find("ul li").last().width() - $($(this).find("ul li").get(0)).offset().left;
	   var K = (screen.width - 1024) / 2;
	   var X = $(this).find("ul").offset().left + W;
	   var R = X - (1024 + K);

	   $(this).find("ul").first().css("left", "-" + R + "px");
   }, function() {
	   $(this).find("ul").css("left", "0px");
   });
});



$(".do_nav .list-menu ul > li").click(function(e){
	e.stopPropagation();
	$(this).toggleClass('do_open');
	});

$(".do_nav_return > span:nth-of-type(2)").click(function(){

	$(".do_nav").css('left','100%');
});

$(".do_toggle").click(function(){
	$(".do_nav").css('left','0');
});
$('.do_select').click(function() {
	$(this).children("ul").toggleClass('open');
});

$(document).on('click', '.do_select li', function(){
	$(this).parents(".do_select").children(".do_select_title").text($(this).text());
	 //위랑 동일.
});
/*** 모바일 토글 스크립트 ***/


/**** 메뉴 여닫기 스크립트 *****/
$(".do_nav .navbar-collapse .level-1 li").click(function(e){
	e.stopPropagation();
	$(this).children("ul").toggleClass('do_open');
});


$(".do_nav > li").click(function(){
	$(this).toggleClass('do_open');
});

/** 쿠키 **/
var setCookie = function(name, value, exp) {	//이름, 값, 만료시간(하루단위)
  var date = new Date();
  date.setTime(date.getTime() + exp*24*60*60*1000);
  document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
};
var getCookie = function(name) {
  var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
  return value? value[2] : null;
};
var deleteCookie = function(name) {	// 만료하기 위해 옛날 날짜로 변경
  document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}
/** 쿠키 **/

$('.do_tm_lang').click(function() {
	$(this).children("ul").toggleClass('open');
});