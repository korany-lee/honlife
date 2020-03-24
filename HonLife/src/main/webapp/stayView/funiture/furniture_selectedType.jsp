<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table >
				<colgroup>
					<col style="width: 250px">
					<col style="width: 250px">
					<col style="width: 250px">
					<col style="width: 250px">
				</colgroup>
				<tr align="center" valign="middle">
				<c:forEach var="list" items="${furniture }" varStatus="Eachstatus">
					
						<td><c:forTokens items="${list.furniturePhoto }" delims="-" var="furniturePhoto" varStatus="status">
							<c:if test="${status.count ==1 }">
								<img class="furniture" src="/project/common/manager/update/${furniturePhoto }" />
							</c:if>
							</c:forTokens><br/>
							<a href="#" class="a2">${list.furnitureName }</a>
						</td>
					<c:if test="${Eachstatus.count % 4 == 0 }">
					</tr>
					<tr align="center" valign="middle">
					</c:if>		
			
	</c:forEach>	
	</tr>
</table>
</body>
</html>