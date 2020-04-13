<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<link rel="shortcut icon" type="image/x-icon"
	href="../main/images/WEB.png" />
<link href="../common/css/main.css" rel="stylesheet" type="text/css">
<link href="../common/css/common.css" rel="stylesheet" type="text/css">
<link href="../common/css/section1.css" rel="stylesheet" type="text/css">
<link href="../common/css/normalize.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700&amp;amp;subset=latin-ext" rel="stylesheet">
    <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="fonts/Linearicons/Linearicons/Font/demo-files/demo.css">
    <link rel="stylesheet" href="plugins/bootstrap4/css/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/owl-carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="plugins/slick/slick/slick.css">
    <link rel="stylesheet" href="plugins/lightGallery-master/dist/css/lightgallery.min.css">
    <link rel="stylesheet" href="plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="plugins/select2/dist/css/select2.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<jsp:include page="../includer/m_header.jsp"></jsp:include>
<body>
    
    <div class="ps-panel--sidebar" id="cart-mobile">
        <div class="ps-panel__header">
            <h3>장바구니</h3>
        </div>
        <div class="navigation__content">
            <div class="ps-cart--mobile">
                <div class="ps-cart__content">
                    <div class="ps-product--cart-mobile">
                        <div class="ps-product__thumbnail"><a href="#"><img src="img/products/clothing/7.jpg" alt=""></a></div>
                        <div class="ps-product__content"><a class="ps-product__remove" href="#"><i class="icon-cross"></i></a><a href="product-default.html">MVMTH Classical Leather Watch In Black</a>
                            <p><strong>Sold by:</strong> YOUNG SHOP</p><small>1 x $59.99</small>
                        </div>
                    </div>
                </div>
                <div class="ps-cart__footer">
                    <h3>Sub Total:<strong>$59.99</strong></h3>
                    <figure><a class="ps-btn" href="shopping-cart.html">View Cart</a><a class="ps-btn" href="checkout.html">Checkout</a></figure>
                </div>
            </div>
        </div>
    </div>
  
    <div class="navigation--list">
        <div class="navigation__content"><a class="navigation__item ps-toggle--sidebar" href="#menu-mobile"><i class="icon-menu"></i><span> Menu</span></a><a class="navigation__item ps-toggle--sidebar" href="#navigation-mobile"><i class="icon-list4"></i><span> Categories</span></a><a class="navigation__item ps-toggle--sidebar" href="#search-sidebar"><i class="icon-magnifier"></i><span> Search</span></a><a class="navigation__item ps-toggle--sidebar" href="#cart-mobile"><i class="icon-bag2"></i><span> Cart</span></a></div>
    </div>
    <div class="ps-panel--sidebar" id="search-sidebar">
        <div class="ps-panel__header">
            <form class="ps-form--search-mobile" action="index.html" method="get">
                <div class="form-group--nest">
                    <input class="form-control" type="text" placeholder="Search something...">
                    <button><i class="icon-magnifier"></i></button>
                </div>
            </form>
        </div>
        <div class="navigation__content"></div>
    </div>

    <div class="ps-page--simple">
        <div class="ps-breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="shop-default.html">Shop</a></li>
                    <li>Whishlist</li>
                </ul>
            </div>
        </div>
        <div class="ps-section--shopping ps-shopping-cart">
            <div class="container">
                <div class="ps-section__header">
                    <h2>장바구니</h2>
                    <p>주문하실 상품명 및 수량을 정확하게 확인해 주세요</p>
                </div>
                
                <div class="ps-section__content">
                    <div class="table-responsive">
                        <table class="table ps-table--shopping-cart">
                            <thead>
                                <tr>
                                	<th>선택</th>
                                    <th>상품정보</th>
                                    <th>수량</th>
                                    <th>금액</th>
                                    <th></th>
                                </tr>
                            </thead>
							<tbody>
								<tr>
									<c:if test="${empty cart }">
										<td class="noCart" colspan="4">장바구니에 담긴 상품이 없습니다.</td>
									</c:if>
								</tr>
									<c:if test="${!empty cart }">
										<c:set var="sum" value="0" />
										<c:forEach items="${cart }" var="pro" varStatus="status">
								<tr>
									<td><input type="checkbox" name="check" checked="checked" value = "${pro.productNo}"/></td>
											<td>
												<div class="ps-product--cart">
													<div class="ps-product__thumbnail">
											
														<a href="HOT/${pro.productNo }"> <c:forTokens
																items="${pro.productPhoto }" delims="-" var="proImg"
																varStatus="status">
																<c:if test="${status.index == 0}">
																	<img src="update/${proImg }" />
																</c:if>
															</c:forTokens>
														</a>
													</div>
												
													<div class="ps-product__content">
														<a href="#">${pro.productName }</a>
														<p>
															<strong><span id="price" >${pro.productPrice }</span> 원</strong>
														</p>
													</div>
												</div>
											</td>
											<td>
												<div class="form-group--number" id="number">
													<button class="up" id="up">+</button>
													<button class="down" id="down">-</button>
													<span class="form-control" type="text"
														 id="quantity">${pro.basketAmount }</span>
												</div>
											</td>
											<td>
											<span id="totalPrice" type="text">${pro.productPrice*pro.basketAmount }</span>
											</td>
											<td><a href="#"><i class="icon-cross"></i></a></td>
								</tr>
								<c:set var="sum" value="${sum + (pro.productPrice * pro.basketAmount)}" />
								</c:forEach>
								</c:if>
							</tbody>
						</table>
                    </div>
                    <div class="ps-section__cart-actions"><a class="ps-btn" href="shop-default.html"><i class="icon-arrow-left"></i>돌아가기</a><a class="ps-btn ps-btn--outline" href="shop-default.html"><i class="icon-sync"></i>새로고침</a></div>
                </div>
                <div class="ps-section__footer">
                    <div class="row">
                        <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 ">
                            <figure>
                                <figcaption>할인코드</figcaption>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="">
                                </div>
                                <div class="form-group">
                                    <button class="ps-btn ps-btn--outline">입력</button>
                                </div>
                            </figure>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
							<form role="form" method="post" autocomplete="off"
								action="buyGo">
								<figure class="orderInfo">
									<figcaption>주문정보 입력</figcaption>
									<div class="form-group">
										<input type="hidden" name="amount" value="${sum }" />
										
									</div>
									<div class="form-group">
										<input class="form-control" type="text" name="orderRec"
											placeholder="수령인">
									</div>
									<div class="form-group">
										<input class="form-control" type="text" name="userPh"
											placeholder="수령인 연락처">
									</div>
									<div class="form-group">
										<input class="form-control" type="text" name="userAddr"
											placeholder="주소">
									</div>
									<div class="form-group">
										<input class="form-control" type="text" name="userZone"
											placeholder="우편번호">
									</div>
									<div class="form-group">
										<button type="submit" class="ps-btn ps-btn--outline"
											style="margin-right: 70px;">주문</button>
										<button class="cancel_btn ps-btn ps-btn--outline">취소</button>
									</div>
								</figure>
							</form>
						</div>
                        <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
                            <div class="ps-block--shopping-total">
                                <div class="ps-block__header">
                                    <p>상품금액 <span> <fmt:formatNumber pattern="###,###,###" value ="${sum }" /></span></p>
                                </div>
                                <div class="ps-block__content">
                                    <ul class="ps-block__product">
                                        <li><span class="ps-block__shop">YOUNG SHOP Shipping</span><span class="ps-block__shipping">Free Shipping</span><span class="ps-block__estimate">Estimate for <strong>Viet Nam</strong><a href="#"> MVMTH Classical Leather Watch In Black ×1</a></span></li>
                                        <li><span class="ps-block__shop">ROBERT’S STORE Shipping</span><span class="ps-block__shipping">Free Shipping</span><span class="ps-block__estimate">Estimate for <strong>Viet Nam</strong><a href="#">Apple Macbook Retina Display 12” ×1</a></span></li>
                                    </ul>
                                    <h3>결제예정금액 <span>${sum } 원</span></h3>
                                </div>
                            </div><a class="orderOpne_bnt ps-btn ps-btn--fullwidth">주문정보 입력</a>
                        <script src="http://code.jquery.com/jquery-latest.js"></script>
                        <script type ="text/javascript">
 $(".orderOpne_bnt").click(function(){
  $(".orderInfo").slideDown();
  $(".orderOpne_bnt").slideUp();
 });
 
 $(".cancel_btn").click(function(){
  $(".orderInfo").slideUp();
  $(".orderOpne_bnt").slideDown();
 });      
 </script>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
 	<script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
								$(function() {
									$('#down').click(function(e) {
										e.preventDefault();
										var stat = $('#quantity').text();
										var num = parseInt(stat, 10);
										var price = $('#price').text();
										var total = $('#totalPrice').text();
										num--;
										if (num < 0) {
											num = 0;
										}
										$('#quantity').text(num);
										var cartQty = $('#quantity').html();
	                                	$("#cartQuantity").val(cartQty);
	                                
	                                	$('#totalPrice').text(num * price);
	                                	console.log($('#totalPrice').html());	
									});
									$('#up').click(function(e) { 
										e.preventDefault();
										var stat = $('#quantity').text();
										var num = parseInt(stat, 10);
										var price = $('#price').text();
										var total = $('#totalPrice').text();
										num++;

										$('#quantity').text(num);
										console.log($('#quantity').html());
	                                	var cartQty = $('#quantity').html();
	                                	$("#cartQuantity").val(cartQty);
	                                	$('#totalPrice').text(num * price);
	                                	console.log($('#totalPrice').html());
									});
									console.log($('#quantity').html());
                                	var cartQty = $('#quantity').html();
                                	$("#cartQuantity").val(cartQty);
                                	$('#totalPrice').text(num * price);
								});
								
								function buy1() {
									   var chkbox = document.getElementsByName('check'); 
									   var chk = 0; 
									   var num = "";
									   for(var i=0 ; i<chkbox.length ; i++) 
									   { 
									      if(chkbox[i].checked) 
									      { 
									         chk += 1;
									         num+=chkbox[i].value +",";
									      } 
									    }
									   if(chk == 0) {
									      alert("구매 상품을 선택해 주세요.");
									   }else { 
									      location.href = "productBuy?chkNum="+ num;
									   }

									}
							</script>
    
    <script src="plugins/jquery-1.12.4.min.js"></script>
    <script src="plugins/popper.min.js"></script>
    <script src="plugins/owl-carousel/owl.carousel.min.js"></script>
    <script src="plugins/bootstrap4/js/bootstrap.min.js"></script>
    <script src="plugins/imagesloaded.pkgd.min.js"></script>
    <script src="plugins/masonry.pkgd.min.js"></script>
    <script src="plugins/isotope.pkgd.min.js"></script>
    <script src="plugins/jquery.matchHeight-min.js"></script>
    <script src="plugins/slick/slick/slick.min.js"></script>
    <script src="plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
    <script src="plugins/slick-animation.min.js"></script>
    <script src="plugins/lightGallery-master/dist/js/lightgallery-all.min.js"></script>
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="plugins/sticky-sidebar/dist/sticky-sidebar.min.js"></script>
    <script src="plugins/jquery.slimscroll.min.js"></script>
    <script src="plugins/select2/dist/js/select2.full.min.js"></script>
    <script src="plugins/gmap3.min.js"></script>
    <!-- custom scripts-->
    <script src="js/main.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDxflHHc5FlDVI-J71pO7hM1QJNW1dRp4U&amp;region=GB"></script>
</body>

</html>