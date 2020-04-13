<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Hon Life - 예약날짜 선택</title>
<link rel="stylesheet"
   href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<style>
/*datepicker에서 사용한 이미지 버튼 style적용*/
img.ui-datepicker-trigger {
   margin-left: 5px;
   vertical-align: middle;
   cursor: pointer;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- datepicker 한국어로 -->
<script
   src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
<script>
            $(function() {
                
            
                //오늘 날짜를 출력
                $("#today").text(new Date().toLocaleDateString());

                //datepicker 한국어로 사용하기 위한 언어설정
                $.datepicker.setDefaults($.datepicker.regional['ko']); 
                
                // 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
                // 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

                //시작일.
                $('#fromDate').datepicker({
                    showOn: "both",                     // 달력을 표시할 타이밍 (both: focus or button)
                    buttonImage: "/project/stayView/memberView/img/calender.jpg", // 버튼 이미지
                    buttonImageOnly : true,             // 버튼 이미지만 표시할지 여부
                   // buttonText: "날짜선택",             // 버튼의 대체 텍스트
                    dateFormat: "yy-mm-dd",             // 날짜의 형식
                    changeMonth: true,                  // 월을 이동하기 위한 선택상자 표시여부
                    minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
                    onClose: function( selectedDate ) {    
                        // 시작일(fromDate) datepicker가 닫힐때
                        // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                        $("#toDate").datepicker( "option", "minDate", selectedDate );
                    }                
                });

                //종료일
                $('#toDate').datepicker({
                    showOn: "both", 
                    buttonImage: "/project/stayView/memberView/img/calender.jpg", 
                    buttonImageOnly : true,
                   // buttonText: "날짜선택",
                    dateFormat: "yy-mm-dd",
                    changeMonth: true,
                    //minDate: 0, // 오늘 이전 날짜 선택 불가
                    onClose: function( selectedDate ) {
                        // 종료일(toDate) datepicker가 닫힐때
                        // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                        $("#fromDate").datepicker( "option", "maxDate", selectedDate );
                    }                
                });
            });
        </script>
</head>
<body>
   오늘 날짜 :
   <span id="today"></span><br>
   <h2>${roomNo }호 예약하기</h2> <br>   
   		 <input type="hidden" value="${roomNo }" id="roomNo" name="roomNo">
         <label for="fromDate">입실일자</label> <input type="text" name="fromDate" id="fromDate"> 
         <label for="toDate">퇴실일자</label> <input type="text" name="toDate" id="toDate"><br> 
         <input type="button" value="예약하기" id="submit">
      
</body>
<script>
$(function(){
      $("#submit").click(function(){
         if($("#fromDate").val() == ""){
               $("#fromDate").focus();
               alert("입실날짜를 선택하세요.");
               return false;
            }
            if($("#toDate").val() == ""){
               $("#toDate").focus();
               alert("퇴실날짜를 선택하세요.");
               return false;
            }
         
      
          
        /*    $.ajax({
				type : "POST",
				url : "ReservationTimeCheck",
				data : {"startdate=": $("#fromDate").val(), "enddate=":$("#toDate").val(),"roomNo=":$("#roomNo").val()} ,
				datatype : "html",
				success : dateCheck
				
			});  */   
         	 var fromDate =$("#fromDate").val();
			var toDate =$("#toDate").val();
			var roomNo =$("#roomNo").val();
			
			
         
          window.opener.location.href="ReservationTimeCheck?startdate="+fromDate+"&&enddate="+toDate+"&&roomNo="+roomNo;
          window.self.close();   
         
        
      });
      
/*   function dateCheck(responseText,statusText,xhr,$form){
	if(responseText.trim()=="0"){   //겹치는 예약 없을때
		window.opener.location.href="ReservationPage?startdate="+fromDate+"&&enddate="+toDate+"&&roomNo="+roomNo ;
		window.self.close();
	}else{// 예약이 겹칠때
		location.href="dateFail";
	}
} */  


});

</script>
</html>