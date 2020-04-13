<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 .orderInfo { border:5px solid #eee; padding:10px 20px; margin:20px 0;}
 .orderInfo span { font-size:20px; font-weight:bold; display:inline-block; width:90px; }
 
 .orderView li { margin-bottom:20px; padding-bottom:20px; border-bottom:1px solid #999; }
 .orderView li::after { content:""; display:block; clear:both; }
 
 .thumb { float:left; width:200px; }
 .thumb img { width:200px; height:200px; }
 .gdsInfo { float:right; width:calc(100% - 220px); line-height:2; }
 .gdsInfo span { font-size:20px; font-weight:bold; display:inline-block; width:100px; margin-right:10px; }

</style>
</head>
<body>

<section id="content">
 
 <c:if test="${empty orderList }">
 	<p>어머 아직 주문이 없으시네요!</p>
 </c:if>
 
 <c:if test="${!empty orderList }">
 <ul class="orderList">
  <c:forEach items="${orderList}" var="orderList">
  <li>
  <div>
   <p><span>주문번호</span><a href="orderView?n=${orderList.orderNo}">${orderList.orderNo}</a></p>
   <p><span>수령인</span>${orderList.orderRec}</p>
   <p><span>주소</span>(${orderList.userAddr}) ${orderList.userZone} (${orderList.userPh})</p>
   <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="${orderList.amount}" /> 원</p>
  </div>
  </li>
  </c:forEach>
 </ul>
</c:if>
</section>
 
 <%-- <ul class="orderView">
 
  <c:forEach items="${orderList}" var="orderView">     
  <li>
   <div class="thumb">
    <img src="./update/${orderView.productPhoto}" />
   </div>
   <div class="gdsInfo">
    <p>
     <span>상품명</span>${orderView.productName}<br />
     <span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.productPrice}" /> 원<br />
     <span>구입 수량</span>${orderView.cartStock} 개<br />
     <span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.productPrice * orderView.cartStock}" /> 원                  
    </p>
   </div>
  </li>     
  </c:forEach>
 </ul> --%>

</body>
</html>