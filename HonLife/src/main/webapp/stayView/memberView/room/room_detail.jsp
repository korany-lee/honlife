<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link rel="icon" href="img/favicon.png" type="image/png" />
    <title>Hon Life - 객실 상세보기</title>
    <!--  Bootstrap CSS -->
<!--        <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="vendors/linericon/style.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/themify-icons.css" />
    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css" />
    <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css" />
    <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css" />
    <link rel="stylesheet" href="vendors/animate-css/animate.css" />
    <link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css" />
    main css
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/responsive.css" /> -->
<style type="text/css">
   .fc-sun {color:#e31b23}
.fc-sat {color:#007dc3}
</style>




<link href='/project/stayView/memberView/css/main.css' rel='stylesheet' />
<link href='/project/stayView/memberView/css/main2.css' rel='stylesheet' />
<script src='/project/stayView/memberView/js/main.js'></script>
<script src='/project/stayView/memberView/js/main2.js'></script>
<script src='/project/stayView/memberView/js/main3.js'></script>

<script>

  document.addEventListener('DOMContentLoaded', function() {
    
	  
	  
	var calendarEl = document.getElementById('calendar');
	
    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid' ],
      locale : 'ko' ,
      defaultDate: '${today}',
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
    	  
    	 	<c:forEach items="${revState}" var="state">
    	 	/* var date = ${state.roomRevEndDate};
    	 	var plusdate = date.setDate(date.getDate()+1); */
        {
          title: '예약완료',
          start:  '<fmt:formatDate value="${state.roomRevStartDate}" pattern="yyyy-MM-dd" />',
          end: '<fmt:formatDate value="${state.roomRevEndDate }" pattern="yyyy-MM-dd" />'
        },
        	</c:forEach>
        
      ]
    });

    calendar.render();
  });

