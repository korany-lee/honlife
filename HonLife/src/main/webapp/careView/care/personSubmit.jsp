<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>응답내용:</p>
<c:forEach items="${personPoint.personResponse}" var="res" varStatus="ii">
		<p>${ii.count } 번 문항 : ${res } </p> 
</c:forEach>

</body>
</html>