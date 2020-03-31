<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>

<script src="https://code.jquery.com/jquery-latest.js"></script>
	
		<section class="animate-in-view">
			<div class="section-content clearfix">
			
			<span  style="font-size: 40px;"> 지원자 리스트</span>
	        </div>
	

	<div class="table" style="position:relative;right: 20px;">

		<div class="table-head">

			<div class="table-head-content section-content clearfix">		
				<div class="th"><span>이름</span></div>
				<div class="th"><span>성별</span></div>
				<div class="th"><span>지원업무</span></div>
				<div class="th"><span>이메일</span></div>
				<div class="th"><span>인성검사 합격여부</span></div>
			</div>

		</div>
	
		<div class="table-body">
			<div class="table-rows">	
				<c:forEach items="${recruit }" var="list" varStatus="status">
					<input type="hidden" value="${list.recruitNo }" id="recNum" name="recruitNo[$]"/>
				
	
					<div class="tr reserved">
								
							<div class="tr-content">
								<div class="tr-head">
																					
									<div class="td">								
										<span>
									<input style="background-color: transparent; cursor:pointer;color: #9fa7a7 " class="boardList"  id="name" type="text" value="${list.recruitName}" readonly="readonly">	
										</span>
									</div>
									
									<div class="td">
									<c:if test="${list.recruitGender == 'M' }">
										<span>남</span>
									</c:if>
									<c:if test="${list.recruitGender == 'F' }">
										<span>여</span>
									</c:if>
									</div>
									
									<div class="td">
									<c:if test="${list.recruitClass == 'cm' }">
   										<td>청소매니저</td>
   										</c:if>
   										<c:if test="${list.recruitClass == 'lm' }">
   										<td>세탁 운반 매니저</td>
   										</c:if>
									</div>					
									<div class="td">
										<span >
											<input style="background-color: transparent; cursor:pointer; color: #9fa7a7" id="reciver" class="boardList" type="text" value="${list.recruitEmail}" readonly="readonly">
										</span>
										
									</div>
										<div class="td">
										<c:if test="${list.recruitClass == 'lm' }">
										<span >
											대상이 아닙니다.
										</span>
										</c:if>
										<c:if test="${list.points eq 0 && list.recruitClass == 'cm'}"> <span>검사 전</span> </c:if>
										<c:if test="${list.points != null && list.points >= 60 }"> <span>합격</span> </c:if>
										<c:if test="${list.points != 0 && list.points < 60 }"> <span>불합격</span></c:if>
									</div>
									
								</div>
								<div class="tr-body">												
										<div class="col-left">										
											<div class="img-wrap">
											
											<c:forTokens items="${list.recruitPhoto }" delims="-" var="photo" varStatus="ii">												
												
												<img src="../careView/care/recruitPhoto/${photo }" style="width: 300px;"alt="dressphoto" />
																			
											</c:forTokens>										
											</div>
										</div>				
									<div class="col-right" style="margin-right: 200px;">
										
									<table style="undefined;table-layout: fixed; width: 275px">
								<colgroup>
						<col style="width: 155px">
						<col style="width: 120px">
									</colgroup>
  									<tr>
    										<td>주민번호</td>  									
   											<td>   											
   									${list.recruitJumin } 											
   											</td>
  									</tr>
  									
  									<tr>
    									<td>연락처</td>
   									    <td>${list.recruitPh }</td>
  									</tr>
  									
  									<tr>
    									<td>모집 구분</td>
    									<c:if test="${list.recruitClass == 'cm' }">
   										<td>청소매니저</td>
   										</c:if>
   										<c:if test="${list.recruitClass == 'lm' }">
   										<td>세탁 운반 매니저</td>
   										</c:if>
  									</tr>
  								
  									<tr>
    									<td>이메일</td>
    									<td>${list.recruitEmail }</td>
                                    </tr>
                                    
 									 <tr>
   										 	<td>우편번호</td>
   										 	<td>${list.postcode}</td>
  									</tr>
  									
  									 <tr>
   										 	<td>주소</td>
   										 	<td>${list.recruitAddr }</td>
  									</tr>
  									
  									
  									
  									
  									<tr>
  										 <td>이력서 첨부내역</td> 
    									 <td>
    									<c:forTokens items="${list.storeFileName}" delims="-"  var="file" varStatus="ii">								
												<c:if test="${ii.index >0 }">
												<a href="../careView/care/resume/${file }" target="_blank">첨부파일${ii.index} </a>
												</c:if>
									</c:forTokens> 
									
    									 </td>
   
  									</tr>
  								
  								
</table>
								
									
										<button class="minimal-btn close-tr elem-line-after">상세 닫기</button> 
									
											
											<button class="minimal-btn close-tr2 " style="margin-right: 10px">| </button> 
											
									
											<a href="#" class="minimal-btn close-tr2 " onclick="javascript:deletelist('${list.recruitNo }')" style="margin-right: 10px"> 리스트 삭제</a>

										<c:if test="${list.points == 0 && list.recruitClass == 'cm' }">
											<button class="minimal-btn close-tr2 " style="margin-right: 10px">| </button> 
											
											<a href="recDetail?recNum=${list.recruitNo }" class="minimal-btn close-tr2 "  id="recruitMail"  style="margin-right: 10px">인성 검사 메일발송</a>
											
										</c:if>
											
										
											
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
	function deletelist(data){
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
	}
</script>
</body>
</html>