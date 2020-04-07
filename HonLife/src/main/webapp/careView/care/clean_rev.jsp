<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



            
</head>

    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
    

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>


      <!--JavaScript at end of body for optimized loading-->
      <link type="text/css" rel="stylesheet" href="../careView/css/materialize.min.css"  media="screen,projection"/>
   
   
    
     <script src="//code.jquery.com/jquery-1.10.2.js"></script>
     
     <script>
     $(document).ready(function(){
    	    $('.datepicker').datepicker();    	
    	    $('.timepicker').timepicker();
    	   
    	  });
     </script>




<body>
	<jsp:include page="../includer/careheader.jsp"/>

<main>



<section>
		<section class="main-section-1">

		<div class="section-content animate-in-view clearfix">

	

<div class="container-contact100">
		<div class="wrap-contact100">
			
				
				<span class="contact100-form-title" >
			청소예약
				</span>
	
				
				
			<form class="col s12">	

    <input type="hidden" value="${userNo}" name="userNo" />
      <div class="row">
        <div class="input-field col s6">
          <input  id="first_name" type="text" name="userName"class="validate" value="${mdto.userName }" readonly="readonly">
          <label for="이름">이름</label>
        </div>
        <div class="input-field col s6" >
          <input id="last_name" type="text" class="validate" name="userPh"  value="${mdto.userPh }" readonly="readonly">
          <label for="연락처">연락처</label>
        </div>
      
      </div>
     
     
     <div class="row">
     <div class="input-field col s6">
     
      <input type="text" class="datepicker">
      <label for="연락처">예약 날짜</label>
		</div>
	<div class="input-field col s6">
  		<input type="text" class="timepicker">
  		<label for="연락처">예약 시간</label>
     </div>
     </div>
   
      

				
				
				
				
				<span class="label-input100" style="font-size: 20px;     padding-right: 400px;">이름</span>
				<div class="wrap-input100 " >
					
					<input class="input100" type="text" name="employeeName" value="" placeholder="이름를 입력하세요">
				</div>
				
				<span class="label-input100"  style="font-size: 20px" >연락처</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100" style="width:  calc((97% - 120px) / 2);">			
					<input class="input100" type="text" value="" id="employeePh"name="employeePh" placeholder="숫자만 입력해주세요" >
				</div>
				
				<span class="label-input100"  style="font-size: 20px" >유선번호</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100" style="width:  calc((97% - 120px) / 2);">			
					<input class="input100" type="text"value="" id="employeeCallnum"name="employeeCallnum" placeholder="숫자만 입력해주세요" >
				</div>
				<span class="label-input100" style="font-size: 20px" >주민번호</span>
				<div class="wrap-input100 bg1 rs1-wrap-input100" style="width: calc((191% - 120px) / 2);">			
					<input class="input100" type="text" value="" id="employeeJumin"name="employeeJumin" placeholder="숫자만 입력해주세요">
				</div>
					<span class="label-input100" style="font-size: 20px; ">예약 시간 선택</span> 
				
				<div class="container-contact100-form-btn" style="width: 16%;">
				  <input type="text" class="datepicker"> 
				</div>
				
				
				
				
				<span class="label-input100" style="font-size: 20px; ">주소</span> 
				
					
				<div class="container-contact100-form-btn" style="width: 16%;">
				<input class="contact100-form-btn" type="button" onclick="execDaumPostcode()" value="우편번호 찾기" class="contact100-form-btn" style="font-weight:20; margin-bottom: 5px;width: 100px;height: 30px;cursor:pointer"> <br>
                 </div>
				
				<div class="wrap-input100 bg1 rs1-wrap-input100">	
				<input class="input100" type="text" value="" id="postcode" name="addrPost" placeholder="우편번호">
				</div>
				<div class="wrap-input100 bg1 rs1-wrap-input100">	
				<input class="input100" type="text" id="address" value="" name="addrMain" placeholder="선택주소">
				</div>
				<span id="guide" style="color:#999;display:none"></span>
				<div class="wrap-input100 bg1 rs1-wrap-input100" style="margin-left: 115px"> 	
				<input class="input100" type="text"  id="detailAddress" value="" name="addrDetail" placeholder="상세주소">
				</div>
				<div class="wrap-input100 bg1 rs1-wrap-input100">	
				<input class="input100" type="text" id="extraAddress" placeholder="참고항목">
				</div>


