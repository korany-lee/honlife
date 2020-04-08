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
<body>
<div class="table" style="position:relative;right: 20px;" id="detail">

		<div class="table-head">

			<div class="table-head-content section-content clearfix">		
				<div class="th"><span>예약번호</span></div>
				<div class="th"><span>가구번호</span></div>
				<div class="th"><span>가구명</span></div>
				<div class="th"><span>임대날짜</span></div>
				<div class="th"><span>반납날짜</span></div>
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
									<input style="background-color: transparent; cursor:pointer;color: #9fa7a7 " class="boardList"  id="name" type="text" value="${list.furnitureName}" readonly="readonly">	
										</span>
									</div>
									
									<div class="td">
									<span></span>
									</div>
									
									<div class="td">
									<!-- <td> -->
									<span></span>
									</div>					
									<div class="td">
										
										
									</div>
										<div class="td">
										<a href="#" >ㅁㄴㅇㅇㄴ</a>
									</div>
									
								</div>
								
							</div>
						</div>
					
				</c:forEach>

							
			</div>

		</div>

	</div>
</body>
</html>