<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <!DOCTYPE html>
<html lang="ko">
<head>
<link href="css/main.css" rel="stylesheet" type="text/css">
<title>HON LIFE - 회원가입</title>
</head>


<body class="member-join" oncontextmenu="return false" ondragstart="return false" onselectstart="return !enableSelection" style="">

<!-- KM-201 장차석 : Google Tag Manager (noscript) -->
<!-- End Google Tag Manager (noscript) -->


<div id="wrap" class="">
   <div id="pos_scroll"></div>

   <div id="container">
      <div id="header">


<div class="bnr_header" id="top-message">
<!-- 상단 띠배너 -->
      </div>  


<!-- 탑 네비게이션 바 -->
<div id="userMenu">
<ul class="list_menu">
<!-- <li class="menu none_sub menu_join"><a href="#" class="link_menu">회원가입</a></li> 
<li class="menu none_sub"><a href="/shop/member/login.php" class="link_menu">로그인</a></li> -->
 </ul>
   </div>

<script src="/common_js/usermenu_v1.js?ver=202003191138"></script>
<script>
$(document).ready(function(){
    
    userMenu.loginCheck = false;
});
</script>


<div id="headerLogo" class="layout-wrapper">
    <!-- <h1 class="logo">
        <a href="/" class="link_main">
            <span id="gnbLogoContainer"></span>
            <img src="image/logo.png" alt="마켓컬리 로고">
        </a>
    </h1> -->
    
</div>

<div id="gnb" class="">
    <h2 class="screen_out">메뉴</h2>
    <div id="gnbMenu" class="gnb_kurly">
    <div class="inner_gnbkurly">
    <div class="gnb_main">
</div>
</div>
</div>
</div>

</div><!-- #header -->
      <div id="main">
         <div id="content">

          <!-- 퀵 메뉴 -->
         <div id="qnb" class="quick-navigation" style="top: 70px;">



<!-- 이벤트 배너영역 -->
<div class="bnr_qnb" id="brnQuick"><a href="/shop/board/view.php?id=notice&amp;no=64" id="brnQuickObj">
 
</a>
<script>
    var brnQuickScript = (function(){
        var $target = $('#brnQuickObj'), $targetThumb = $('#brnQuickObj .thumb');
        // 시간체크
        function timeCheck(){
            var now = brnQuick.nowTime; // 호출 하는 js에서 변수선언되어 가져다 사용
            if( new Date('2020-01-01T00:00:00+09:00').getTime() <= now && now < new Date('2020-01-23T23:00:00+09:00').getTime()){
                if(new Date('2020-01-17T23:00:00+09:00').getTime() <= now){
                    $target.attr('href', '/shop/event/kurlyEvent.php?htmid=event/2020/0117/last_newyear');
                }else{
                    $target.attr('href', '/shop/event/kurlyEvent.php?htmid=event/2020/0103/newyear');
                }
                $targetThumb.attr('src', 'https://res.kurly.com/pc/service/main/1912/quick_newyear.jpg');
                $targetThumb.attr('alt', '2020 설 선물');
            }
        }
        return {
            timeCheck : timeCheck
        }
    })();
    brnQuickScript.timeCheck();
