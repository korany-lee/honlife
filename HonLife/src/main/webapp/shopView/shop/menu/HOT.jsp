<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<head>

<link rel="shortcut icon" type="image/x-icon"
	href="./main/images/WEB.png" />
<link href="./common/css/main.css" rel="stylesheet" type="text/css">
<link href="./common/css/common.css" rel="stylesheet" type="text/css">
<link href="./common/css/section1.css" rel="stylesheet" type="text/css">
<link href="./common/css/normalize.css" rel="stylesheet" type="text/css">
<link href="plugins/bootstrap4/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>HON SHOP :: 혼자서도 멋지게, 모두의 혼 샵</title>

<!-- rocket js -->

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
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="plugins/sticky-sidebar/dist/sticky-sidebar.min.js"></script>
    <script src="plugins/jquery.slimscroll.min.js"></script>
    <script src="plugins/select2/dist/js/select2.full.min.js"></script>
    <script src="plugins/gmap3.min.js"></script>
    <script src="plugins/axios.min.js"></script>
    <script src="plugins/lodash.min.js"></script>
    <script src="plugins/summernote/summernote-bs4.min.js"></script>
    <script src="plugins/datatables/datatables.js"></script>
    <script src="plugins/dropzone/dropzone.min.js"></script>
    <!-- custom scripts-->
    <script src="js/main.js"></script>
    <script src="js/common.js"></script>
    <script src="js/constant.js"></script>

    <script src="//cdn.jsdelivr.net/gh/stove99/jquery-modal-sample@v1.4/js/jquery.modal.js"></script>
    <script src="//cdn.jsdelivr.net/gh/stove99/jquery-modal-sample@v1.4/js/modal.js"></script>
</head>

	<jsp:include page="../../includer/m_header.jsp"></jsp:include>
<body>


    <div class="ps-page--shop" id="shop-sidebar">
        <div class="container">
            <div class="ps-breadcrumb">
                <div class="container">
                    <ul class="breadcrumb">
                        <li><a href="/">Home</a></li>
                        <li>Category</li>
                    </ul>
                </div>
            </div>
            <div class="ps-layout--shop">
                <div id="dvlayout" class="ps-layout__left">
                    <aside class="widget widget_shop">
                        <h4 class="widget-title">Categories</h4>
                        <ul class="ps-list--categories">

                            <li class="current-menu-item menu-item-has-children"><a href="/any/category/list/1/1">Skincare</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
                                <ul class="sub-menu depth-2">

                                    
                                    <li class="current-menu-item menu-item-has-children"><a href="/any/category/list/2/102">Cleansing/peeling</a> <span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
                                        <ul class="sub-menu depth-3">
                                            <li class="current-menu-item"><a href="/any/category/list/3/10202">cleansing water</a></li>
                                            <li class="current-menu-item"><a href="/any/category/list/3/10203">cleansing gel</a></li>
                                            
                                            
                                            
                                            
                                            
                                        </ul>
                                    </li>
                                    <li class="current-menu-item menu-item-has-children"><a href="/any/category/list/2/103">Suncare</a> <span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
                                        <ul class="sub-menu depth-3">
                                            
                                            
                                            <li class="current-menu-item"><a href="/any/category/list/3/10302">sun spray</a></li>
                                            <li class="current-menu-item"><a href="/any/category/list/3/10303">sun stick</a></li>
                                            
                                            
                                            
                                        </ul>
                                    </li>
                                    
                                    
                                    
                                    

                                </ul>
                            </li>


                            <li class="current-menu-item menu-item-has-children"><a href="/any/category/list/1/2">Makeup</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
                                <ul class="sub-menu depth-2">

                                    <li class="current-menu-item menu-item-has-children"><a href="/any/category/list/2/201">Face</a> <span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
                                        <ul class="sub-menu depth-3">
                                            
                                            
                                            
                                            
                                            <li class="current-menu-item"><a href="/any/category/list/3/20101">base</a></li>
                                            
                                            
                                        </ul>
                                    </li>
                                    
                                    
                                    
                                    

                                </ul>
                            </li>


                            <li class="current-menu-item menu-item-has-children"><a href="/any/category/list/1/3">Body/hair/oral/perfume</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
                                <ul class="sub-menu depth-2">

                                    
                                    
                                    <li class="current-menu-item menu-item-has-children"><a href="/any/category/list/2/303">Oral Care</a> <span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
                                        <ul class="sub-menu depth-3">
                                            
                                            
                                            
                                            
                                            
                                            <li class="current-menu-item"><a href="/any/category/list/3/30301">Breath Spray</a></li>
                                            
                                        </ul>
                                    </li>
                                    
                                    

                                </ul>
                            </li>



                            

                            <li class="current-menu-item menu-item-has-children"><a href="/any/category/list/1/5">Supplement</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
                                <ul class="sub-menu depth-2">

                                    
                                    <li class="current-menu-item menu-item-has-children"><a href="/any/category/list/2/502">Dietary Supplement</a> <span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
                                        <ul class="sub-menu depth-3">
                                            
                                            
                                            
                                            
                                            
                                            
                                            <li class="current-menu-item"><a href="/any/category/list/3/50201">all</a></li>
                                        </ul>
                                    </li>

                                </ul>
                            </li>


                        </ul>
                    </aside>
                </div>



                <div class="ps-layout__right">
