<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



            
</head>

    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
    

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>


      <!--JavaScript at end of body for optimized loading-->
      <link type="text/css" rel="stylesheet" href="../careView/css/materialize.min.css"  media="screen,projection"/>
   
   
    
     <script src="//code.jquery.com/jquery-1.10.2.js"></script>
     
 


<body>
	<jsp:include page="../includer/careheader.jsp"/>

<main>



<section>
		<section class="main-section-1">

		<div class="section-content animate-in-view clearfix">

	

<div class="container-contact100">
		<div class="wrap-contact100">
			
				
				<span class="contact100-form-title" >
			예약 상세 내용
				</span>
	
				
				
	<form class="col s12" method="POST" name="frm" id="frm">	
				<table style="undefined;table-layout: fixed; width: 690px">
<colgroup>
<col style="width: 118px">
<col style="width: 231px">
<col style="width: 139px">
<col style="width: 202px">
</colgroup>
  <tr>
    <th>예약번호</th>
    <th colspan="3">//예약번호</th>
  </tr>
  <tr>
    <td>성명</td>
    <td>//성명</td>
    <td>연락처</td>
    <td>//연락처</td>
  </tr>
  <tr>
    <td>이메일</td>
    <td colspan="3">//이메일</td>
  </tr>
  <tr>
    <td>예약 주소</td>
    <td colspan="3">//예약 주소</td>
  </tr>
  <tr>
    <td>예약시간</td>
    <td colspan="3">//예약시간</td>
  </tr>
  <tr>
    <td>담당 매니저</td>
    <td>//담당 매니저</td>
    <td>담당매니저 연락처</td>
    <td>//담당 매니저 연락처</td>
  </tr>
  <tr>
    <td>청소면적</td>
    <td colspan="3"></td>
  </tr>
  <tr>
    <td colspan="4">요청사항</td>
  </tr>
  <tr>
    <td colspan="4">//요청 사항</td>
  </tr>
  <tr>
    <td colspan="2"></td>
    <td>총 결제 금액</td>
    <td>///총 결제금액</td>
  </tr>
</table>




				       
			</form>
		</div>
	</div>

</div>

	


	<script src="../careView/contactform/vendor/daterangepicker/moment.min.js"></script>
	<script src="../careView/contactform/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="../careView/contactform/vendor/countdowntime/countdowntime.js"></script>
	
	<script src="../careView/contactform/js/main.js"></script>
	

	</section>

</section>

</main>

		<script  type="text/javascript" src="../careView/js/materialize.js"></script>
	
<jsp:include page="../includer/carefooter.jsp"/>
</body>
</html>