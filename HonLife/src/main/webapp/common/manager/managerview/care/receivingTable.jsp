<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table style="undefined;table-layout: fixed; width: 182px">
<colgroup>
<col style="width: 92px">
<col style="width: 90px">
</colgroup>

  <tr>
    <th>품명</th> <th>수량 </th> <th>현 재고수량</th> 
  </tr>
  <c:forEach items="${table}" var="a" varStatus="ii">
  <tr>

    <td>
    <input type="text" value="${a. cleanitemName}" id="cleanitemName" name="cleanitemName">
    </td>
    
     <td>
    <input type="text" value="${a.cleanitemPrice }" id="cleanitemPrice" name="cleanitemPrice">     
     </td>
     
       <td>
   <input type="text" value="${a.cleanitemrealQty }" id="cleanitemrealQty" name="cleanitemrealQty">     
     </td>
       <td>
      초기 발주량 :$ {a.cleanitemQty}
     </td>
       <td>  
     </td>
  </tr>
  </c:forEach>
</table>
</body>
</html>