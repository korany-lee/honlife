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

<body>
	<jsp:include page="../includer/careheader.jsp"/>

<main>




<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" >
 $(function(){  	
	   $('.datepicker').datepicker();
	  
 

 });
	</script>
<section>
		<section class="main-section-1">

		<div class="section-content animate-in-view clearfix">

	

<div class="container-contact100">
		<div class="wrap-contact100">
			
				
				
				
				
				
				
				<span class="contact100-form-title" >
			세탁예약
				</span>
	

				
	<form class="col s12" method="POST" name="frm" id="frm" action="laundryAct" >	

<div class="input-field col s6">
    <label>예약번호</label>
          <input  id="name" type="text" name="laundryrevNo" value="${LrevNo}" readonly="readonly">
</div>
    
      <div class="row">
        <div class="input-field col s6">
          <input  id="name" type="text" name="userName" value="${member.userName }">
          <label for="name">이름</label>
        </div>
        <div class="input-field col s6" >
          <input id="ph" type="text"name="userPh"  value="${member.userPh }">
          <label for="ph">연락처</label>
        </div>
      
      </div>
     
     
     <div class="row">
     
     <div class="input-field col s6">
     <label>수거 희망 날짜</label>
      <input type="text" class="datepicker" id="cleanrevDate"name="laundryrevDate" value="" placeholder="수거날짜">
		</div>
		
    <div class="input-field col s6" >   

          <label>배송 희망 날짜</label>
      <input type="text" class="datepicker" id="cleanrevDate"name="laundryrevRecdate" value="" placeholder="배송날짜">
		
     </div>
   </div>

		
 <div class="row">  
  <div class="input-field col s6">  

  </div>
  
    <div class="input-field col s6" >

  </div>
  </div>
  
  <div class="row">
      <div class="row">

      </div>  
  </div>
  
  
  
  <a class="waves-effect waves-light btn-small" onclick="execDaumPostcode()"style="border-radius: 30px; background-color: black;">주소 검색</a>
   <div class="row">
        <div class="input-field col s6">
          <input  type="text" id="address" name="laundryrevAddr" value="" readonly="readonly" onclick="javascript:aa();">
          <p id="OK"></p>
        </div>
        
  
  <div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
        
	
  
  
  
  
  
  </div>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a0737b58e3113159018b3cc43d251a2a&libraries=services"></script>

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
						


      <div class="row">
     
        <div class="input-field col s12">
    
        </div>
      </div>  



 																				<!-- onclick="javascript:check()"  -->
 <button class="btn waves-effect waves-light"  id="sub" type="submit" style="width: 100%; border-radius: 30px; background-color: black">예약하기
    <i class="material-icons right">send</i>
  </button>
				       
			</form>
			
			
			
			
			
			
			
		</div>
	</div>

</div>

	

	
	<script src="../careView/contactform/js/main.js"></script>



	</section>

</section>

</main>


		<script  type="text/javascript" src="../careView/js/materialize1.js"></script>

	


<jsp:include page="../includer/carefooter.jsp"/>
</body>
</html>