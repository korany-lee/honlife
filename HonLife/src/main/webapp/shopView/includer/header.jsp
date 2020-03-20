<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="shopView/css/header.css" rel="stylesheet" type="text/css">
<link rel="styleSheet" href="shopView/css/normalize.css?ver=202003161543">
<link rel="styleSheet" href="shopView/css/section1.css?ver=202003161543">
<link rel="styleSheet" href="shopView/css/common.css?ver=202003161543">
<script src="shopView/js/main_v1.js"></script>
<script src="shopView/js/main_notice_v1.js"></script>
<script src="shopView/js/kurlytracker.js"></script>
<title>Insert title here</title>
</head>
<body>

<div id="header">


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
</div>

<!-- 탑 네비게이션 바 -->
<div id="userMenu">
    <user-menu-pc
            :login-check="loginCheck"
            :notification-item="notificationItem"
            :user-info="userInfo"
            :return-url="returnUrl">
    </user-menu-pc>
</div>

<script src="shopView/js/usermenu_v1.js"></script>

<!-- // 탑 네비게이션 바 -->



<div id="headerLogo" class="layout-wrapper">
    <h1 class="logo">
        <a href="/" class="link_main">
            <span id="gnbLogoContainer"></span>
            <img src="shopView/images/honshop_main.png" alt="마켓컬리 로고" >
        </a>
    </h1>
    <a href="/shop/board/view.php?id=notice&no=64" onclick="ga('send','event','etc','main_gif_btn_click');" class="bnr_delivery">
        <img src="shopView/images/delivery_190819.png" alt="서울, 경기, 인천 샛별배송, 수도권 이외 지역 택배배송" >
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


</body>
</html>