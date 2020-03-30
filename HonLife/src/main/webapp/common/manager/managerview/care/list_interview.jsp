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
				<div class="th"><span>선택 </span></div>
				<div class="th"><span>이름</span></div>		
				<div class="th"><span>이메일</span></div>
				<div class="th"><span>지원자 확인 여부</span></div>
	
			</div>

		</div>
	
		<div class="table-body">
			<div class="table-rows">	
				<c:forEach items="${interview }" var="list" varStatus="status">
															
				<input type="hidden" value="${list.recruitNo }" id="recNum"/>
	
					<div class="tr reserved">
								
							<div class="tr-content">
								<div class="tr-head">
								<div class="td">
								<span>
									<input type="checkbox" name="chkbox" >
								</span>
								
								</div>															
									<div class="td">								
										<span>
									<input style="background-color: transparent; cursor:pointer;color: #9fa7a7 " class="boardList"  id="name" type="text" value="${list.recruitName}" readonly="readonly">	
										</span>
									</div>																									
									<div class="td">
										<span >
											<input style="background-color: transparent; cursor:pointer; color: #9fa7a7" id="reciver" class="boardList" type="text" value="${list.recruitEmail}" readonly="readonly">
										</span>
										
									</div>
									<div class="td">
							<c:if test="${list.interview == 1 }">
									  확인
				             </c:if>   
				             <c:if test="${list.interview != 1 }">
									  미확인
				             </c:if> 
				                                           
									</div>
									<div class="td">
									 						<c:if test="${list.interview != 1}">
																<a href="intDetail?recNum=${list.recruitNo }" id="interviewMail" style="margin-right: 10px">면접 메일 발송</a>
															</c:if>
															<c:if test="${list.interview == 1}">
															    <a href="intDetail?recNum=${list.recruitNo }" id="empRegMail" style="margin-right: 10px">사원 등록메일 발송</a>
															</c:if>
															<a href="#" id="recruitDelete" style="margin-right: 10px"> 리스트 삭제</a>
																							
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


</body>
</html>