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
    <th>금액</th>
  </tr>
  

  	<c:forEach items="${name }" var="name" varStatus="sts">

  <tr align="center">
    <td>${name}</td>
 	<td>${price[sts.index]}<b>원</b></td>
 	<td>${qty[sts.index]}<b>개</b></td>
 	<td>${sumPrice[sts.index]}<b>원</b></td>
 </tr>
 		
  </c:forEach>
  		<tr >
 			<td colspan="4" align="right" style="font-size:18px">총 발주금액: &nbsp;&nbsp;${table.allsum }원</td>
 		</tr>
    



  </table>


</body>
</html>