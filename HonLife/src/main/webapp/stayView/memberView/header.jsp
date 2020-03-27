<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hon Stay</title>
 <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <link rel="icon" href="img/favicon.png" type="image/png" />
  <title>Hon Stay</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="/project/stayView/memberView/css/bootstrap.css" />
  <link rel="stylesheet" href="/project/stayView/memberView/vendors/linericon/style.css" />
  <link rel="stylesheet" href="/project/stayView/memberView/css/font-awesome.min.css" />
  <link rel="stylesheet" href="/project/stayView/memberView/css/themify-icons.css" />
  <link rel="stylesheet" href="/project/stayView/memberView/css/flaticon.css" />
  <link rel="stylesheet" href="/project/stayView/memberView/vendors/owl-carousel/owl.carousel.min.css" />
  <link rel="stylesheet" href="/project/stayView/memberView/vendors/lightbox/simpleLightbox.css" />
  <link rel="stylesheet" href="/project/stayView/memberView/vendors/nice-select/css/nice-select.css" />
  <link rel="stylesheet" href="/project/stayView/memberView/vendors/animate-css/animate.css" />
  <link rel="stylesheet" href="/project/stayView/memberView/vendors/jquery-ui/jquery-ui.css" />
  <!-- main css -->
  <link rel="stylesheet" href="/project/stayView/memberView/css/style.css" />
  <link rel="stylesheet" href="/project/stayView/memberView/css/responsive.css" />
</head>
<body>
<!--================Header Menu Area =================-->
  <header class="header_area">
    <div class="top_menu">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <div class="float-left">
            </div>
          </div>
          <div class="col-lg-5">
            <div class="float-right">
              <ul class="right_side">
                <li>
                  <a href="cart.html">
                    	로그인
                  </a>
                </li>
                <li>
                  <a href="tracking.html">
                    	회원가입
                  </a>
                </li>
                <li>
                  <a href="contact.html">
                    	마이페이지
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="main_menu">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light w-100">
          <!-- Brand and toggle get grouped for better mobile display -->
          <a class="navbar-brand logo_h" href="../stayMain">
            <img src="/project/stayView/memberView/img/honstay_main.png" alt="" />
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse offset w-100" id="navbarSupportedContent">
            <div class="row w-100 mr-0">
              <div class="col-lg-7 pr-0">
                <ul class="nav navbar-nav center_nav pull-right">
                  <li class="nav-item active">
                    <a class="nav-link" href="../stayMain">Home</a>
                  </li>
                  <li class="nav-item submenu dropdown">
                    <a href="../introduce/honStay" class="nav-link"  role="button" aria-haspopup="true"
                      aria-expanded="false">HonStay 소개</a>
                  </li>
                  <li class="nav-item submenu dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                      aria-expanded="false">객실소개 및 예약</a>
                    <ul class="dropdown-menu">
                      <li class="nav-item">
                        <a class="nav-link" href="../room/size">면적별 안내</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="../room/floor">층별 안내</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="../room/view">전망별 안내</a>
                      </li>
                    </ul>
                  </li>
                 
                 <li class="nav-item submenu dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                      aria-expanded="false">가구소개 및 예약</a>
                    <ul class="dropdown-menu">
                      <li class="nav-item">
                        <a class="nav-link" href="../funiture/select?type=거실용품" >거실용 가구</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="../funiture/select?type=주방용품">주방용 가구</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="../funiture/select?type=침실용품">주방용 가구</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="../funiture/select?type=기타">기타 가구</a>
                      </li>
                      
                    </ul>
                  </li>
                
                </ul> 
              </div>

              <div class="col-lg-5 pr-0">
               
              </div>
            </div>
          </div>
        </nav>
      </div>
    </div>
  </header>
   <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="/project/stayView/memberView/js/jquery-3.2.1.min.js"></script>
  <script src="/project/stayView/memberView/js/popper.js"></script>
  <script src="/project/stayView/memberView/js/bootstrap.min.js"></script>
  <script src="/project/stayView/memberView/js/stellar.js"></script>
  <script src="/project/stayView/memberView/vendors/lightbox/simpleLightbox.min.js"></script>
  <script src="/project/stayView/memberView/vendors/nice-select/js/jquery.nice-select.min.js"></script>
  <script src="/project/stayView/memberView/vendors/isotope/imagesloaded.pkgd.min.js"></script>
  <script src="/project/stayView/memberView/vendors/isotope/isotope-min.js"></script>
  <script src="/project/stayView/memberView/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="/project/stayView/memberView/js/jquery.ajaxchimp.min.js"></script>
  <script src="/project/stayView/memberView/vendors/counter-up/jquery.waypoints.min.js"></script>
  <script src="/project/stayView/memberView/vendors/counter-up/jquery.counterup.js"></script>
  <script src="/project/stayView/memberView/js/mail-script.js"></script>
  <script src="/project/stayView/memberView/js/theme.js"></script>
</body>
</html>