<!--                    <div class="search-box">
                        <select name="" id="" class="ps-select" style="width:20%">
                            <option value="">선택1</option>
                        </select>
                        <input type="text" class="form-control" id="" placeholder="" style="width:40%">
                        <button type="button" id="" class="ps-btn type-black">Search</button>
                    </div>-->
                    <div class="ps-shopping ps-tab-root">
                        <div class="ps-shopping__header">
                            <p><strong>5</strong> Products found</p>
<!--                            <div class="ps-shopping__actions">
                                <select class="ps-select" data-placeholder="Sort Items">
                                    <option>Sort by latest</option>
                                    <option>Sort by popularity</option>
                                    <option>Sort by average rating</option>
                                    <option>Sort by price: low to high</option>
                                    <option>Sort by price: high to low</option>
                                </select>
                                <div class="ps-shopping__view">
                                    <p>View</p>
                                    <ul class="ps-tab-list">
                                        <li class="active"><a href="#tab-1"><i class="icon-grid"></i></a></li>
                                        <li><a href="#tab-2"><i class="icon-list4"></i></a></li>
                                    </ul>
                                </div>
                            </div>-->
                        </div>
                        <div class="ps-tabs">
                            <div class="ps-tab active" id="tab-1">
                                <div class="ps-shopping-product">
                                    <div class="row">
                                        
                                        	<c:forEach items="${shopList }" var="shop" varStatus="status">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-6 ">
                                                <div class="ps-product">
                                                    <div class="ps-product__thumbnail">
                                                    <a href="/any/product_detail/25">
                                                <c:forTokens items="${shop.productPhoto }" delims="-" var="proImg" varStatus="status">
													<c:if test="${status.index == 0}">
                                                    <img src="update/${proImg }"/>													
													</c:if>
													</c:forTokens>
													</a>
    <!--                                                    <ul class="ps-product__actions">
                                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Quick View"><i class="icon-eye"></i></a></li>
                                                            <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to Whishlist"><i class="icon-heart"></i></a></li>
                                                        </ul>-->
                                                    </div>
                                                    <div class="ps-product__container"><a class="ps-product__vendor" href="shopView/detail${shop.productNo }">${shop.productName }</a>
                                                        <div class="ps-product__content"><a class="ps-product__title">${shop.productPrice}</a>
                                                            <!--<p class="ps-product__price">PRICE</p>-->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </c:forEach>
                                            
                                        
                                    </div>
                                </div>
<!--                                <div class="ps-pagination">
                                    <ul class="pagination">
                                        <li class="active"><<button type="button" id="">1</button></li>
                                        <li><button type="button" id="">2</button></li>
                                        <li><button type="button" id="">3</button></li>
                                        <li><button type="button" id="">Next Page<i class="icon-chevron-right"></i></button></li>
                                    </ul>
                                </div>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(() => {
            PageScope.init();
        });

        const PageScope = {
            init() {
                $('#dvlayout .open').parents().show();
            }
        };
    </script>


