<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>청소예약 목록</title>
</head>


<body>

<script src="https://code.jquery.com/jquery-latest.js"></script>
	
		<section class="animate-in-view">
			<div class="section-content clearfix">
			
			<span  style="font-size: 40px;">예약 리스트</span>
	        </div>
	

	<div class="table" style="position:relative;right: 20px;">

		<div class="table-head">

			<div class="table-head-content section-content clearfix">	
				<div class="th"><span>예약번호</span></div>	
				<div class="th"><span>예약자</span></div>
				<div class="th"><span>담당 매니저</span></div>
				<div class="th"><span>청소 평수</span></div>
				<div class="th"><span>진행상태</span></div>			
			</div>

		</div>
	
		<div class="table-body">
			<div class="table-rows">	
				<c:forEach items="${cl }" var="cl" varStatus="status">
				
				
	
					<div class="tr reserved">
								
							<div class="tr-content">
								<div class="tr-head">
																					
									<div class="td">								
										<span>
									<input style="background-color: transparent; cursor:pointer;color: #9fa7a7 " class="boardList"  id="name" type="text" value="${cl.cleanrevNo}" readonly="readonly">	
										</span>
									</div>
									<c:forTokens delims="" items="${cl.memDTO.userName }" var="name" varStatus="i" > 
									<div class="td">
								  	${name }
									</div>
									</c:forTokens>
									
									<c:forTokens items="${cl.empDTO.employeeName }" delims="" var="empName" varStatus="ii">
									<div class="td">
									${empName}
									</div>			
									</c:forTokens>		
									
									<div class="td">
										<span >
											<input style="background-color: transparent; cursor:pointer; color: #9fa7a7" id="reciver" class="boardList" type="text" value="${cl.cleanfeeSize }" readonly="readonly">
										</span>
										
									</div>
									<div class="td">
										<c:forTokens items="${cl.rcDTO.revChk }" delims="" var="chk" varStatus="iii"> 
										<c:if test="${chk == 1 }">
										<span >
											매니저 확인전
										</span>
										</c:if>
										
										<c:if test="${chk == 2 }">
										<span >
											매니저 확인 ,청소전
										</span>
										</c:if>
										
										</c:forTokens>
									</div>
									
									
								
									
								</div>
								<div class="tr-body">												
												
									<div class="col-right" style="margin-right: 200px;">
										
													
										<button class="minimal-btn close-tr elem-line-after">상세 닫기</button> 
									
											
											<button class="minimal-btn close-tr2 " style="margin-right: 10px">| </button> 
											
									
											<a href="#" class="minimal-btn close-tr2 " onclick="javascript:deletelist('')" style="margin-right: 10px"> 리스트 삭제</a>

										
										
											
									</div>
								</div>
							</div>
						</div>
				</c:forEach>

							
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

<script type="text/javascript">
	/* function deletelist(data){
		$.ajax({	        
	        type: "post",
	        url: "../care/recruitDel",
	        data: "recNum=" + data,						
	        dataType:"html",
	        success : function test(data){	 
	        	
	        		$("#maincall").html(data); 
	        		},
	        error : function error(){alert("error");}         
	 }); 
	} */
</script>
</body>


</html>