<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

  
  
    <div class="row">
  <div class="input-field col s6">
  
  <select class="browser-default">
    <option value="" disabled selected name="cleanSize">청소 평수를 선택해주세요</option>
    <c:forEach items="${ fee}" var="f" varStatus="">
    <option value="${f.cleanSize }">${f.cleanSize}평 / ${f.cleanFee}원</option>
    </c:forEach>
  </select>
 
  </div>
  
    <div class="input-field col s6">
  
  <select class="browser-default">
    <option value="" disabled selected name="employeeNo">청소 근무자를 선택해주세요</option>
	<c:forEach items="${empList }" var="emp" varStatus="ii"> 
    <option value="${emp.employeeNo }">${emp.employeeName }</option>
 </c:forEach>
  </select>
 
  </div>
  </div>
  
  
  <a class="waves-effect waves-light btn-small" onclick="execDaumPostcode()"style="border-radius: 30px; background-color: black;">주소 검색</a>
   <div class="row">
        <div class="input-field col s6">
          <input  type="text" id="address" name="cleanrevAddr" value="" readonly="readonly" onclick="javascript:aa();">
          <p id="OK"></p>
        </div>
        
  
  <div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
        
  <div class="row">
   
      <div class="row">
        <div class="input-field col s12">
          <textarea id="textarea1" class="materialize-textarea" name="cleanrevDemand"></textarea>
          <label for="textarea1">요청 사항을 입력해주세요!</label>
        </div>
      </div>  
  </div>
  
  
  
  
  
  </div>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a0737b58e3113159018b3cc43d251a2a&libraries=services"></script>
>>>>>>> branch 'master' of https://github.com/korany-lee/honlife.git
<script>
	function aa(){
		alert('주소 검색버튼을 눌러주세요!');		
	}
	
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("address").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {
                    	document.getElementById("OK").innerHTML= "이 주소가 정확한가요 ??";
                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                        
                    }
                });
            }
        
        
        }).open();
        
        
    }
</script>
						
			<!-- 	<input type="button" onClick="goPopup();" value="우편번호 검색" class="contact100-form-btn" style="margin-bottom: 5px;width: 100px;height: 30px;"/>
				<div class="wrap-input100 "> 			
					<input type="text"  class="input100" style="width:500px;" id="roadFullAddr"  name="recruitAddr"  placeholder="주소를 입력해주세요"/>				
				</div> -->
	

	
		
				
				
				

 <button class="btn waves-effect waves-light" type="submit" name="action" style="width: 100%; border-radius: 30px; background-color: black">예약하기
    <i class="material-icons right">send</i>
  </button>
				       
			</form>
		</div>
	</div>

</div>

	

<<<<<<< HEAD
	<script src="../careView/contactform/vendor/daterangepicker/moment.min.js"></script>
	<script src="../careView/contactform/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="../careView/contactform/vendor/countdowntime/countdowntime.js"></script>
	
	<script src="../careView/contactform/js/main.js"></script>
	<script src="../careView/contactform/vendor/select2/select2.min.js"></script>
	<script>
	 $(document).ready(function(){
		    $('.datepicker').datepicker();
		  });
	
	
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});


			$(".js-select2").each(function(){
				$(this).on('select2:close', function (e){
					if($(this).val() == "Please chooses") {
						$('.js-show-service').slideUp();
					}
					else {
						$('.js-show-service').slideUp();
						$('.js-show-service').slideDown();
					}
				});
			});
		})
	</script>
=======
>>>>>>> branch 'master' of https://github.com/korany-lee/honlife.git

	</section>

</section>

</main>

		<script  type="text/javascript" src="../careView/js/materialize.js"></script>
	
<jsp:include page="../includer/carefooter.jsp"/>
</body>
</html>