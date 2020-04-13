<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon"
	href="../../main/images/WEB.png" />
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
<title>HON SHOP :: 혼자서도 멋지게, 모두의 혼 샵</title>
</head>
<body>
    <header class="header header--1" data-sticky="true">
        <div class="header__top">
            <div class="ps-container">
                <div class="header__left">
                    <div class="menu--product-categories">
                        <div class="menu__toggle"><i class="icon-menu"></i><span>전체 카테고리</span></div>
                        <div class="menu__content">
                             <ul class="menu--dropdown">
                                <li class="current-menu-item "><a href="#"><i class="icon-star"></i> 제일 HOT한 상품</a>
                                </li>
                                <li class="current-menu-item menu-item-has-children has-mega-menu"><a href="#"><i class="icon-bread"></i> 과자 &amp; 빵</a>
                                    <div class="mega-menu">
                                        <div class="mega-menu__column">
                                            <h4>과자<span class="sub-toggle"></span></h4>
                                            <ul class="mega-menu__list">
                                                <li class="current-menu-item "><a href="#">Home Audio &amp; Theathers</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">TV &amp; Videos</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Camera, Photos &amp; Videos</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Cellphones &amp; Accessories</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Headphones</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Videosgames</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Wireless Speakers</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Office Electronic</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="mega-menu__column">
                                            <h4>빵<span class="sub-toggle"></span></h4>
                                            <ul class="mega-menu__list">
                                                <li class="current-menu-item "><a href="#">Digital Cables</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Audio &amp; Video Cables</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Batteries</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-pills"></i> 건강식품</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-glass2"></i> 생수 &amp; 음료</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-cheese"></i> 유제품</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-diamond2"></i> 라면 &amp; 통조림</a>
                                </li>
                                <li class="current-menu-item menu-item-has-children has-mega-menu"><a href="#"><i class="icon-platter"></i> 반찬 &amp; 조미료</a>
                                    <div class="mega-menu">
                                        <div class="mega-menu__column">
                                            <h4>반찬 &amp; 조미료<span class="sub-toggle"></span></h4>
                                            <ul class="mega-menu__list">
                                                <li class="current-menu-item "><a href="#">Computer &amp; Tablets</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Laptop</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Monitors</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Networking</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Drive &amp; Storages</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Computer Components</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Security &amp; Protection</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Gaming Laptop</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Accessories</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-grapes"></i> 과일 &amp; 채소</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-chicken"></i> 쌀 &amp; 정육 &amp; 수산</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-tissue"></i> 화장지 &amp; 세제</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-haircut"></i> 뷰티</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-chef"></i> 주방</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-book2"></i> 문구 &amp; 사무</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-bone"></i> 반려동물</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-car-wash2"></i> 자동차용품</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-cart-full"></i> 대용량 알뜰상품</a>
                                </li>
                            </ul>
                        </div>
                    </div><a class="ps-logo" href="index.html"><img src="img/honshop_main.png" alt="혼샵 메인 로고"></a>
                </div>
                <div class="header__center">
                    <form class="ps-form--quick-search" action="index.html" method="get">
                        <div class="form-group--icon"><i class="icon-chevron-down"></i>
                            <select class="form-control">
                                <option value="0" selected="selected">전체</option>
                                <option class="level-0" value="bread">과자 & 빵</option>
                                <option class="level-0" value="pills">건강식품</option>
                                <option class="level-0" value="drink">생수 & 음료 </option>
                                <option class="level-0" value="cheese">유제품</option>
                                <option class="level-0" value="noodles">라면 & 통조림</option>
                                <option class="level-0" value="food">반찬 & 조미료</option>
                                <option class="level-0" value="fruits">과일 & 채소</option>
                                <option class="level-0" value="meats">쌀 & 정육 & 수산</option>
                                <option class="level-0" value="tissue">화장지 & 세제</option>
                                <option class="level-0" value="beauty">뷰티</option>
                                <option class="level-0" value="kitchen">주방</option>
                                <option class="level-0" value="office">문구 & 사무</option>
                                <option class="level-0" value="pet">반려동물</option>
                                <option class="level-0" value="car">자동차용품</option>
                                <option class="level-0" value="bigmarket">대용량 알뜰상품</option>
                            </select>
                        </div>
                        <input class="form-control" type="text" placeholder="혼자사는 사람을 위한 추천템">
                        <button>검색</button>
                    </form>
                </div>
                <div class="header__right">
                    <div class="header__actions"><a class="header__extra" href="#"><i class="icon-chart-bars"></i><span><i>0</i></span></a><a class="header__extra" href="#"><i class="icon-heart"></i><span><i>0</i></span></a>
                        <div class="ps-cart--mini"><a class="header__extra" href="#"><i class="icon-bag2"></i><span><i>0</i></span></a>
                            <div class="ps-cart__content">
                                <div class="ps-cart__items">
                                    <div class="ps-product--cart-mobile">
                                        <div class="ps-product__thumbnail"><a href="#"><img src="img/products/clothing/7.jpg" alt=""></a></div>
                                        <div class="ps-product__content"><a class="ps-product__remove" href="#"><i class="icon-cross"></i></a><a href="product-default.html">MVMTH Classical Leather Watch In Black</a>
                                            <p><strong>Sold by:</strong> YOUNG SHOP</p><small>1 x $59.99</small>
                                        </div>
                                    </div>
                                    <div class="ps-product--cart-mobile">
                                        <div class="ps-product__thumbnail"><a href="#"><img src="img/products/clothing/5.jpg" alt=""></a></div>
                                        <div class="ps-product__content"><a class="ps-product__remove" href="#"><i class="icon-cross"></i></a><a href="product-default.html">Sleeve Linen Blend Caro Pane Shirt</a>
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
                        <div class="ps-block--user-header">
                            <div class="ps-block__left"><i class="icon-user"></i></div>
                            <c:if test="${empty memberInfo }">
							<div class="ps-block__right">
								<a href="login">로그인</a><a href="shopJoin">회원가입</a>
							</div>
							</c:if>
							<c:if test="${!empty memberInfo }">
							<div class="ps-block__right">
								<a href="logout">로그아웃</a><a href="orderList">마이페이지</a>
							</div>
							</c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navigation">
            <div class="ps-container">
                <div class="navigation__left">
                    <div class="menu--product-categories">
                        <div class="menu__toggle"><i class="icon-menu"></i><span>전체 카테고리</span></div>
                        <div class="menu__content">
                            <ul class="menu--dropdown">
                                <li class="current-menu-item "><a href="#"><i class="icon-star"></i> 제일 HOT한 상품</a>
                                </li>
                                <li class="current-menu-item menu-item-has-children has-mega-menu"><a href="#"><i class="icon-bread"></i> 과자 &amp; 빵</a>
                                    <div class="mega-menu">
                                        <div class="mega-menu__column">
                                            <h4>과자<span class="sub-toggle"></span></h4>
                                            <ul class="mega-menu__list">
                                                <li class="current-menu-item "><a href="#">Home Audio &amp; Theathers</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">TV &amp; Videos</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Camera, Photos &amp; Videos</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Cellphones &amp; Accessories</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Headphones</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Videosgames</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Wireless Speakers</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Office Electronic</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="mega-menu__column">
                                            <h4>빵<span class="sub-toggle"></span></h4>
                                            <ul class="mega-menu__list">
                                                <li class="current-menu-item "><a href="#">Digital Cables</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Audio &amp; Video Cables</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Batteries</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-pills"></i> 건강식품</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-glass2"></i> 생수 &amp; 음료</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-cheese"></i> 유제품</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-diamond2"></i> 라면 &amp; 통조림</a>
                                </li>
                                <li class="current-menu-item menu-item-has-children has-mega-menu"><a href="#"><i class="icon-platter"></i> 반찬 &amp; 조미료</a>
                                    <div class="mega-menu">
                                        <div class="mega-menu__column">
                                            <h4>반찬 &amp; 조미료<span class="sub-toggle"></span></h4>
                                            <ul class="mega-menu__list">
                                                <li class="current-menu-item "><a href="#">Computer &amp; Tablets</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Laptop</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Monitors</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Networking</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Drive &amp; Storages</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Computer Components</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Security &amp; Protection</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Gaming Laptop</a>
                                                </li>
                                                <li class="current-menu-item "><a href="#">Accessories</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-grapes"></i> 과일 &amp; 채소</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-chicken"></i> 쌀 &amp; 정육 &amp; 수산</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-tissue"></i> 화장지 &amp; 세제</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-haircut"></i> 뷰티</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-chef"></i> 주방</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-book2"></i> 문구 &amp; 사무</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-bone"></i> 반려동물</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-car-wash2"></i> 자동차용품</a>
                                </li>
                                <li class="current-menu-item "><a href="#"><i class="icon-cart-full"></i> 대용량 알뜰상품</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="navigation__right">
                    <ul class="menu">
                        <li class="menu-item-has-children"><a href="index.html">신상품</a><span class="sub-toggle"></span>
                            <ul class="sub-menu">
                                <li class="current-menu-item "><a href="index.html">Marketplace Full Width</a>
                                </li>
                                <li class="current-menu-item "><a href="homepage-2.html">Home Auto Parts</a>
                                </li>
                                <li class="current-menu-item "><a href="homepage-10.html">Home Technology</a>
                                </li>
                                <li class="current-menu-item "><a href="homepage-9.html">Home Organic</a>
                                </li>
                                <li class="current-menu-item "><a href="homepage-3.html">Home Marketplace V1</a>
                                </li>
                                <li class="current-menu-item "><a href="homepage-4.html">Home Marketplace V2</a>
                                </li>
                                <li class="current-menu-item "><a href="homepage-5.html">Home Marketplace V3</a>
                                </li>
                                <li class="current-menu-item "><a href="homepage-6.html">Home Marketplace V4</a>
                                </li>
                                <li class="current-menu-item "><a href="homepage-7.html">Home Electronic</a>
                                </li>
                                <li class="current-menu-item "><a href="homepage-8.html">Home Furniture</a>
                                </li>
                                <li class="current-menu-item "><a href="homepage-kids.html">Home Kids</a>
                                </li>
                                <li class="current-menu-item "><a href="homepage-photo-and-video.html">Home photo and picture</a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children has-mega-menu"><a href="shop-default.html">베스트</a><span class="sub-toggle"></span>
                            <div class="mega-menu">
                                <div class="mega-menu__column">
                                    <h4>Catalog Pages<span class="sub-toggle"></span></h4>
                                    <ul class="mega-menu__list">
                                        <li class="current-menu-item "><a href="shop-default.html">Shop Default</a>
                                        </li>
                                        <li class="current-menu-item "><a href="shop-default.html">Shop Fullwidth</a>
                                        </li>
                                        <li class="current-menu-item "><a href="shop-categories.html">Shop Categories</a>
                                        </li>
                                        <li class="current-menu-item "><a href="shop-sidebar.html">Shop Sidebar</a>
                                        </li>
                                        <li class="current-menu-item "><a href="shop-sidebar-without-banner.html">Shop Without Banner</a>
                                        </li>
                                        <li class="current-menu-item "><a href="shop-carousel.html">Shop Carousel</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="mega-menu__column">
                                    <h4>Product Layout<span class="sub-toggle"></span></h4>
                                    <ul class="mega-menu__list">
                                        <li class="current-menu-item "><a href="product-default.html">Default</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-extend.html">Extended</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-full-content.html">Full Content</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-box.html">Boxed</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-sidebar.html">Sidebar</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-default.html">Fullwidth</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="mega-menu__column">
                                    <h4>Product Types<span class="sub-toggle"></span></h4>
                                    <ul class="mega-menu__list">
                                        <li class="current-menu-item "><a href="product-default.html">Simple</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-default.html">Color Swatches</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-image-swatches.html">Images Swatches</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-countdown.html">Countdown</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-multi-vendor.html">Multi-Vendor</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-instagram.html">Instagram</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-affiliate.html">Affiliate</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-on-sale.html">On sale</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-video.html">Video Featured</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-groupped.html">Grouped</a>
                                        </li>
                                        <li class="current-menu-item "><a href="product-out-stock.html">Out Of Stock</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="mega-menu__column">
                                    <h4>Woo Pages<span class="sub-toggle"></span></h4>
                                    <ul class="mega-menu__list">
                                        <li class="current-menu-item "><a href="shopping-cart.html">Shopping Cart</a>
                                        </li>
                                        <li class="current-menu-item "><a href="checkout.html">Checkout</a>
                                        </li>
                                        <li class="current-menu-item "><a href="whishlist.html">Whishlist</a>
                                        </li>
                                        <li class="current-menu-item "><a href="compare.html">Compare</a>
                                        </li>
                                        <li class="current-menu-item "><a href="order-tracking.html">Order Tracking</a>
                                        </li>
                                        <li class="current-menu-item "><a href="my-account.html">My Account</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="menu-item-has-children has-mega-menu"><a href="#">대량상품</a><span class="sub-toggle"></span>
                            <div class="mega-menu">
                                <div class="mega-menu__column">
                                    <h4>Basic Page<span class="sub-toggle"></span></h4>
                                    <ul class="mega-menu__list">
                                        <li class="current-menu-item "><a href="about-us.html">About Us</a>
                                        </li>
                                        <li class="current-menu-item "><a href="contact-us.html">Contact</a>
                                        </li>
                                        <li class="current-menu-item "><a href="faqs.html">Faqs</a>
                                        </li>
                                        <li class="current-menu-item "><a href="comming-soon.html">Comming Soon</a>
                                        </li>
                                        <li class="current-menu-item "><a href="404-page.html">404 Page</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="mega-menu__column">
                                    <h4>Vendor Pages<span class="sub-toggle"></span></h4>
                                    <ul class="mega-menu__list">
                                        <li class="current-menu-item "><a href="become-a-vendor.html">Become a Vendor</a>
                                        </li>
                                        <li class="current-menu-item "><a href="vendor-store.html">Vendor Store</a>
                                        </li>
                                        <li class="current-menu-item "><a href="vendor-dashboard-free.html">Vendor Dashboard Free</a>
                                        </li>
                                        <li class="current-menu-item "><a href="vendor-dashboard-pro.html">Vendor Dashboard Pro</a>
                                        </li>
                                        <li class="current-menu-item "><a href="store-list.html">Store List</a>
                                        </li>
                                        <li class="current-menu-item "><a href="store-list.html">Store List 2</a>
                                        </li>
                                        <li class="current-menu-item "><a href="store-detail.html">Store Detail</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="menu-item-has-children has-mega-menu"><a href="#">이벤트</a><span class="sub-toggle"></span>
                            <div class="mega-menu">
                                <div class="mega-menu__column">
                                    <h4>Blog Layout<span class="sub-toggle"></span></h4>
                                    <ul class="mega-menu__list">
                                        <li class="current-menu-item "><a href="blog-grid.html">Grid</a>
                                        </li>
                                        <li class="current-menu-item "><a href="blog-list.html">Listing</a>
                                        </li>
                                        <li class="current-menu-item "><a href="blog-small-thumb.html">Small Thumb</a>
                                        </li>
                                        <li class="current-menu-item "><a href="blog-left-sidebar.html">Left Sidebar</a>
                                        </li>
                                        <li class="current-menu-item "><a href="blog-right-sidebar.html">Right Sidebar</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="mega-menu__column">
                                    <h4>Single Blog<span class="sub-toggle"></span></h4>
                                    <ul class="mega-menu__list">
                                        <li class="current-menu-item "><a href="blog-detail.html">Single 1</a>
                                        </li>
                                        <li class="current-menu-item "><a href="blog-detail-2.html">Single 2</a>
                                        </li>
                                        <li class="current-menu-item "><a href="blog-detail-3.html">Single 3</a>
                                        </li>
                                        <li class="current-menu-item "><a href="blog-detail-4.html">Single 4</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <ul class="navigation__extra">
                        <li><a href="#">선물하기</a></li>
                        <li><a href="#">배송확인</a></li>
                        <li>
                            <div class="ps-dropdown"><a href="#">원화</a>
                                <ul class="ps-dropdown-menu">
                                    <li><a href="#">원화</a></li>
                                    <li><a href="#">dollar</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="ps-dropdown language"><a href="#"><img src="img/flag/en.png" alt="">한국어</a>
                                <ul class="ps-dropdown-menu">
                                    <li><a href="#"><img src="img/flag/en.png" alt=""> English</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <header class="header header--mobile" data-sticky="true">
        <div class="header__top">
            <div class="header__left">
                <p>HON SHOP :: 혼자서도 멋지게, 모두의 혼 샵</p>
            </div>
            <div class="header__right">
                <ul class="navigation__extra">
                    <li><a href="#">Sell on Martfury</a></li>
                    <li><a href="#">Tract your order</a></li>
                    <li>
                        <div class="ps-dropdown"><a href="#">US Dollar</a>
                            <ul class="ps-dropdown-menu">
                                <li><a href="#">Us Dollar</a></li>
                                <li><a href="#">Euro</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="ps-dropdown language"><a href="#"><img src="img/flag/en.png" alt="">English</a>
                            <ul class="ps-dropdown-menu">
                                <li><a href="#"><img src="img/flag/germany.png" alt=""> Germany</a></li>
                                <li><a href="#"><img src="img/flag/fr.png" alt=""> France</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navigation--mobile">
            <div class="navigation__left"><a class="ps-logo" href="index.html"><img src="img/honshop.png" alt=""></a></div>
            <div class="navigation__right">
                <div class="header__actions">
                    <div class="ps-cart--mini"><a class="header__extra" href="#"><i class="icon-bag2"></i><span><i>0</i></span></a>
                        <div class="ps-cart__content">
                            <div class="ps-cart__items">
                                <div class="ps-product--cart-mobile">
                                    <div class="ps-product__thumbnail"><a href="#"><img src="img/products/clothing/7.jpg" alt=""></a></div>
                                    <div class="ps-product__content"><a class="ps-product__remove" href="#"><i class="icon-cross"></i></a><a href="product-default.html">MVMTH Classical Leather Watch In Black</a>
                                        <p><strong>Sold by:</strong> YOUNG SHOP</p><small>1 x $59.99</small>
                                    </div>
                                </div>
                                <div class="ps-product--cart-mobile">
                                    <div class="ps-product__thumbnail"><a href="#"><img src="img/products/clothing/5.jpg" alt=""></a></div>
                                    <div class="ps-product__content"><a class="ps-product__remove" href="#"><i class="icon-cross"></i></a><a href="product-default.html">Sleeve Linen Blend Caro Pane Shirt</a>
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
                    <div class="ps-block--user-header">
                        <div class="ps-block__left"><i class="icon-user"></i></div>
                        <c:if test="${empty memberInfo }">
							<div class="ps-block__right">
								<a href="login">로그인</a><a href="shopJoin">회원가입</a>
							</div>
							</c:if>
							<c:if test="${!empty memberInfo }">
							<div class="ps-block__right">
								<a href="logout">로그아웃</a><a href="myShop">마이페이지</a>
							</div>
							</c:if>
                    </div>
                </div>
            </div>
        </div>
        <div class="ps-search--mobile">
            <form class="ps-form--search-mobile" action="index.html" method="get">
                <div class="form-group--nest">
                    <input class="form-control" type="text" placeholder="Search something...">
                    <button><i class="icon-magnifier"></i></button>
                </div>
            </form>
        </div>
    </header>