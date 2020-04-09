<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<body>
<script  type="text/javascript" src="../careView/js/materialize.js"></script>

  <select class="browser-default" name="employeeNo">
    <option disabled selected >청소 근무자를 선택해주세요</option>
	<c:forEach items="${empList }" var="emp" varStatus="ii"> 
    <option value="${emp.employeeNo }">${emp.employeeName }</option>
 </c:forEach>
  </select>

</body>
</html>