<footer class="ps-footer ps-footer--3">
    <div class="container">
        <div class="ps-footer__widgets">
            <aside class="widget widget_footer widget_contact-us">
                <h4 class="widget-title">Contact us</h4>
                <div class="widget_content">
                    <p>Call us 24/7</p>
                    <h3>1800 97 97 69</h3>
                    <p>502 New Design Str, Melbourne, Australia <br><a href="mailto:contact@martfury.co">contact@martfury.co</a></p>
<!--                    <ul class="ps-list&#45;&#45;social">
                        <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                    </ul>-->
                </div>
            </aside>
        </div>
<!--        <div class="ps-footer__links">
            <p><strong>Consumer Electric:</strong><a href="#">Air Conditioners</a><a href="#">Audios &amp; Theaters</a><a href="#">Car Electronics</a><a href="#">Office Electronics</a><a href="#">TV Televisions</a><a href="#">Washing Machines</a>
            </p>
            <p><strong>Clothing &amp; Apparel:</strong><a href="#">Printers</a><a href="#">Projectors</a><a href="#">Scanners</a><a href="#">Store &amp; Business</a><a href="#">4K Ultra HD TVs</a><a href="#">LED TVs</a><a href="#">OLED TVs</a>
            </p>
            <p><strong>Home, Garden &amp; Kitchen:</strong><a href="#">Cookware</a><a href="#">Decoration</a><a href="#">Furniture</a><a href="#">Garden Tools</a><a href="#">Garden Equipments</a><a href="#">Powers And Hand Tools</a><a href="#">Utensil &amp; Gadget</a>
            </p>
            <p><strong>Health &amp; Beauty:</strong><a href="#">Hair Care</a><a href="#">Decoration</a><a href="#">Hair Care</a><a href="#">Makeup</a><a href="#">Body Shower</a><a href="#">Skin Care</a><a href="#">Cologine</a><a href="#">Perfume</a>
            </p>
            <p><strong>Jewelry &amp; Watches:</strong><a href="#">Necklace</a><a href="#">Pendant</a><a href="#">Diamond Ring</a><a href="#">Sliver Earing</a><a href="#">Leather Watcher</a><a href="#">Gucci</a>
            </p>
            <p><strong>Computer &amp; Technologies:</strong><a href="#">Desktop PC</a><a href="#">Laptop</a><a href="#">Smartphones</a><a href="#">Tablet</a><a href="#">Game Controller</a><a href="#">Audio &amp; Video</a><a href="#">Wireless Speaker</a><a href="#">Done</a>
            </p>
        </div>-->
        <div class="ps-footer__copyright">
            <p>© 2020 RocketMart. All Rights Reserved</p>
        </div>
    </div>
</footer>


        <div id="back2top"><i class="pe-7s-angle-up"></i></div>
<div class="ps-site-overlay"></div>
<div id="loader-wrapper">
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>
<div class="ps-search" id="site-search"><a class="ps-btn--close" href="#"></a>
    <div class="ps-search__content">
        <form class="ps-form--primary-search" action="do_action" method="post">
            <input class="form-control" type="text" placeholder="Search for...">
            <button><i class="aroma-magnifying-glass"></i></button>
        </form>
    </div>
</div>

</body>
</html>



















<!--                                    <th:block th:each="cate1CdList : ${cate1CdList}">
                                        <th:block th:if="${'S'.equals(cate1CdList.get('TAG_YN'))}">
                                            <li class="current-menu-item menu-item-has-children"><a href="#" th:text="${cate1CdList.get('CATE2_NM')}"></a> <span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
                                                <ul class="sub-menu depth-3">
                                        </th:block>

                                                    <li class="current-menu-item "><a href="#" th:text="${cate1CdList.get('CATE3_NM')}"></a></li>

                                        <th:block th:if="${'E'.equals(cate1CdList.get('TAG_YN'))}">
                                                </ul>
                                            </li>
                                        </th:block>
                                    </th:block>-->