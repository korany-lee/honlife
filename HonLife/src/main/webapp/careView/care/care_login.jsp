<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>



<head>
<link rel="shortcut icon" type="image/x-icon"
   href="/project/main/images/WEB.png" />
<link href="/project/common/css/main.css" rel="stylesheet" type="text/css">
<link href="/project/common/css/common.css" rel="stylesheet" type="text/css">
<link href="/project/common/css/section1.css" rel="stylesheet" type="text/css">
<link href="/project/common/css/normalize.css" rel="stylesheet" type="text/css">
<title>Hon Stay - 로그인</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(function(){
   $("#form").submit(function(){
      if($("#id").val() =="") {
         alert('아이디를 입력하세요.');
         return false;
      }
      if($("#pw").val() =="") {
         alert('비밀번호를 입력하세요.');
         return false;
      }
      
       $.ajax({
            type : "POST",
            url : "stayLoginAction",
            data : {"id" : $("#id").val(),"pw" : $("#pw").val()},
            datatype : "html",
            success : function(data1) {
                $("#total").html(data1); 
            }
         }); 
      
      
   
   
   });
});

</script>
</head>



   


<body class="member-login"  oncontextmenu="return false" ondragstart="return false" onselectstart="return !enableSelection">
<div id="total">

<jsp:include page="../includer/careheader.jsp"/>


<div id="wrap" class="">
   <div id="pos_scroll"></div>

   <div id="container">

      <div id="main">
         <div id="content">


<div class="section_login">
   <h3 class="tit_login">로그인</h3>
   <div class="write_form">
      <div class="write_view login_view">

            <form method="post" name="form" id="form" onsubmit="return checkReCaptcha();" action="careLoginAction">
               <input type=hidden name=returnUrl value="">
               <input type=hidden name=return_url value="/shop/event/kurlyEvent.php?htmid=event/join/join_200325">
               <input type=hidden name=close value="">
   
               <input type="text" name="id" size="20" tabindex="1" id="id" placeholder="아이디를 입력해주세요">
               <div>${noId }</div>
               <input type="password" name="password" size="20" tabindex="2" id="pw" placeholder="비밀번호를 입력해주세요">
               <div>${noPw }</div>
   
               <div class="checkbox_save">
                    <label class="label_checkbox checked">
                     <input type="checkbox" id="chk_security" name="chk_security" value="y" checked="checked" onChange="if( this.checked){$(this).parent().addClass('checked')}else{$(this).parent().removeClass('checked')} "> 
                     보안접속
                     
                  </label>
         	 		<label class="label_checkbox checked">
         	      <input type="checkbox" id="chk_security" name="managerLogin" checked="checked" onChange="if( this.checked){$(this).parent().addClass('checked')}else{$(this).parent().removeClass('checked')}"    > 
                    
                     직원 접속</label>
            
         	      
                  <!--
                  <label><input type="checkbox" name="save_id" value="y" checked="checked" onclick="chk_save_id(this.checked);"> 아이디 저장</label>
                  <div class="auto_security">
                     <label><input type="checkbox" name="save_login_status" value="y"> 자동 로그인</label>
                     <label><input type="checkbox" id="chk_security" name="chk_security" value="y"> 보안접속</label>
                  </div>
                  -->
                  <div class="login_search">
                     <a href="/shop/member/find_id.php" class="link">아이디 찾기</a>
                     <span class="bar"></span>
                     <a href="/shop/member/find_pwd.php" class="link">비밀번호 찾기</a>
                  </div>
               </div>
               
   
               <button type="submit" class="btn_type1"><span class="txt_type">로그인</span></button>
            </form>
   
            <a href="careJoin" class="btn_type2 btn_member"><span class="txt_type">회원가입</span></a>
   

      </div>
   </div>
</div>
      

         
   </div><!-- #main -->
</div><!-- #wrap -->

</div>
</div>
</div>
</body>
</html>