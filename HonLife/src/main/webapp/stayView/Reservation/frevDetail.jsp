<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.1.min.js"></script>  
 	<script type="text/javascript">
 	$(function() {
		$("#setting").click(function() {
			  if(confirm('���� ������ �Ϸ� �Ǿ����ϱ�?')){
				  location.href="furnitureSetting?revNum=" +$("#Num").val();
			  }else{
				  return;
			  }
			 
		});  
		
		
		
}); 

</script>
<a href="furnitureSetting?revNum=${rev.roomRevNo }">�غ� �Ϸ�</a>
<body>
<div class="table" style="position:relative;right: 20px;" id="detail">

		<div class="table-head">

			<div class="table-head-content section-content clearfix">		
				<div class="th"><span>������ȣ</span></div>
				<div class="th"><span>��������</span></div>
				<div class="th"><span>������</span></div>
				<div class="th"><span>����</span></div>
				<div class="th"><span>��������</span></div>
			</div>

		</div>
	
		<div id="list" class="table-body">
			<div class="table-rows">	
				<c:forEach items="${furniture }" var="list" varStatus="status">
					<%-- <input type="hidden" value="${list.recruitNo }" id="recNum" name="recruitNo[$]"/> --%>
				
					
					<div class="tr reserved">
								
							<div class="tr-content">
								<div class="tr-head">
																					
									<div class="td">								
										<span>
											${list.furnitureNo }
										</span>
									</div>
									
									<div class="td">
									<span>
										${list.furnitureType }
									</span>
									</div>
									
									<div class="td">
									<!-- <td> -->
									<span>${list.furnitureName }</span>
									</div>					
									<div class="td">
										
										<span>
										${list.furnitureColor }
									</span>
									</div>
										<div class="td">
										<span>${list.furnitureState }</span>
									</div>
									
								</div>
								
							</div>
						</div>
					
				</c:forEach>

							
			</div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="hidden" value="${rev.roomRevNo }" id="Num">
			<input type="button" id ="setting" value="�غ�Ϸ�" >
			

		</div>

	</div>
</body>
</html>