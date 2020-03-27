<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UNISAFE</title>

<link
   href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&display=swap"
   rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/usti.css">
  <link rel="shortcut icon" href="images/favicon.ico">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
function ustiSubmit(){   
   var t=1;
   for( t=1; t <= 20 ; t++){
      var chkRadio2 = document.getElementsByName("no"+t);
      var selType2 = null;
      var isCheck = true
      for(var i=0; i<chkRadio2.length; i++){
         if(chkRadio2[i].checked == true){
            isCheck = false;
            break;
         }
      }
      if(isCheck == true){
           alert( t+"번째를 체크해주세요.");
           chkRadio2[0].focus();
           return false;
      }
   }
   if(t >= 20){
      ustiForm.submit();
   }
}

$(document).ready(function(){
   $("#allChk").click(function(){
      $(".no1").prop("checked", this.checked);
   });
});
</script>
</head>
<body>

   <div id="wrap">

      <div id="header">
         <div class="headerBox">

            <div class="logo" align="right">
               <a href="index.us"><img src="images/UnisafeLogo.png" alt="로고"></a>
            </div>



         </div>
         <!-- headerBox -->
      </div>
      <!-- header끝 -->





      <div id="container">
         <!-- LNB 시작 -->


         <!-- LNB -->
         <!-- <div id="lnb">

            웹사이트 회원
            <div class="titBox">
               <h1>
                  <a href="#">웹사이트 회원<span>Website Member</span></a>
               </h1>
               <a href="#" class="btnAbs"></a>
            </div>
            <ul class="one_depth">
               <li><a href="#">로그인</a></li>
               <li><a href="#">아이디/비밀번호 찾기</a></li>
               <li><a href="#">회원가입</a></li>
            </ul>
            // 웹사이트 회원

         </div> -->
         <div id="contents">
            <div class="contentsTop">
               <h2>USTI</h2>
            </div>

            <div class="relCon">
               <div id="joinInfo" class="joinInfo2">
                  <ul>
                     <li> <span>성격유형 검사는 총 20문항 입니다. 각 문항마다 평소에 편하고 습관적으로 하는것을 체크하시면 됩니다. 총 검사시간은 보통 5분정도 소요됩니다.</span></li>
                     <li> <span>그렇다:1점 약간그렇다:2점 보통:3점 약간 아니다:4점 아니다:5점</span></li>
                     <li> <span>총점수 80점이상일시 회원가입 페이지로 이동합니다.</span></li>
                     
                  </ul>
               </div>
               아니다 모두체크<input type="checkbox" id="allChk" onclick="allChk()" />
               <div class="table11" id="ustiInfo" align="center">
               <form action="ustiAction.us" method="post" name="ustiForm">
                  <table>
                  <tr>
                     <th style="width: 20px;">1.</th>
                        <td>종종 주변을 무시하거나 잊어버리는 생각에 빠지곤 합니다.</td>
                        <td>그렇다<input type="radio" name="no1" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no1" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no1" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no1" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no1" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">2.</th>
                        <td>중암갑을 받을 때면 집중력을 쉽게 깨트립니다.</td>
                        <td>그렇다<input type="radio" name="no2" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no2" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no2" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no2" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no2" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">3.</th>
                        <td>순전히 호기심 때문에 행동을 하는 경우가 많습니다.</td>
                        <td>그렇다<input type="radio" name="no3" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no3" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no3" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no3" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no3" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">4.</th>
                        <td>집과 업무 환경이 흐트러져있곤 합니다.</td>
                        <td>그렇다<input type="radio" name="no4" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no4" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no4" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no4" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no4" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">5.</th>
                        <td>감정의 기복이 심할 때가 있습니다.</td>
                        <td>그렇다<input type="radio" name="no5" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no5" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no5" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no5" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no5" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">6.</th>
                        <td>종종 다른 사람들을 부러워합니다.</td>
                        <td>그렇다<input type="radio" name="no6" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no6" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no6" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no6" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no6" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">7.</th>
                        <td>부모로서 자녀가 착하게 성장하기 보다는 똑똑하게 성장하기를 바랍니다.</td>
                        <td>그렇다<input type="radio" name="no7" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no7" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no7" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no7" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no7" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">8.</th>
                        <td>주의깊게 미리 계획하기 보다는 즉흥적으로 움직입니다.</td>
                        <td>그렇다<input type="radio" name="no8" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no8" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no8" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no8" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no8" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">9.</th>
                        <td>본인이 감정을 제어하기보다 감정에 지배되곤 합니다.</td>
                        <td>그렇다<input type="radio" name="no9" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no9" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no9" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no9" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no9" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">10.</th>
                        <td>종종 비현실적이고 터무니없지만 흥미로운 생각을 하며 시간을 보냅니다.</td>
                        <td>그렇다<input type="radio" name="no10" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no10" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no10" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no10" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no10" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">11.</th>
                        <td>구체적인 계획을 갖고 시간을 보내기보다는 다소 즉흥적으로 움직입니다.</td>
                        <td>그렇다<input type="radio" name="no11" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no11" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no11" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no11" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no11" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">12.</th>
                        <td>매사 불안하다고 느낍니다.</td>
                        <td>그렇다<input type="radio" name="no12" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no12" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no12" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no12" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no12" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">13.</th>
                        <td>일정표를 만들어 잘 지키는데에 어려움을 느낍니다.</td>
                        <td>그렇다<input type="radio" name="no13" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no13" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no13" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no13" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no13" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">14.</th>
                        <td>종종 물건을 제자리에 두지 않습니다.</td>
                        <td>그렇다<input type="radio" name="no14" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no14" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no14" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no14" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no14" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">15.</th>
                        <td>스스로 정서적으로 매우 불안하다고 생각합니다.</td>
                        <td>그렇다<input type="radio" name="no15" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no15" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no15" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no15" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no15" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">16.</th>
                        <td>다른 사람들이 어떤 생각을 하는지에 대해 지나치게 신경씁니다.</td>
                        <td>그렇다<input type="radio" name="no16" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no16" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no16" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no16" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no16" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">17.</th>
                        <td>스트레스를 받으면 무척 불안해합니다.</td>
                        <td>그렇다<input type="radio" name="no17" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no17" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no17" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no17" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no17" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">18.</th>
                        <td>권력을 쥐는 것 보다 다른 사람들의 호의를 얻는 것이 더 보람있다고 생각합니다.</td>
                        <td>그렇다<input type="radio" name="no18" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no18" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no18" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no18" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no18" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">19.</th>
                        <td>책, 예술 또는 영화 등 색다르고 다양한 해석이 가능한 것에 대해 거부감이 있습니다.</td>
                        <td>그렇다<input type="radio" name="no19" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no19" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no19" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no19" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no19" class="no1" value="5">
                        </td>
                  </tr>
                  
                  <tr>
                     <th style="width: 20px;">20.</th>
                        <td>종종 사회적 상황에서 다른 사람들의 행동에 휘말립니다.</td>
                        <td>그렇다<input type="radio" name="no20" value="1">&nbsp;&nbsp;
                           약간 그렇다<input type="radio" name="no20" value="2">&nbsp;&nbsp;
                           보통<input type="radio" name="no20" value="3">&nbsp;&nbsp;
                           약간 아니다<input type="radio" name="no20" value="4">&nbsp;&nbsp;
                           아니다<input type="radio" name="no20" class="no1" value="5">
                        </td>
                  </tr>
                  </table>
                  
               </form>
               </div>
               <div class="btnJoin2">
                  <span><a href="javascript:ustiSubmit();">제출하기</a></span>
                  
                  </div>
               <!-- memberInfo 끝 -->
                  
            </div>
            <!-- relCon끝 -->
               </div>
               <!-- contents 종료-->



      
       </div>
       <!-- container 종료 -->
      <div id="footer">
         <div class="footerBox">
            
            <div class="footerBottom">
               <ul>
                  <li><a href="#">유니세이프 소개</a></li>
                  <li><a href="#">저작권 안내</a></li>
                  <li><a href="#"><strong>개인정보 처리방침</strong></a></li>
                  <li><a href="#">이용약관</a></li>
                  <li><a href="#">FAQ</a></li>
                  <li><a href="#">연락처</a></li>
               </ul>
               <ul>
                  <li>단체명 : 사단법인 유니세이프  (고유번호: 102-82-07271)</li>
                  <li>주소 : [07271] 사단법인 유니세이프 ｜ 서울시 영등포구 양산로 53(양평동)</li>
                  <li>대표자 : 김이박</li>
               </ul>
               <p>COPYRIGHT @ THE KOREAN COMMITTEE FOR UNISAFE. ALL RIGHT RESERVED
               
               </p>
            </div>
         </div>
      </div>

      </div>
      <!-- wrap종료 -->
</body>

</html>

