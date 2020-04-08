<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hon Stay -나의 예약</title>
<script type="text/javascript"
src="http://code.jquery.com/jquery-1.9.1.min.js"></script>  
<script type="text/javascript">
function revDetail(n){
	$("#content").innerHTML = "";  
	
	$.ajax({
		type : "POST",
		url : "revDetail",
		data : "revNum=" +n ,
		datatype : "html",
		success : function(data1) {
			$("#content").html(data1);
		}
	
	});  
}	


</script>
<link rel="stylesheet" href="/project/stayView/memberView/css/content.css"></link>
<link rel="stylesheet" href="/project/stayView/memberView/css/reset.css"></link>
<link rel="stylesheet" href="/project/stayView/memberView/css/layout.css"></link>
<link rel="stylesheet" href="/project/stayView/memberView/css/font.css"></link>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"></link>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css" href="/project/stayView/memberView/css/slick.css"></link>
</head>
<body>
<jsp:include page="/stayView/memberView/header.jsp" />
<section class="banner_area">
      <div class="banner_inner d-flex align-items-center">
        <div class="container">
          <div class="banner_content d-md-flex justify-content-between align-items-center">
            <div class="mb-3 mb-md-0">
              <h2>나의 예약</h2>
              <p>고객님의 예약정보를 확인하세요</p>
            </div>
            <div class="page_link">
              <a href="index.html">Home</a>
              <a href="category.html">마이페이지</a>
              <a href="#">나의예약</a>
            </div>
          </div>
        </div>
      </div>
</section>

<!-- 사이드바 시작 -->
<div id="middleArea" class="area">
			<!-- sidebar -->
			<aside id="sidebar">
				<ul class="snb">
					<li class="on"><a href="MyReservation">나의 예약</a></li>
					<li><a href="MyReview">나의 후기</a></li>
					<li><a href="PriceSuv.cs">나의 정보</a></li>
				</ul>
			</aside>
			<!-- //sidebar -->
			<!-- content -->
			<section id="content">
				<div class="sub-location clearfix">
					<h3>방 예약내역</h3>
					<ul class="clearfix">
						<li><i class="material-icons">&#xE88A;</i></li>
						<li class="arrow"> > </li>
						<li>마이페이지</li>
						<li class="arrow"> ></li>
						<li>나의 예약</li>
					</ul>
				</div>
				<!-- 컨텐츠 내용 -->
				<div class="price-content" id="content">
					<div class="price-tit clearfix" >
						<h3 class="sub-tit">입실대기</h3>
						
					</div>
					<table class="price-table">
						<thead>
							<tr align="center">
								<th style="width:33%">대여기간</th>
								<th style="width:33%">예약번호</th>
								<th style="width:33%">예약 호실</th>
							</tr>
						</thead>
						<tbody>
						
						
						<c:forEach items="${rev }" var="room">
						<c:if test="${room.roomRevState eq '사용대기' }">
							<tr>
								<td><span class="box-point"><a href="#" onclick="javascript:revDetail('${room.roomRevNo }');"><fmt:formatDate value="${room.roomRevStartDate }" pattern="yyyy-MM-dd"/> ~<fmt:formatDate value="${room.roomRevEndDate }" pattern="yyyy-MM-dd"/></a> </td>
								<td><span class="point">${room.roomRevNo }</span></td>
								<td><span class="point">${room.roomNo }</span>  <input type="hidden" id="revNum" value="${room.roomRevNo }"></td>
							</tr>
						</c:if>	
						</c:forEach>
						
						</tbody>
					</table>
					
					<div class="price-tit clearfix">
						<h3 class="sub-tit">사용중</h3>
						
					</div>
					<table class="price-table">
						<thead>
							<tr align="center">
								<th style="width:33%">대여기간</th>
								<th style="width:33%">예약번호</th>
								<th style="width:33%">예약 호실</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${rev }" var="room">
						<c:if test="${room.roomRevState eq '사용중' }">
							<tr>
								<td><span class="box-point"><a href="#" onclick="javascript:revDetail('${room.roomRevNo }');"><fmt:formatDate value="${room.roomRevStartDate }" pattern="yyyy-MM-dd"/> ~<fmt:formatDate value="${room.roomRevEndDate }" pattern="yyyy-MM-dd"/></a> </td>
								<td><span class="point">${room.roomRevNo }</span></td>
								<td><span class="point">${room.roomNo }</span></td>
							</tr>
						</c:if>	
						</c:forEach>
						</tbody>
					</table>
					<div class="price-tit clearfix">
						<h3 class="sub-tit">퇴실완료</h3>
						
					</div>
					<table class="price-table">
						<thead>
							<tr align="center">
								<th style="width:33%">대여기간</th>
								<th style="width:33%">예약번호</th>
								<th style="width:33%">예약 호실</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${rev }" var="room">
						<c:if test="${room.roomRevState eq '퇴실완료' }">
							<tr>
								<td><span class="box-point"><a href="#" onclick="javascript:revDetail('${room.roomRevNo }');"><fmt:formatDate value="${room.roomRevStartDate }" pattern="yyyy-MM-dd"/> ~<fmt:formatDate value="${room.roomRevEndDate }" pattern="yyyy-MM-dd"/></a> </td>
								<td><span class="point">${room.roomRevNo }</span></td>
								<td><span class="point">${room.roomNo }</span></td>
							</tr>
						</c:if>	
						</c:forEach>
						</tbody>
					</table>
					
				</div>
		</section>
</div>

</body>
</html>