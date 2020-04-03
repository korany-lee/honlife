<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach items="${furniture }" var="furnitures">
		<div class="col-lg-4 col-md-6">
                  <div class="single-product">
                    <div class="product-img">
                    <c:forTokens items="${furnitures.furniturePhoto }" delims="-" var="furniturePhoto" varStatus="status">
                    	<c:if test="${status.count ==1 }">
                      <img class="aaaa" src="/project/stayView/memberView/update/${furniturePhoto }" alt="" width="250px" height="250px"/>
                      	</c:if>
                      </c:forTokens>
                      <div class="p_icon">
                        <a href="#">
                          <i class="ti-eye"></i>
                        </a>
                        <a href="#">
                          <i class="ti-heart"></i>
                        </a>
                        <a href="#">
                          <i class="ti-shopping-cart"></i>
                        </a>
                      </div>
                    </div>
                    <div class="product-btm">
                      <a href="furnitureDetail?furnitureNo=${furnitures.furnitureNo }" class="d-block">
                        <h4>${furnitures.furnitureName } 상세보기</h4>
                      </a>
                      <div class="mt-3">
                        <span class="mr-4">￦<fmt:formatNumber value="${furnitures.furnitureRentalFee }" pattern="#,###"/>  (1일 렌탈비)</span>
                        
                      </div>
                    </div>
                  </div>
                </div>
	</c:forEach>
</body>
</html>