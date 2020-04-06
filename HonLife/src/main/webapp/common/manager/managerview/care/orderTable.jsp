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
<col style="width: 80px">
<col style="width: 80px">
<col style="width: 80px">
<col style="width: 80px">

</colgroup>
  <tr>
    <th>품명</th>
    <th>단가</th>
    <th>수량</th>
    <th>총 금액</th>
  </tr>
  

  	<c:forEach items="${table }" var="table" varStatus="sts">

  <tr align="center">
    <td>${table.cleanitemName}</td>
 	<td>${table.cleanitemPrice}<b>원</b></td>
 	<td>${table.cleanitemQty}<b>개</b></td>
 	<td>${table.cleanitemSumprice}<b>원</b></td>
 </tr>
 		
  </c:forEach>
  		
    



  </table>


</body>
</html>