</script></div>
<script>
    var brnQuick = {
        nowTime : '1584585506278',
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

<!-- <div class="side_menu">
    <a href="/shop/event/kurlyEvent.php?htmid=event/lovers/lovers_200301" class="link_menu ">등급별 혜택</a>
    <a href="/shop/board/list.php?id=recipe" class="link_menu ">레시피</a>
    <a href="/shop/goods/goods_review_best.php" class="link_menu ">베스트 후기</a>
</div> -->

<script>
/**
 * 상품상세일때 현재 보고 있는 상품 담기. 상품URL & 상품이미지
 * 최종 저장 날짜로 부터 24시가 지날시 localStorage 삭제
 */
var getGoodsRecent = (function(){
    var i, len, getGoodsRecent, item, _nowTime = '1584585506278';

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
<script src="/common_js/join_v1.js?ver=202003191138"></script>

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

        var rdo_jumin      = document.getElementById("RnCheckType_jumin");
        var rdo_ipin      = document.getElementById("RnCheckType_ipin");
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
   
</div>
<div class="head_section head_join">
   <h2 class="tit">회원가입</h2>
</div>

<div class="member_join"><!-- 회원가입일때만 스타일 적용 -->
   
<div class="">
   <form id="form" name="frmMember" method="post" action="/shop/member/indb.php" onsubmit="return chkForm2(this)">
      <input type="hidden" name="mode" value="joinMember">
      <input type="hidden" name="check_mobile" value="">
      <input type="hidden" name="auth_finish_code" value="">
      <input type="hidden" name="rncheck" value="">
      <input type="hidden" name="dupeinfo" value="">
      <input type="hidden" name="pakey" value="">
      <input type="hidden" name="foreigner" value="">
      <input type="hidden" name="passwordSkin" value="Y"><!-- 비밀번호 작성 규칙 보완 스킨패치 여부 -->

      <input type="hidden" name="private2" value="">
      <input type="hidden" name="private3" value="">
      <input type="hidden" name="return_url" value="">

      <!-- 네이버체크아웃(회원연동) -->
      

      <div class="field_head head_type1">
         <h3 class="tit"><span class="screen_out">기본정보</span></h3>
         <p class="sub">*필수입력사항</p>   
      </div>
      
      <div class="boardWrite">
         <table class="tbl_comm">
            <tbody><tr>
               <td class="memberCols1">아이디*</td>
               <td class="memberCols2">
                  <input type="text" name="m_id" value="" maxlength="16" required="" fld_esssential="" option="regId" label="아이디" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
                  <input type="button" id="idCheck" name="idCheck" class="myBtn" value="중복확인">
                  
               </td>
            </tr>
            <tr>
               <td class="memberCols1"> 비밀번호*</td>
               <td class="memberCols2">
                  <input type="password" name="password" required="" fld_esssential="" option="regPass" label="비밀번호" maxlength="16" class="reg_pw" placeholder="비밀번호를 입력해주세요">
                  
               </td>
            </tr>
            <tr class="member_pwd">
               <td class="memberCols1">비밀번호확인*</td>
               <td class="memberCols2">
                  <input type="password" name="password2" required="" fld_esssential="" option="regPass" label="비밀번호" maxlength="16" class="confirm_pw" placeholder="비밀번호를 한번 더 입력해주세요">
               </td>
            </tr>
            <tr>
               <td class="memberCols1">이름*</td>
               <td class="memberCols2">
                  <input type="text" name="name" value="" required="" fld_esssential="" label="이름" placeholder="고객님의 이름을 입력해주세요">
               </td>
            </tr>

            <tr>
               <td class="memberCols1">  이메일*</td>
               <td class="memberCols2">
                  <input type="text"  id ="email" name="email"  placeholder="예: honlife@naver.com">
               
         
               </td>
            </tr>
            

            <tr class="mobile">
               <td class="memberCols1">  휴대폰*</td>
               <td class="memberCols2">
                  <div class="phone_num">
                     <input type="text" value="" pattern="[0-9]*" name="mobileInp" placeholder="숫자만 입력해주세요" class="inp">
                     
                  </div>
                  

               </td>
            </tr>

            <tr>
               <td class="memberCols1">주소</td>
               <td class="memberCols2">
                  <div class="field_address">
                     <input type="text" id="addr" name="addr" readonly="readonly" placeholder="주소를 검색하세요">&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="button" id="addr" name="addr" class="myBtn" value="주소찾기">
                     
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
                        <input type="radio" name="sex_option" label="성별" value="m">
                        <span class="text_position">남자</span>
                     </label>
                     <label class="label_radio">
                        <input type="radio" name="sex_option" label="성별" value="w">
                        <span class="text_position">여자</span>
                     </label>
                     <label class="label_radio">
                        <input type="radio" name="sex_option" label="성별" value="n">
                        <span class="text_position">선택안함</span>
                     </label>
                     <input type="hidden" name="sex" label="성별" value="n">
                  </div>
               </td>
            </tr>

            <tr class="birth field_birth">
               <td class="memberCols1">생년월일</td>
               <td class="memberCols2">
                  <div class="birth_day">
                     <input type="text" name="birth_year" id="birth_year" pattern="[0-9]*" value="" label="생년월일" size="4" maxlength="4" placeholder="YYYY">
                     <span class="bar"><span>/</span></span>
                     <input type="text" name="birth[]" id="birth_month" pattern="[0-9]*" value="" label="생년월일" size="2" maxlength="2" placeholder="MM">
                     <span class="bar"><span>/</span></span>
                     <input type="text" name="birth[]" id="birth_day" pattern="[0-9]*" value="" label="생년월일" size="2" maxlength="2" placeholder="DD">
                  </div>
                  <p class="txt_guide">
                     <span class="txt bad"></span>
                  </p>
                  
               </td>
            </tr>
            
            


         </tbody>
         </table>

      </div>

         

      <div id="avoidDbl">
         <button type="submit" class="btn_submit">가입하기</button>
      </div>
   </form>
</div>

</div>


<iframe id="ifrmRnCheck" name="ifrmRnCheck" style="display:none;"></iframe>
<iframe id="ifrmHpauth" name="ifrmHpauth" style="display:none;"></iframe>
<script src="/shop/data/skin/designgj/js/pw_validate.js?ver=202003191138"></script>
<script src="/shop/data/skin/designgj/js/delivery_address.js?ver=202003191138"></script>
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

        // ----모바일 인증 v2 start ----
        var checkCertBtn = false; // 인증 하기 버튼 활성화 여부
        var confirmCertBtn = false; // 인증 확인 버튼 활성화 여부
        var stopTimer = false; // 타이머 정지

        var mobile0 = $('input[name="mobile[]"]').eq(0);
        var mobile1 = $('input[name="mobile[]"]').eq(1);
        var mobile2 = $('input[name="mobile[]"]').eq(2);

        /* 인증번호 체크 확인용 전역변수선언 */
        var confirmTxt = $('.mobile .txt_guide .txt');

        /* 인증번호 체크 타입별 노출문구*/
        function confNotice(type){
            var resultText, classAdd;
            if(type === 'receive'){
                classAdd = 'receive';
                resultText = '인증번호가 오지 않는다면, 통신사 스팸 차단 서비스 혹은 휴대폰 번호 차단 여부를 확인해주세요. (마켓컬리 1644-1107)';
            }else if(type === 'fail'){
                classAdd = 'bad';
                resultText = '인증번호를 확인해주세요';
            }else if(type === 'conf'){
                classAdd = 'good';
                resultText = '인증번호 확인완료.';
            }
            confirmTxt.removeClass('receive bad good').addClass(classAdd);
            confirmTxt.text(resultText);
        }


        // 인증번호 받기 활성화
        $('[name=mobileInp]').on('keyup blur',function(e){
            var inputText = $(this).val();
            var number = inputText.replace(/[^0-9]/g,'');
            $(this).val(number);
            number = $(this).val();
         
            if($(this).val().length > 11){
                $(this).val(number.substring(0,11));
            }
            mobile0.val(number.substring(0,3));
            mobile1.val(number.substring(3,7));
            mobile2.val(number.substring(7,11));
            var checkNum = '010';
            if( ( mobile0.val().indexOf(checkNum) !== 0 && $(this).val().length >= 10) || (mobile0.val().indexOf(checkNum) === 0 && $(this).val().length >= 11) ){
                if(confirmCertBtn == false){
                    if($('#btn_cert span').hasClass('disabled')) $('#btn_cert span').removeClass('disabled');
                    checkCertBtn = true;
            }
            }else{
                if(!$('#btn_cert span').hasClass('disabled')) $('#btn_cert span').addClass('disabled');
                checkCertBtn = false;
            }
        });

        function countdown(elementId, seconds) {
            var element, endTime, hours, mins, msLeft, time;
            function updateTimer() {
                if (stopTimer == true) {
                    $('#countdown').hide();
                    return;
                }

                $('#countdown').show();
                msLeft = endTime - (+new Date);
                if (msLeft < 0) {
                    count_down_stop();
                    alert('인증 제한 시간이 지났습니다');
                } else {
                    time = new Date(msLeft);
                    hours = time.getUTCHours();
                    mins = time.getUTCMinutes();
                    element.innerHTML = (hours ? hours + ':' + ('0' + mins).slice(-2) : mins) + ' : ' + ('0' + time.getUTCSeconds()).slice(-2);
                    certifyTime = setTimeout(updateTimer, time.getUTCMilliseconds());

                    checkCertBtn = false;
                    confirmCertBtn = true;
                }
            }

            element = document.getElementById(elementId);
            endTime = (+new Date) + 1000 * seconds;
            updateTimer();
        }

        // 카운트 다운 시작
        function count_down_start(count_time) {
            stopTimer = false;
            checkCertBtn == false;
            confirmCertBtn = true;
            countdown('countdown', count_time);
            $('#btn_cert .bhs_button').addClass('disabled'); // [인증번호 받기] 비활성화
            $('#btn_cert_confirm .bhs_button').removeClass('disabled'); // [인증번호 확인] 활성화
            $('.inp_confirm').prop("disabled", false);
            $('[name=mobileInp]').attr('readonly',true);
        }

        // 카운트 다운 정지
        function count_down_stop() {
            stopTimer = true;
            checkCertBtn = true;
            confirmCertBtn = false;
            $('#countdown').hide();
            $('#btn_cert .bhs_button').removeClass('disabled'); // [인증번호 받기] 활성화
            $('#btn_cert_confirm .bhs_button').addClass('disabled'); // [인증번호 확인] 비활성화
            $('.inp_confirm').prop("disabled", true);
            $('[name=mobileInp]').attr('readonly',false);
        }

        // 인증 완료
        function mobile_auth_finished(showAlert)
        {
            stopTimer = true;
            checkCertBtn = true;
            confirmCertBtn = false;
            $('#btn_cert .bhs_button').removeClass('disabled'); // [인증번호 받기] 활성화
            $('#btn_cert_confirm .bhs_button').addClass('disabled'); // [인증번호 확인] 비활성화
            $('.inp_confirm').prop("disabled", true);
            $('#btn_cert .bhs_button').text('다른 번호 인증');
            $("[name=check_mobile]").val('1');

            $('[name=mobileInp]').attr("readonly", true);

            if (showAlert == true)
            {
                alert('인증이 완료 되었습니다.');
                confNotice('conf');
            }
        }

        // [인증 번호 받기] 버튼 클릭
        $('#btn_cert').on('click', function() {
            if (checkCertBtn == false) {
                return;
            }
            $('.mobile .txt_guide').show();
            confNotice('receive');

            if ($('#btn_cert .bhs_button').text() == '다른 번호 인증')
            {
                $('#btn_cert .bhs_button').text('인증 번호 받기');
                $('#btn_cert .bhs_button').addClass('disabled');
                checkCertBtn = false;
            }

            mobile = mobile0.val() + "-" + mobile1.val() + "-" + mobile2.val();
            auth_code = $('input[name="auth_code"]');

            if ($("[name=check_mobile]").val() == 1) {
                $('#btn_cert .bhs_button').text('인증 번호 받기');
                $('[name=mobileInp]').val('').attr("readonly", false);
                mobile0.val('');
                mobile1.val('');
                mobile2.val('');
                auth_code.val('');
                $("[name=check_mobile]").val('');
                return;
            }

            if (mobile0.val() == "" || mobile1.val() == "" || mobile2.val() == "") {
                alert('정확한 휴대폰 번호를 입력해 주세요.');
                return;
            }

            // 인증 번호 요청
            $.ajax({
                url: '/shop/proc/auth_code.php',
                type: 'POST',
                data: {
                    "mode": "get_auth_code",
                    "mobile": mobile
                },
                dataType: 'json',
                async: false
            }).success(function(data) {
                if (data.result == false) {
                    alert(data.message);
                } else {
                    alert(data.message);
                    count_down_start(parseInt(data.data.count_time));
                }
            }).fail(function() {
                alert("일시적인 장애가 발생하였습니다.\n잠시후 다시시도해주세요.");
            });
        });

        // [인증 번호 확인] 버튼 클릭
        $('#btn_cert_confirm').on('click', function() {
            if (confirmCertBtn == false) {
                return;
            }

            mobile = mobile0.val() + "-" + mobile1.val() + "-" + mobile2.val();
            auth_code = $('input[name="auth_code"]').val();

            if( auth_code.length < 6){
                confNotice('fail');
                return;
            }

            // 인증 번호 확인 요청
            $.ajax({
                url: '/shop/proc/auth_code.php',
                type: 'POST',
                data: {
                    "mode": "check_auth_code",
                    "mobile": mobile,
                    "auth_code": auth_code
                },
                dataType: 'json',
                async: false
            }).success(function(data) {
                if (data.result == false) {
                    //alert(data.message);
                    confNotice('fail');
                } else {
                    $('input[name="auth_finish_code"]').val(data.data.auth_finish_code);
                    mobile_auth_finished(true);
                }
            }).fail(function() {
                alert("일시적인 장애가 발생하였습니다.\n잠시후 다시시도해주세요.");
            });
        });

        // ----모바일 인증 v2 end ----

      

         // 기존 텍스트 리셋
            textBox.val("")

            // placeholder 텍스트 변경
         textBox.attr('placeholder', placeholderMessage)

         // input name, value값 변경
         var nameOptions = {
                'recommendId': 'recommid',
                'eventName': 'ex2'
         }
         textBox.attr('name', nameOptions[selectOption])
            inputWrapper.addClass('selected')
        })

        // 라디오버튼 토글-성별
       


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
            var div_jumin      = document.getElementById("div_RnCheck_jumin");
            var div_ipin      = document.getElementById("div_RnCheck_ipin");
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
        var div_jumin      = document.getElementById("div_RnCheck_jumin");
        var div_ipin      = document.getElementById("div_RnCheck_ipin");
        var div_hpauthDream = document.getElementById("div_RnCheck_hpauthDream");

        var rdo_jumin      = document.getElementById("RnCheckType_jumin");
        var rdo_ipin      = document.getElementById("RnCheckType_ipin");
        var rdo_hpauthDream = document.getElementById("RnCheckType_hpauthDream");

        if(rdo_jumin && rdo_jumin.checked == true){
            if (div_jumin != null) { div_jumin.style.display=''; }
            if (div_ipin != null) { div_ipin.style.display='none'; }
            if (div_hpauthDream != null) { div_hpauthDream.style.display='none'; }
        }
        if(rdo_ipin && rdo_ipin.checked == true){
            if (div_jumin != null)   { div_jumin.style.display='none'; }
            if (div_ipin != null)   { div_ipin.style.display=''; }
            if (div_hpauthDream != null) { div_hpauthDream.style.display='none'; }
        }
        if(rdo_hpauthDream && rdo_hpauthDream.checked == true){
            if (div_jumin != null)   { div_jumin.style.display='none'; }
            if (div_ipin != null)   { div_ipin.style.display='none'; }
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
      </div><!-- #main -->


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

   <!-- footer영역 -->
   <div class="footer">
   
   </div><!-- #footer -->
   
         
   </div><!-- #container -->
</div><!-- #wrap  -->
<iframe name="xdomain-db3467e2" id="xdomain-db3467e2" src="https://api.kurly.com/xdomain" style="display:none;"></iframe><!-- #wrap -->


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
</body>
</html>