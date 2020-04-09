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
	  
   $('select#cleanrevTime').change( function() {		 
	   console.log($('.datepicker').datepicker().val()); 
	   console.log($('select#cleanrevTime').val());
	    	$.ajax({
		   		type:"POST",
		   		url:"../empsel",
		   		data:'time='+$('select#cleanrevTime').val()+"&date="+$('.datepicker').datepicker().val(),
		   		datatype:'html' ,
		   		success: function(data1){
	   			 $('#employee').html(data1);   			 
		   		}	   			   	
		   	}); 		    
	   }); 
   

 });
	</script>
<section>
		<section class="main-section-1">

		<div class="section-content animate-in-view clearfix">

	

<div class="container-contact100">
		<div class="wrap-contact100">
			
				
				<span class="contact100-form-title" >
			청소예약
				</span>
	
				

				
				
	<form class="col s12" method="POST" name="frm" id="frm" action="cleanAct" >	

<div class="input-field col s6">
    <label>예약번호</label>
          <input  id="name" type="text" name="cleanrevNo" value="${revNo}" readonly="readonly">
</div>
    <input type="hidden" value="${userNo}" name="userNo" />
     <input type="hidden" value="${userId}" name="useId" />
      <input type ="hidden" value="${member.userEmail}" name="userEmail">
      
      <div class="row">
        <div class="input-field col s6">
          <input  id="name" type="text" name="userName" value="${member.userName }" readonly="readonly">
          <label for="name">이름</label>
        </div>
        <div class="input-field col s6" >
          <input id="ph" type="text"name="userPh"  value="${member.userPh }" readonly="readonly">
          <label for="ph">연락처</label>
        </div>
      
      </div>
     
     
     <div class="row">
     
     <div class="input-field col s6">
     <label>예약 날짜</label>
      <input type="text" class="datepicker" id="cleanrevDate"name="cleanrevDate" value="" placeholder="예약날짜">
		</div>
		
    <div class="input-field col s6" >   
  		<select class="browser-default" name="cleanrevTime" id="cleanrevTime">
    	 <option value="" disabled selected >원하시는 시간을 선택해주세요!</option>
	     <option value="10"  >10시</option>
	     <option value="12"  >12시</option>
	     <option value="14"  >14시</option>
	     <option value="16"  >16시</option>
	     <option value="18"  >18시</option>
  </select>
     
     </div>
   </div>

		<script>		
			$( document ).ready( function() {
				$( 'select#size' ).change( function() {
					if( $( 'select#size' ).val() == 8 ){
						$('#pay').val(40000+'원');				
					}else if($( 'select#size' ).val() == 10 ){
						$('#pay').val(46000+'원');								
					}else if($( 'select#size' ).val() == 13) {
						$('#pay').val(55000+'원');								
					}else if($( 'select#size' ).val() == 16 ){
						$('#pay').val(64000+'원');							
					}				
				});					
			});		
		</script>
    <div class="row">
  <div class="input-field col s6">  
  <select class="browser-default" name="cleanfeeSize" id="size" >
      <option value="" disabled selected >청소 평수를 선택해주세요</option>
    <c:forEach items="${ fee}" var="f" varStatus="ii">
    <option  value="${f.cleanSize }">${f.cleanSize}평</option>
    </c:forEach>
  </select>
 
  </div>
    <div class="input-field col s6" id="employee">
  <select class="browser-default" name="employeeNo">
    <option disabled selected >청소 근무자를 선택해주세요</option>
  </select>
 
  </div>
  </div>
  
  <div class="row">
      <div class="row">
      <label style="font-size: 20px;"> 총 결제금액</label>
        <div class="input-field col s12">
         <input  id="pay" type="text" name="revPay"readonly="readonly" style="font-size: 35px;" > 
         
        </div>
      </div>  
  </div>
  
  
  
  <a class="waves-effect waves-light btn-small" onclick="execDaumPostcode()"style="border-radius: 30px; background-color: black;">주소 검색</a>
   <div class="row">
        <div class="input-field col s6">
          <input  type="text" id="address" name="cleanrevAddr" value="" readonly="readonly" onclick="javascript:aa();">
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
       <label style="font-size: 20px;">특별히 신경써줘야 할부분이 있으시면 적어주세요!</label>
        <div class="input-field col s12">
          <textarea id="textarea1" class="materialize-textarea" name="cleanrevDemand"></textarea>
          
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

	
<script  type="text/javascript" src="../careView/js/materialize.js"></script>

<jsp:include page="../includer/carefooter.jsp"/>
</body>
</html>