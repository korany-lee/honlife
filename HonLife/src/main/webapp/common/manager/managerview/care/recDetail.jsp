<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
/* $(function(){	
	$(document).ready(function(){	
		
		$.ajax({	        
	        type: "post",
	        url: "mail",
	        data: "recNum="+$('#recNum').val()+"&reciver="+$('#reciver').val()+"&name="+$('#name').val(),						
	        dataType:"html",
	        success : function test(data){	 
	        	
	        		$("#maincall").html(data); 
	        		},
	        error : function error(){alert("error");}         
	 }); 
	
		
		
	});
}); */
</script>

</head>




<body>




	
		<section class="animate-in-view">
			<div class="section-content clearfix">
			
			<span  style="font-size: 40px;"> 지원자 리스트</span>
	        </div>


	<div class="table" style="position:relative;right: 20px;">

		<div class="table-head">

			<div class="table-head-content section-content clearfix">
			
				<div class="th"><span>선택</span></div>
				<div class="th"><span>이름</span></div>
				<div class="th"><span>성별</span></div>
				<div class="th"><span>지원업무</span></div>
				<div class="th"><span>이메일</span></div>
			</div>

		</div>
	
		<div class="table-body">
			<div class="table-rows">	
				
															
				<input type="hidden" value="${one.recruitNo }" id="recNum"/>
					<div class="tr reserved">								
							<div class="tr-content">
								<div class="tr-body">																					
									<div class="col-right" style="margin-right: 200px;">
										
									<table style="undefined;table-layout: fixed; width: 275px">
								<colgroup>
						<col style="width: 155px">
						<col style="width: 120px">
									</colgroup>
  									<tr>
    										<td>주민번호</td>
    									
   											<td>											
   									${one.recruitJumin }											
   											</td>
  									</tr>
  									<tr>
    									<td>연락처</td>
   									    <td>${one.recruitPh }</td>
  											</tr>
  									<tr>
    									<td>모집 구분</td>
    									<c:if test="${one.recruitClass == 'cm' }">
   										<td>청소매니저</td>
   										</c:if>
   										<c:if test="${one.recruitClass == 'lm' }">
   										<td>세탁 운반 매니저</td>
   										</c:if>
  									</tr>
  								
  									<tr>
    									<td>이메일</td>
    									<td>${one.recruitEmail }</td>
                                    </tr>
 									 <tr>
   										 <td>주소</td>
    										<td>${one.recruitAddr }</td>
  									</tr>
  								
  								
</table>
								
									
										<button class="minimal-btn close-tr elem-line-after">상세 닫기</button> 
									
											
											<button class="minimal-btn close-tr2 " style="margin-right: 10px">| </button> 
											
									
											<a href="#" class="minimal-btn close-tr2 " id="recruitDelete" style="margin-right: 10px"> 리스트 삭제</a>
											<a href="#" class="minimal-btn close-tr2 " id="recruitDetail" style="margin-right: 10px"> Detail</a>
									</div>
								</div>
							</div>
						</div>
				

							
			</div>

		</div>

	</div>


</section>
		
	
	
		
			<div id="results" style="display:none;" ></div>

<style id='wpcf7-wpcf7-5e6f0acff3915-inline-inline-css' type='text/css'>
#wpcf7-5e6f0acff3915 {display:none !important; visibility:hidden !important;}
</style>
<script type='text/javascript'>
/* <![CDATA[ */
var wpcf7 = {"apiSettings":{"root":"https:\/\/www.voxverticalvillage.ro\/en\/wp-json\/contact-form-7\/v1\/","namespace":"contact-form-7\/v1"}};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=5.1.6'></script>


<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-content/themes/voxverticalvillage/assets/js/slick.min.js'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var url = {"archive_ap":"https:\/\/www.voxverticalvillage.ro\/en\/residences\/"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-content/themes/voxverticalvillage/assets/js/scripts.min.js'></script>
<script type='text/javascript' src='https://www.voxverticalvillage.ro/wp-includes/js/wp-embed.min.js?ver=5.3.2'></script>


</body>
</html>