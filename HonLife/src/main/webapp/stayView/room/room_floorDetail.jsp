<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tg1  {border-collapse:collapse;border-spacing:0;}
.tg1 td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg1 th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg1 .tg-cly1{text-align:left;vertical-align:middle}
.tg1 .tg-p3b5{background-color:#00d2cb;color:#ffffff;border-color:#00d2cb;text-align:center;vertical-align:middle}
.tg1 .tg-y8n3{background-color:#003532;color:#ffffff;text-align:center;vertical-align:middle}
.tg1 .tg-0lax{text-align:left;vertical-align:top}
.tg1 .tg-nrbz{background-color:#34ff34;color:#ffffff;border-color:#34ff34;text-align:center;vertical-align:middle}
</style>
</head>
<body>
<table class="tg1" style="undefined;table-layout: fixed; width: 444px">
<colgroup>
<col style="width: 111px">
<col style="width: 111px">
<col style="width: 111px">
<col style="width: 111px">
</colgroup>
  <tr>
    <th class="tg-p3b5" colspan="4">강</th>
  </tr>
  <tr align="center">
  <c:set var="i111" value="0" scope="request" />
   <c:if test="${!empty list }">
	   <c:forEach items="${list }" var="aaa" varStatus="status">
	   		<td class="tg-0lax">${aaa.roomNo }</td>
	   		<c:if test="${status.count == 4}">
			        </tr>
			    	<tr>
					    <td class="tg-y8n3" colspan="4">복도</td>
					</tr>
					<tr>
			</c:if>
			<c:set var="i111" value="${status.count}" scope="request" />
	   	</c:forEach>
	   	<c:forEach begin="${i111}" end="8" > 
	   		<td class="tg-0lax">&nbsp;</td>
	   	</c:forEach>
    </c:if>
    
    
    <c:if test="${empty list }" >
    	<c:forEach begin="1" end="8" var = "ii" step="1">
	    	<td class="tg-0lax">&nbsp;</td>
	    	<c:if test="${ii == 4}">
		        </tr>
		    	<tr>
				    <td class="tg-y8n3" colspan="4">복도</td>
				</tr>
				<tr>
		    </c:if>
    	</c:forEach>
    </c:if>
  </tr>  
 <tr>
    <td class="tg-y8n3" colspan="2">도시</td>
    <td class="tg-nrbz" colspan="2">산</td>
  </tr>
</table>
</body>
</html>