<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>  
<script type="text/javascript">
$(function() {
	$("#see").click(function() { 
		$("#date").show();
	});  
});; 


$(function() {
	$("#allcancel").click(function() { 
		if(confirm('전체예약을 취소 하시겠습니까?')){
			location.href='deleteRev?no=' + $("#revNo").val();
			alert('삭제 되었습니다');
		}else{
			return;
		}
	});  
}); 
 
 
 
function thisDelete(n){
	if(confirm('취소 하시겠습니까?')){
		location.href="oneFrevCancel?furnitureNo=" + n+"&&revNo=" +$("#revNo").val();
		alert('삭제 되었습니다.');
		location.href='MyReservation'
	}else{
		return;
	}
	  
}	

function delete_ok(responseText, statusText, xhr, $form){
	if(statusText == "success"){
		alert('삭제 되었습니다.');
		
	}
	
	
}
 
 
 
</script>
</head>
<body>
	<table class="price-table">
		<thead>
			<tr align="center">
				<th style="width: 100%">회원님의 객실 예약내역 입니다.</th>	
			</tr>
		</thead>
	</table>	
	<table class="price-table">
			<tr align="center">
				<td style="width:33%" >객실 예약번호 : </td>
				<td style="width:66%" >${rev.roomRevNo }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >객실 번호 : </td>
				<td style="width:66%" >${rev.roomNo }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >예약자명 : </td>
				<td style="width:66%" >${rev.roomRevName }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >입주자명 : </td>
				<td style="width:66%" >${rev.roomLiveName }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >입실날짜 : </td>
				<td style="width:66%" ><fmt:formatDate value="${rev.roomRevStartDate }" pattern="yyyy년 MM월 dd일"/> AM 11:00</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >퇴실날짜 : </td>
				<td style="width:66%" ><fmt:formatDate value="${rev.roomRevEndDate }" pattern="yyyy년 MM월 dd일"/> PM 11:59</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >가구 예약 여부 : </td>
				<td style="width:66%" >
				<c:if test="${empty furniture }">
				가구 예약정보가 없습니다
				</c:if>
				<c:if test="${!empty furniture }">
				<button id="see">가구 예약정보 보기</button>
				</c:if>
				</td>
			</tr>
	</table>
	<div id="date" style="display:none">
	<table class="price-table">
		<thead>
			<tr align="center">
				<th style="width: 100%">회원님의 가구 예약내역 입니다.</th>	
			</tr>
		</thead>
	</table>
	
	<c:forEach items="${furniture }" var="fff">
	<table class="price-table">
			<tr align="center">
				<td style="width:33%" >가구명 : </td>
				<td style="width:66%" >${fff.furnitureName }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >가구색상 : </td>
				<td style="width:66%" >${fff.furnitureColor }</td>
			</tr>
			<tr align="center">
				<td style="width:33%" >분류: </td>
				<td style="width:66%" >${fff.furnitureType }</td>
			</tr>
	</table>
	<div class="col-md-12 text-right">
	<a href="#"class="main_btn" onclick="javascript:thisDelete('${fff.furnitureNo}')">해당가구 예약취소</a>
	</div>
	</c:forEach>
	</div>	
	<br><br><br>
	<div class="col-md-12 text-right">
		 <input type="hidden" id="revNo" value="${rev.roomRevNo }">
		 <button class="main_btn" id="allcancel">전체 예약취소</button>
		 <a class="main_btn"  href="javascript:location.href='MyReservation';">뒤로가기</a>
	</div>
</body>
</html>