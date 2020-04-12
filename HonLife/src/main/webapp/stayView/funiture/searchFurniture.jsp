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
<div id="list" class="table-body">
			<div class="table-rows">	
				<c:forEach items="${furniture }" var="list" varStatus="status">
					<%-- <input type="hidden" value="${list.recruitNo }" id="recNum" name="recruitNo[$]"/> --%>
				
	
					<div class="tr reserved">
								
							<div class="tr-content">
								<div class="tr-head">
																					
									<div class="td">								
										<span>
									<input style="background-color: transparent; cursor:pointer;color: #9fa7a7 " class="boardList"  id="name" type="text" value="${list.furnitureNo}" readonly="readonly">	
										</span>
									</div>
									
									<div class="td">
									<span>${list.furnitureName }</span>
									</div>
									
									<div class="td">
									<!-- <td> -->
									<span>${list.furnitureType }</span>
									</div>					
									<div class="td">
										<span >
											<fmt:formatDate value="${list.furnitureBuydate }" pattern="yyyy-MM"/>
										</span>
										
									</div>
										<div class="td">
										${list.furnitureState }
									</div>
									
								</div>
								<!-- 상세 시작 -->
								 <div class="tr-body">												
										<div class="col-left">										
											
										</div>				
									<div class="col-right" style="margin-right: 200px;">
										
									<table style="undefined;table-layout: fixed; width: 275px">
								<colgroup>
						<col style="width: 155px">
						<col style="width: 120px">
									</colgroup>
  									<tr>
    										<td>가구 사진</td>  									
   											<td><c:forTokens items="${list.furniturePhoto }"
														delims="-" var="furniturePhoto" varStatus="status">
														<c:if test="${status.count ==1 }">
															<img class="furniture"
																src="/project/stayView/memberView/update/${furniturePhoto }" />
														</c:if>
													</c:forTokens>
											</td>
  									</tr>
  									
  									<tr>
    									<td>가구명</td>
   									    <td>${list.furnitureName }</td>
  									</tr>
  									<tr>
    									<td>가구 색상</td>
   									    <td>${list.furnitureColor }</td>
  									</tr>
  									
  									
  								
  									<tr>
    									<td>가구 번호</td>
    									<td>${list.furnitureNo }</td>
                                    </tr>
                                    
 									 <tr>
   										 	<td>구매날짜</td>
   										 	<td><fmt:formatDate value="${list.furnitureBuydate }" pattern="yyyy-MM"/></td>
  									</tr>
  									
  									 
  									<tr>
   										 	<td>가구 설명</td>
   										 	<td>${list.furniturePoint }</td>
  									</tr>
  									
  									
  									
  									
  									
  								
  								
</table>
								
									
										<button class="minimal-btn close-tr elem-line-after">상세 닫기</button> 
									
											
											
										
											
										
							
																				
											
										
									</div>
										
											
											
								</div> 
							</div>
						</div>
				</c:forEach>

							
			</div>

		</div>
</body>
</html>