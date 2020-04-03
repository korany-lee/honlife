<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="icon" href="img/favicon.png" type="image/png" />
    <title>Hon Life - 층별 객실안내</title>
    
  <script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.1.min.js"></script>  
 	<script type="text/javascript">
	$(function() {
		$("#floorSelect").change(function() {
			/*  location.href = "sizeSelect?size="+$("#sizeSelect").val(); */  
			  $("#bdto").innerHTML = "";  
			 	
			 $.ajax({
				type : "POST",
				url : "floorSelect",
				data : "floor=" + $("#floorSelect").val(),
				datatype : "html",
				success : function(data1) {
					$("#bdto").html(data1);
				}
			});  
		});  
	});

	</script>
  <body>
   <jsp:include page="/stayView/memberView/header.jsp" />
    <!--================Header Menu Area =================-->

    <!--================Home Banner Area =================-->
    <section class="banner_area">
      <div class="banner_inner d-flex align-items-center">
        <div class="container">
          <div class="banner_content d-md-flex justify-content-between align-items-center">
            <div class="mb-3 mb-md-0">
              <h2>객실소개/예약</h2>
              <p>고객님에게 맞는 다양한 객실을 만나보세요</p>
            </div>
            <div class="page_link">
              <a href="index.html">Home</a>
              <a href="category.html">객실소개/예약</a>
              <a href="category.html">층별 안내</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Category Product Area =================-->
     <section class="cat_product_area section_gap">
      <div class="container">
        
          
            <div class="product_top_bar">
              <div class="left_dorp">
              <c:if test="${!empty roomRev  }">
              <h2>객실 예약을 선택하세요</h2>
                <select class="sorting" id="roomRevSelect" style="width:400px;">
                 <c:forEach items="${roomRev }" var="room">
                  <option value="">예약선택</option>
                  <option value="${room.roomRevNo }">
                  	<fmt:formatDate value="${room.roomRevStartDate }" pattern="yyyy년 MM월 dd일"/> ~ 
                  	<fmt:formatDate value="${room.roomRevEndDate }" pattern="yyyy년 MM월 dd일"/> (${room.roomNo }호)
                  </option>
				</c:forEach>
                </select>
                </c:if>
                <c:if test="${empty roomRev }">
                <h3>선택가능한 객실예약이 없습니다.</h3>
               
                </c:if>
                
              </div>
              
            </div>
            <div class="col-md-12 text-right">
					<a class="main_btn"  href="javascript:history.back();">뒤로가기</a>
					     
				</div>
            
            <div class="latest_product_inner">
              <div class="row" id="bdto">
              
              
              </div>
            </div>
          

         
        </div>
     
    </section>
    <!--================End Category Product Area =================-->

    <!--================ start footer Area  =================-->
    <footer class="footer-area section_gap">
      <div class="container">
        <div class="row">
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Top Products</h4>
            <ul>
              <li><a href="#">Managed Website</a></li>
              <li><a href="#">Manage Reputation</a></li>
              <li><a href="#">Power Tools</a></li>
              <li><a href="#">Marketing Service</a></li>
            </ul>
          </div>
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Quick Links</h4>
            <ul>
              <li><a href="#">Jobs</a></li>
              <li><a href="#">Brand Assets</a></li>
              <li><a href="#">Investor Relations</a></li>
              <li><a href="#">Terms of Service</a></li>
            </ul>
          </div>
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Features</h4>
            <ul>
              <li><a href="#">Jobs</a></li>
              <li><a href="#">Brand Assets</a></li>
              <li><a href="#">Investor Relations</a></li>
              <li><a href="#">Terms of Service</a></li>
            </ul>
          </div>
          <div class="col-lg-2 col-md-6 single-footer-widget">
            <h4>Resources</h4>
            <ul>
              <li><a href="#">Guides</a></li>
              <li><a href="#">Research</a></li>
              <li><a href="#">Experts</a></li>
              <li><a href="#">Agencies</a></li>
            </ul>
          </div>
          <div class="col-lg-4 col-md-6 single-footer-widget">
            <h4>Newsletter</h4>
            <p>You can trust us. we only send promo offers,</p>
            <div class="form-wrap" id="mc_embed_signup">
              <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                method="get" class="form-inline">
                <input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''"
                  onblur="this.placeholder = 'Your Email Address '" required="" type="email">
                <button class="click-btn btn btn-default">Subscribe</button>
                <div style="position: absolute; left: -5000px;">
                  <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
                </div>
  
                <div class="info"></div>
              </form>
            </div>
          </div>
        </div>
        <div class="footer-bottom row align-items-center">
          <p class="footer-text m-0 col-lg-8 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          <div class="col-lg-4 col-md-12 footer-social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-dribbble"></i></a>
            <a href="#"><i class="fa fa-behance"></i></a>
          </div>
        </div>
      </div>
    </footer>
    <!--================ End footer Area  =================-->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
  </body>
</html>


