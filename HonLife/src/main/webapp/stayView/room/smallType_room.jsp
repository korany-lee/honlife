<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr align="center">
			<td>호실번호</td><td>면적</td><td>뷰</td><td>객실용도</td><td>평점</td><td>내선번호</td><td>현재상태</td>
		</tr>
		
			<c:forEach items="${room }" var="room" >
		<tr align="center" valign="middle">
			<td align="center">
				<a class="a2" href ="roomDetail?num=${room.roomNo }">${room.roomNo }호</a>
			</td>
	<td align="center">${room.roomSize }평</td>
	<td align="center">${room.roomView }뷰</td>
	<td align="center">${room.roomUsage}</td>
	<td align="center">${room.roomScore }</td>
	<td align="center">${room.roomCallNum }</td>
	<td align="center">${room.roomState }</td>
		
	
</tr>
</c:forEach>
	</table>
</body>
</html>