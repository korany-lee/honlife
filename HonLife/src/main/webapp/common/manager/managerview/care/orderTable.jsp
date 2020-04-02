<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<table style="undefined;table-layout: fixed; width: 627px">
<colgroup>
<col style="width: 130px">
<col style="width: 130px">
<col style="width: 130px">
<col style="width: 130px">
<col style="width: 130px">
</colgroup>
  <tr>
    <th>품명</th>
    <th>단가</th>
    <th>수량</th>
    <th>금액</th>
    <th>총 금액</th>
  </tr>
  
  
  <tr>
  <c:forTokens items="${table.cleanitemName }" delims="," var="name" varStatus="i">
    <c:if test="${i.index >0 }">
    <td>${name }</td>
    </c:if>
    </c:forTokens>
    <c:forTokens items="${table.cleanitemPrice }" delims="," var="price" varStatus="i">
    <c:if test="${i.index >0 }">
    <td>${price }</td>
    </c:if>
    </c:forTokens>
    <c:forTokens items="${table.cleanitemQty }" delims="," var="qty" varStatus="i">
   <c:if test="${i.index >0 }">
    <td>${qty }</td>
    </c:if>
    </c:forTokens>
    <c:forTokens items="${table.cleanitemSumprice }" delims="," var="sumprice" varStatus="i">
    <c:if test="${i.index >0 }">
    <td>${sumprice }</td>
    </c:if>
    </c:forTokens>

  </tr>

  </table>


</body>
</html>