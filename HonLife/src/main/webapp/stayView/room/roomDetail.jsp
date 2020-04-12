<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>객실 상세보기</title>
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
				<th style="width: 100%">${room.roomNo }호 상세보기</th>	
			</tr>
		</thead>
	</table>	
	<table class="price-table">
			<tr align="center">
				<td style="width:33%" >평수</td>
				<td style="width:66%" >${room.roomSize }평</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >뷰</td>
				<td style="width:66%" >${room.roomView }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >내선번호</td>
				<td style="width:66%" >${room.roomCallNum }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >임대료(1일)</td>
				<td style="width:66%" ><fmt:formatNumber value="${room.roomFee }" pattern="#,###"/>원</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >방 상태</td>
				<td style="width:66%" >${room.roomState }</td>
			</tr>
			
			
	</table>
	
	<c:if test="${room.roomState ne '미사용' }">
		<table class="price-table">
		<thead>
			<tr align="center">
				<th style="width: 100%">${room.roomNo }호 예약</th>	
			</tr>
		</thead>
	</table>	
	<table class="price-table">
			<tr align="center">
				<td style="width:33%" >예약번호</td>
				<td style="width:66%" >${rev.roomRevNo }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >입주자명</td>
				<td style="width:66%" >${rev.roomLiveName }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >입실날짜</td>
				<td style="width:66%" ><fmt:formatDate value="${rev.roomRevStartDate }" pattern="yyyy년 MM월 dd일"/></td>
			</tr>
			<tr align="center">
				<td style="width:33%" >퇴실날짜</td>
				<td style="width:66%" ><fmt:formatDate value="${rev.roomRevEndDate }" pattern="yyyy년 MM월 dd일"/></td>
			</tr>
			<tr align="center">
				<td style="width:33%" >입주자 연락처</td>
				<td style="width:66%" >${rev.roomRevPh }</td>
			</tr>
			
			
	</table>
	
	
	
	</c:if>


</body>
</html>