</script>




  </head>

  <body>
	
 	 <jsp:include page="/stayView/memberView/header.jsp" />
    <!--================Header Menu Area =================-->
  
    <!--================Home Banner Area =================-->
    <section class="banner_area">
      <div class="banner_inner d-flex align-items-center">
        <div class="container">
          <div
            class="banner_content d-md-flex justify-content-between align-items-center"
          >
            <div class="mb-3 mb-md-0">
              <h2>객실 상세보기</h2>
              <p>최고의 객실을 확인하세요</p>
            </div>
            <div class="page_link">
              <a href="index.html">Home</a>
              <a href="single-product.html">객실 상세보기</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Home Banner Area =================-->

    <!--================Single Product Area =================-->
    <div class="product_image_area">
      <div class="container">
        <div class="row s_product_inner">
          <div class="col-lg-6">
            <div class="s_product_img">
              <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                
                
                
                 
                	<c:forTokens items="${room.roomPhoto }" delims="-" var="roomPhoto" varStatus="status">
                	
                  <li data-target="#carouselExampleIndicators" data-slide-to="${status.index }" class="active">
                    <img src="/project/stayView/memberView/update/${roomPhoto }" alt="" width="60px" height="60px"/>
                  </li>
                	
                	</c:forTokens>
              
                  
                  
                  <!-- <li data-target="#carouselExampleIndicators" data-slide-to="1">
                    <img src="/project/stayView/memberView/img/product/single-product/s-product-s-3.jpg" alt=""/>
                  </li> -->
                 
                 
                 
                 
                 
                 
                 <!--  <li data-target="#carouselExampleIndicators"data-slide-to="2">
                    <img src="/project/stayView/memberView/img/product/single-product/s-product-s-4.jpg" alt=""/>
                  </li>  -->
                </ol>
                
                <div class="carousel-inner">
                <c:forTokens items="${room.roomPhoto }" delims="-" var="roomPhoto" varStatus="status">
                  <c:if test="${status.count == 1 }">
                 	 <div class="carousel-item active">
                   		 <img class="d-block w-100" src="/project/stayView/memberView/update/${roomPhoto}" alt="First slide" width="555px" height="700px"/>
                 	 </div>
                  </c:if>
                </c:forTokens>
                <c:forTokens items="${room.roomPhoto }" delims="-" var="roomPhoto" varStatus="status">
                	<c:if test="${status.count > 1 }">
                  		<div class="carousel-item">
                    		<img class="d-block w-100" src="/project/stayView/memberView/update/${roomPhoto}" alt="" width="555px" height="700px"/>
                  		</div>
                  	</c:if>
                </c:forTokens>
                  
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-5 offset-lg-1">
            <div class="s_product_text">
              <h3>${room.roomNo }호</h3>
              <h2>1일 숙박비 : <fmt:formatNumber value="${room.roomFee }" pattern="#,###" />원</h2>
              <ul class="list">
                <li>
                  
                    <span>면적</span> : ${room.roomSize }평
                </li>
                <li>
                  <span>뷰</span> : ${room.roomView }
                </li>
              </ul>
              <%-- <p>
                ${room.roomExplantion }
              </p> --%>
              <h3>예약현황</h3>
              <div id="calendar">
              </div>
             
              <div class="product_count">
                <!-- <label for="qty">Quantity:</label>
                <input
                  type="text"
                  name="qty"
                  id="sst"
                  maxlength="12"
                  value="1"
                  title="Quantity:"
                  class="input-text qty"
                /> -->
                <button
                  onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                  class="increase items-count"
                  type="button"
                >
                  <i class="lnr lnr-chevron-up"></i>
                </button>
                <button
                  onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                  class="reduced items-count"
                  type="button"
                >
                  <i class="lnr lnr-chevron-down"></i>
                </button>
              </div>
              <div class="card_area">
              <c:if test="${!empty memberInfo }">
                <a class="main_btn"  onclick="window.open('dateCheck?room=${room.roomNo}','예약날짜 설정','width=700,height=300')">예약하기</a>
              </c:if>
              <c:if test="${empty memberInfo }">
              <span>*로그인 하셔야 예약이 가능합니다</span>
              </c:if>
                <a class="main_btn"  href="javascript:history.back();">뒤로가기</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--================End Single Product Area =================-->

    <!--================Product Description Area =================-->
    <section class="product_description_area">
      <div class="container">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item">
            <a
              class="nav-link"
              id="home-tab"
              data-toggle="tab"
              href="#home"
              role="tab"
              aria-controls="home"
              aria-selected="true"
              >객실소개</a
            >
          </li>
          <li class="nav-item">
            <a
              class="nav-link"
              id="profile-tab"
              data-toggle="tab"
              href="#profile"
              role="tab"
              aria-controls="profile"
              aria-selected="false"
              >기본가구 목록</a
            >
          </li>
          
          <li class="nav-item">
            <a
              class="nav-link active"
              id="review-tab"
              data-toggle="tab"
              href="#review"
              role="tab"
              aria-controls="review"
              aria-selected="false"
              >리뷰</a
            >
          </li>
        </ul>
        <div class="tab-content" id="myTabContent">
          <div
            class="tab-pane fade"
            id="home"
            role="tabpanel"
            aria-labelledby="home-tab"
          >
            <p>
              ${room.roomExplantion }
            </p>
           
          </div>
          <div
            class="tab-pane fade"
            id="profile"
            role="tabpanel"
            aria-labelledby="profile-tab"
          >
            <div class="table-responsive">
              <table class="table">
                <tbody>
                  <tr>
                    <td>
                      <h5>1인용침대</h5>
                    </td>
                    <td>
                      <h5>침실등</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>개인옷장</h5>
                    </td>
                    <td>
                      <h5>간의의자</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>화장대</h5>
                    </td>
                    <td>
                      <h5>전기밥솥</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>인덕션</h5>
                    </td>
                    <td>
                      <h5>13인치 TV</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>미니 테이블</h5>
                    </td>
                    <td>
                      <h5>1인용 쇼파</h5>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <h5>에어컨</h5>
                    </td>
                    <td>
                      <h5>벽걸이 시계</h5>
                    </td>
                  </tr>
                  
                </tbody>
              </table>
            </div>
          </div>
          <div
            class="tab-pane fade"
            id="contact"
            role="tabpanel"
            aria-labelledby="contact-tab"
          >
            <div class="row">
              <div class="col-lg-6">
                <div class="comment_list">
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/product/single-product/review-1.png"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Blake Ruiz</h4>
                        <h5>12th Feb, 2017 at 05:56 pm</h5>
                        <a class="reply_btn" href="#">Reply</a>
                      </div>
                    </div>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                      sed do eiusmod tempor incididunt ut labore et dolore magna
                      aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                      ullamco laboris nisi ut aliquip ex ea commodo
                    </p>
                  </div>
                  <div class="review_item reply">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/product/single-product/review-2.png"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Blake Ruiz</h4>
                        <h5>12th Feb, 2017 at 05:56 pm</h5>
                        <a class="reply_btn" href="#">Reply</a>
                      </div>
                    </div>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                      sed do eiusmod tempor incididunt ut labore et dolore magna
                      aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                      ullamco laboris nisi ut aliquip ex ea commodo
                    </p>
                  </div>
                  <div class="review_item">
                    <div class="media">
                      <div class="d-flex">
                        <img
                          src="img/product/single-product/review-3.png"
                          alt=""
                        />
                      </div>
                      <div class="media-body">
                        <h4>Blake Ruiz</h4>
                        <h5>12th Feb, 2017 at 05:56 pm</h5>
                        <a class="reply_btn" href="#">Reply</a>
                      </div>
                    </div>
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                      sed do eiusmod tempor incididunt ut labore et dolore magna
                      aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                      ullamco laboris nisi ut aliquip ex ea commodo
                    </p>
                  </div>
                </div>
              </div>
              
            </div>
          </div>
          <div
            class="tab-pane fade show active"
            id="review"
            role="tabpanel"
            aria-labelledby="review-tab"
          >
            <div class="row">
              <div class="col-lg-6">
                <div class="row total_rate" style="margin-left:300px; width:535px;">
                  <div class="col-6">
                    <div class="box_total">
                      <h5>평균점수</h5>
                      <h4>${average }</h4>
                      <h6>객실 점수 평가</h6>
                    </div>
                  </div>
                  <div class="col-6">
                    <div class="rating_list">
                      <h3>${totalReview }개의 후기</h3>
                      <ul class="list">
                        <li>
                          <a href="#"
                            >5점
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i> ${five }명</a
                          >
                        </li>
                        <li>
                          <a href="#"
                            >4점  
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i> ${four }명</a
                          >
                        </li>
                        <li>
                          <a href="#"
                            >3점
                            
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i> ${three }명</a
                          >
                        </li>
                        <li>
                          <a href="#"
                            >2점
                           
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i> ${two }명</a
                          >
                        </li>
                        <li>
                          <a href="#"
                            >1점
                            <i class="fa fa-star"></i>
                             ${one }명</a
                          >
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                
                
                
                <div class="review_list">
                   <c:forEach items="${review }" var="r">\
                  <div class="review_item">
                  
                    <div class="media">
                     
                      
                      
                      <div class="media-body" style="margin-left:300px; width:535px;">
                        <h4>${r.writer }&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${r.reviewDate }" pattern="yyyy-MM-dd hh:mm"/></h4>
                        
                        <c:if test="${r.score ==5 }">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        </c:if>
                        <c:if test="${r.score ==4 }">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        </c:if>
                        <c:if test="${r.score ==3 }">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        </c:if>
                        <c:if test="${r.score ==2 }">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        </c:if>
                        <c:if test="${r.score ==1 }">
                        <i class="fa fa-star"></i>
                        </c:if>
                      </div>
                    </div>
                    <p style="margin-left:310px; width:535px;">
                      	${r.review }
                    </p>
                  </div>
                  </c:forEach>
                  
                </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Product Description Area =================-->

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
    <!-- <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/stellar.js"></script>
    <script src="vendors/lightbox/simpleLightbox.min.js"></script>
    <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
    <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
    <script src="vendors/isotope/isotope-min.js"></script>
    <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="vendors/jquery-ui/jquery-ui.js"></script>
    <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendors/counter-up/jquery.counterup.js"></script>
    <script src="js/theme.js"></script> -->
  </body>
</html>
