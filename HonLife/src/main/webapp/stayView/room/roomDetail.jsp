<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �󼼺���</title>
<link rel="stylesheet" href="/project/stayView/memberView/css/content.css"></link>
<link rel="stylesheet" href="/project/stayView/memberView/css/reset.css"></link>
<link rel="stylesheet" href="/project/stayView/memberView/css/layout.css"></link>
<link rel="stylesheet" href="/project/stayView/memberView/css/font.css"></link>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"></link>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css" href="/project/stayView/memberView/css/slick.css"></link>

</head>
<body>
	<table class="price-table">
		<thead>
			<tr align="center">
				<th style="width: 100%">${room.roomNo }ȣ �󼼺���</th>	
			</tr>
		</thead>
	</table>	
	<table class="price-table">
			<tr align="center">
				<td style="width:33%" >���</td>
				<td style="width:66%" >${room.roomSize }��</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >��</td>
				<td style="width:66%" >${room.roomView }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >������ȣ</td>
				<td style="width:66%" >${room.roomCallNum }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >�Ӵ��(1��)</td>
				<td style="width:66%" ><fmt:formatNumber value="${room.roomFee }" pattern="#,###"/>��</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >�� ����</td>
				<td style="width:66%" >${room.roomState }</td>
			</tr>
			
			
	</table>
	
	<c:if test="${room.roomState ne '�̻��' }">
		<table class="price-table">
		<thead>
			<tr align="center">
				<th style="width: 100%">${room.roomNo }ȣ ����</th>	
			</tr>
		</thead>
	</table>	
	<table class="price-table">
			<tr align="center">
				<td style="width:33%" >�����ȣ</td>
				<td style="width:66%" >${rev.roomRevNo }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >�����ڸ�</td>
				<td style="width:66%" >${rev.roomLiveName }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >�Խǳ�¥</td>
				<td style="width:66%" ><fmt:formatDate value="${rev.roomRevStartDate }" pattern="yyyy�� MM�� dd��"/></td>
			</tr>
			<tr align="center">
				<td style="width:33%" >��ǳ�¥</td>
				<td style="width:66%" ><fmt:formatDate value="${rev.roomRevEndDate }" pattern="yyyy�� MM�� dd��"/></td>
			</tr>
			<tr align="center">
				<td style="width:33%" >������ ����ó</td>
				<td style="width:66%" >${rev.roomRevPh }</td>
			</tr>
			
			
	</table>
	
	
	
	</c:if>


</body>
</html>