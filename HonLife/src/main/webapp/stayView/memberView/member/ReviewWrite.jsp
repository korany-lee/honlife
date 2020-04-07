<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hon Stay -후기작성</title>
<script type="text/javascript"
src="http://code.jquery.com/jquery-1.9.1.min.js"></script>  
<script type="text/javascript">
function review(n){
	if(n=='사용대기'){
		alert('입실 전 예약입니다.');
	}else{
		location.href='MyReservation'
	}
	
	
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
              <h2>마이페이지</h2>
              <p>고객님의 소중한 후기를 작성해주세요.</p>
            </div>
            <div class="page_link">
              <a href="index.html">Home</a>
              <a href="category.html">마이페이지</a>
              <a href="#">나의 후기</a>
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
					<li><a href="MyReservation">나의 예약</a></li>
					<li class="on"><a href="MyReview">나의 후기</a></li>
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
						<li>나의 후기</li>
					</ul>
				</div>
				<!-- 컨텐츠 내용 -->
				<div class="price-content" id="content">
					<div class="price-tit clearfix" >
						<h3 class="sub-tit">후기작성</h3>	
					</div>
					<!-- 이름:
					<div class="mt-10">
								<input type="text" name="first_name" placeholder="First Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" required class="single-input">
					</div> -->
			<form action="reviewInsert">
			<table class="price-table">
			
			<tr align="center">
				<td style="width:33%" >후기작성자 : </td>
				<td style="width:66%" ><input type="text" name="writer" placeholder="작성자 이름or닉네임"   required class="single-input"></td>
			</tr>
			
					
			<tr>
				<td style="width:33%" align="center">객실 예약번호 : </td>
				<td style="width:66%" >${rev.roomRevNo }<input type="hidden" name="revNo" value="${rev.roomRevNo }"></td>
			</tr>
			<tr align="center">
				<td style="width:33%" >객실 번호 : </td>
				<td style="width:66%" >${rev.roomNo }<input type="hidden" name="roomNo" value="${rev.roomNo }"></td>
			</tr>
			<tr align="center">
				<td style="width:33%" >예약자명 : </td>
				<td style="width:66%" >${rev.roomRevName }<input type="hidden" name="userNo" value="${rev.userNo }"></td>
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
			<tr>
				<td style="width:33%">후기내용 :</td>
				<td style="width:66%"><textarea class="single-textarea" placeholder="후기작성란" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Message'"required name="review"></textarea></td>
			</tr>
			<tr>
				<td style="width:33%">나의점수 :</td>
				<td style="width:66%">
						<div class="single-element-widget">
							<div class="default-select" id="default-select">
								<select name="score">
									<option value="5" selected>5점</option>
									<option value="4">4점</option>
									<option value="3">3점</option>
									<option value="2">2점</option>
									<option value="1">1점</option>
								</select>
							</div>
						</div>
				</td>
			</tr>
	</table>
	
	<div class="col-md-12 text-right">
	<input type="submit" class="main_btn" value="후기 제출">
	</div>
	</form>
	</div>
</section>
</div>

</body>
</html>