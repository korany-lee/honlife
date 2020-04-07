<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
/* $(function(){
	$("#wish").click(function(){ */
			/* location.href='furnitureWishInsert?furnitureNo=' + $("#furnitureNo").val(); */
function wishInsert(n){
	$.ajax({
		type : "POST",
		url : "furnitureWishInsert",
		data : "furnitureNo=" +n ,
		datatype : "html",
		success:cart_ok,
		error: function(){
			alert('로그아웃 되었습니다.\n다시 로그인 해 주세요.');
			location.href="../stayMain";
			return;
		}
	});  
}					
		   
		 
		
	
	

function cart_ok(responseText, statusText, xhr, $form){
	if(statusText == "success"){
		alert('장바구니에 추가 되었습니다.');
	}
	
	
}


</script>
</head>
<body>

	<c:forEach items="${list }" var="furniture">
		<div class="col-lg-4 col-md-6">
                  <div class="single-product">
                    <div class="product-img">
                    <c:forTokens items="${furniture.furniturePhoto }" delims="-" var="furniturePhoto" varStatus="status">
                    	<c:if test="${status.count ==1 }">
                      <img class="aaaa" src="/project/stayView/memberView/update/${furniturePhoto }" alt="" width="250px" height="250px"/>
                      	<input type="hidden" id="photo" value="${furniturePhoto }">
                      	</c:if>
                      	
                      </c:forTokens>
                      <div class="p_icon">
                        <a href="#">
                          <i class="ti-eye"></i>
                        </a>
                        <a href="#">
                          <i class="ti-heart"></i>
                        </a>
                        <a href="#">
                          <i class="ti-shopping-cart"></i>
                        </a>
                      </div>
                    </div>
                    <div class="product-btm">
                    <%-- <input type="hidden" id="furnitureNo" value="${furniture.furnitureNo }"> --%>
                      <!-- <a href="" id="wish" class="d-block"> -->
                      <a href="#" onclick="javascript:wishInsert('${furniture.furnitureNo}');" class="d-block">
                      ${furniture.furnitureName } 장바구니에 담기
                      </a>
                       	
                     
                      <input type="hidden" id="name" value="${furniture.furnitureName }">
                      <div class="mt-3">
                        <span class="mr-4"><fmt:formatNumber value="${furniture.furnitureRentalFee }" pattern="#,###"/>원 (1일 대여비)</span>
                        <input type="hidden" id="price" value="${furniture.furnitureRentalFee }">
                      </div>
                    </div>
                  </div>
                </div>
	</c:forEach>
				<div class="col-md-12 text-right">
         
					 <a class="main_btn"  href="furnitureWishList?start=${start}&&end=${end}&&revNum=${revNum}">장바구니로 이동</a>
					     
			 	</div>
			  
	
</body>
</html>