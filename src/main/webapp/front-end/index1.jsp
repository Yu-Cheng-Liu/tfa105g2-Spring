<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Eposi - Multipurpose eCommerce Bootstrap5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="icon" href="<%=request.getContextPath()%>/assets/img/favicon.ico">

    <!--=============================================
    =            CSS  files       =
    =============================================-->
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Karla:ital,wght@0,400;0,700;1,400;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet">

    <!-- Vendor CSS -->
    <link href="<%=request.getContextPath()%>/assets/css/vendors.css" rel="stylesheet">
    <!-- Main CSS -->
    <link href="<%=request.getContextPath()%>/assets/css/style.css" rel="stylesheet">

    <!-- JQuery 連結-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,300;0,400;0,600;1,300&display=swap"
            rel="stylesheet">

    <%-- 聊天室 --%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/chat.css">


</head>

<body onunload="disconnect();">
    <!--====================  header area ====================-->
    <div class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--=======  header wrapper  =======-->
                    <div class="header-wrapper d-none d-lg-flex">
                        <!-- logo -->
                        <div class="logo">
                            <a href="index.jsp">
                                <img width="150" height="50" src="<%=request.getContextPath()%>/assets/img/logo_v1.jpg" class="img-fluid" alt="">
                            </a>
                        </div>
                        <!-- menu wrapper -->
                        <div class="navigation-menu-wrapper">
                            <nav>
                                <ul>
                                    <li class="menu-item-has-children"><a href="#">祭祖商城</a>
                                        <ul class="sub-menu">
                                            <li><a href="${pageContext.request.contextPath}/AllProductServlet?action=selectAll">商品總覽</a></li>
                                            <li><a href="cart.jsp">購物車</a></li>
                                        </ul>
                                    </li>

                                    <li class="menu-item-has-children"><a href="#">預約服務</a>
                                        <ul class="sub-menu">
                                            <li><a href="blog-post-video-format.jsp">法會直播</a></li>
                                            <li><a href="blog-post-audio-format.jsp">預約祭祀</a></li>
                                            <li><a href="menu-item-has-children">線上祭祀</a></li>
                                        </ul>
                                    </li>

                                    <li class="menu-item-has-children"><a href="#">客服中心</a>
                                        <ul class="sub-menu">
                                            <li><a href="<%=request.getContextPath()%>/front-end/service/contact.jsp">聯絡我們</a></li>
                                            <li><a href="<%=request.getContextPath()%>/front-end/service/about.jsp">關於我們</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="<%=request.getContextPath()%>/front-end/service/faq.jsp">常見問題</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!-- header icon -->
                        <div class="header-icon-wrapper">
                            <ul class="icon-list">
                                <li>
                                    <div class="header-cart-icon">
                                        <a href="#" id="minicart-trigger">
                                            <i class="ion-bag"></i>
                                            <span class="counter">3</span>
                                        </a>
                                        <!-- mini cart  -->
                                        <div class="mini-cart" id="mini-cart">
                                            <div class="cart-items-wrapper ps-scroll">
                                                <div class="single-cart-item">
                                                    <a href="javascript:void(0)" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    <div class="image">
                                                        <a href="single-product.jsp">
                                                            <img width="80" height="106"
                                                                src="<%=request.getContextPath()%>/assets/img/products/product-1-80x106.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p class="product-title"><a href="single-product.jsp">Cillum
                                                                dolore furniture</a></p>
                                                        <p class="count"><span>1 x </span> $402</p>
                                                    </div>
                                                </div>
                                                <div class="single-cart-item">
                                                    <a href="javascript:void(0)" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    <div class="image">
                                                        <a href="single-product.jsp">
                                                            <img width="80" height="106"
                                                                src="<%=request.getContextPath()%>/assets/img/products/product-2-80x106.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p class="product-title"><a href="single-product.jsp">Lorem
                                                                ipsum furniture</a></p>
                                                        <p class="count"><span>1 x </span> $500</p>
                                                    </div>
                                                </div>
                                                <div class="single-cart-item">
                                                    <a href="javascript:void(0)" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    <div class="image">
                                                        <a href="single-product.jsp">
                                                            <img width="80" height="106"
                                                                src="<%=request.getContextPath()%>/assets/img/products/product-3-80x106.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p class="product-title"><a href="single-product.jsp">Cillum
                                                                dolore tool</a></p>
                                                        <p class="count"><span>1 x </span> $607</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cart-calculation">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <td class="text-start">Sub-Total :</td>
                                                            <td class="text-end">$220.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-start">Eco Tax (-2.00) :</td>
                                                            <td class="text-end">$6.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-start">VAT (20%) :</td>
                                                            <td class="text-end">$44.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-start">Total :</td>
                                                            <td class="text-end">$270.00</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="cart-buttons">
                                                <a href="cart.jsp">VIEW CART</a>
                                                <a href="checkout.jsp">CHECKOUT</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="header-settings-icon">
                                        <a href="javascript:void(0)" class="header-settings-trigger"
                                            id="header-settings-trigger">
                                            <div class="setting-button">
                                                <span></span>
                                                <span></span>
                                                <span></span>
                                            </div>
                                        </a>

                                        <!-- settings menu -->
                                        <div class="settings-menu-wrapper" id="settings-menu-wrapper">
                                            <div class="single-settings-block">
                                                <h4 class="title">一般用戶 </h4>
                                                <ul>
                                                    <li><a href="<%=request.getContextPath()%>/front-end/memberData/login-register-member.jsp">註冊/登入</a></li>
                                                  
                                                </ul>
                                            </div>
                                            <div class="single-settings-block">
                                                <h4 class="title">廠商專區 </h4>
                                                <ul>
                                                    <li><a href="<%=request.getContextPath()%>/front-end/compData/comp-login-register.jsp">註冊/登入</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--=======  End of header wrapper  =======-->
                    <div class="hero-slider-area section-space">
                        <div class="container wide">
                            <div class="row">
                                <div class="col-lg-12">
                                    <!--=======  hero slider wrapper  =======-->
                
                                    <div class="hero-slider-wrapper">
                                        <div class="ht-slick-slider" data-slick-setting='{
                                        "slidesToShow": 1,
                                        "slidesToScroll": 1,
                                        "arrows": true,
                                        "dots": true,
                                        "autoplay": true,
                                        "autoplaySpeed": 5000,
                                        "speed": 1000,
                                        "fade": true,
                                        "infinite": true,
                                        "prevArrow": {"buttonClass": "slick-prev", "iconClass": "ion-chevron-left" },
                                        "nextArrow": {"buttonClass": "slick-next", "iconClass": "ion-chevron-right" }
                                    }' data-slick-responsive='[
                                        {"breakpoint":1501, "settings": {"slidesToShow": 1} },
                                        {"breakpoint":1199, "settings": {"slidesToShow": 1, "arrows": false} },
                                        {"breakpoint":991, "settings": {"slidesToShow": 1, "arrows": false} },
                                        {"breakpoint":767, "settings": {"slidesToShow": 1, "arrows": false} },
                                        {"breakpoint":575, "settings": {"slidesToShow": 1, "arrows": false} },
                                        {"breakpoint":479, "settings": {"slidesToShow": 1, "arrows": false} }
                                    ]'>
                
                                            <!--=======  single slider item  =======-->
                
                                            <div class="single-slider-item">
                                                <div class="hero-slider-item-wrapper hero-slider-bg-1">
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="hero-slider-content hero-slider-content--left-space">
                                                                    <p class="slider-title slider-title--big-light">歡迎光臨
                                                                    </p>
                                                                    <p class="slider-title slider-title--big-bold">龘虤</p>
                                                                    <p class="slider-title slider-title--small">生命禮儀服務</p>
                                                                    <a class="hero-slider-button" href="shop-left-sidebar.jsp"> <i
                                                                            class="ion-ios-plus-empty"></i> SHOP NOW</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                
                                            <!--=======  End of single slider item  =======-->
                
                                            <!--=======  single slider item  =======-->
                
                                            <div class="single-slider-item">
                                                <div class="hero-slider-item-wrapper hero-slider-bg-2">
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="hero-slider-content hero-slider-content--left-space">
                                                                    <p class="slider-title slider-title--big-light">歡迎光臨
                                                                    </p>
                                                                    <p class="slider-title slider-title--big-bold">龘虤</p>
                                                                    <p class="slider-title slider-title--small">生命禮儀服務</p>
                                                                    <a class="hero-slider-button" href="shop-left-sidebar.jsp"> <i
                                                                            class="ion-ios-plus-empty"></i> SHOP NOW</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                
                                            <!--=======  End of single slider item  =======-->
                
                                            <!--=======  single slider item  =======-->
                
                                            <div class="single-slider-item">
                                                <div class="hero-slider-item-wrapper hero-slider-bg-3">
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="hero-slider-content hero-slider-content--left-space">
                                                                    <p class="slider-title slider-title--big-light">歡迎蒞臨
                                                                    </p>
                                                                    <p class="slider-title slider-title--big-bold">龘虤生命事業</p>
                                                                    <p class="slider-title slider-title--small">專業誠信為您服務</p>
                                                                    <a class="theme-button hero-slider-button"
                                                                        href="shop-left-sidebar.jsp"> <i class="ion-ios-plus-empty"></i>
                                                                        SHOP NOW</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                
                                            <!--=======  End of single slider item  =======-->
                
                                        </div>
                                    </div>
                
                                    <!--=======  End of hero slider wrapper  =======-->
                                </div>
                            </div>
                        </div>
                    </div>
                
                    <!--=======  mobile navigation area  =======-->

                    <div class="header-mobile-navigation d-block d-lg-none">
                        <div class="row align-items-center">
                            <div class="col-6 col-md-6">
                                <div class="header-logo">
                                    <a href="index.html">
                                        <img width="93" height="25" src="<%=request.getContextPath()%>/assets/img/logo_v1.jpg" class="img-fluid" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-6 col-md-6">
                                <div class="mobile-navigation text-end">
                                    <div class="header-icon-wrapper">
                                        <ul class="icon-list justify-content-end">
                                            <li>
                                                <div class="header-cart-icon">
                                                    <a href="cart.jsp">
                                                        <i class="ion-bag"></i>
                                                        <span class="counter">3</span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)" class="mobile-menu-icon"
                                                    id="mobile-menu-trigger"><i class="fa fa-bars"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--=======  End of mobile navigation area  =======-->

                </div>
            </div>
        </div>
    </div>
    <!--====================  End of header area  ====================-->
  
                              
    <!--====================  End of newsletter area  ====================-->
    <!--====================  footer area ====================-->
    <div class="footer-area">
        <div class="footer-copyright">
            <div class="container wide">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-copyright-wrapper footer-copyright-wrapper--default-footer">
                            <div class="container">
                                <div class="row align-items-center no-gutters">
                                    <div class="col-lg-2 col-md-2">
                                        <div class="footer-logo">
                                            <a href="#"><img width="100" height="50" src="<%=request.getContextPath()%>/assets/img/logo_v1.jpg"
                                                    class="img-fluid" alt=""></a>
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-5">

                                        <div class="copyright-text">

                                            Copyright &copy; 2021 <a href="#">Eposi</a>. All Rights Reserved.
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-5">
                                        <div class="copyright-social-wrapper">
                                            <ul class="copyright-social">
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of footer area  ====================-->
    <!--=======  offcanvas mobile menu  =======-->

    <div class="offcanvas-mobile-menu" id="offcanvas-mobile-menu">
        <a href="javascript:void(0)" class="offcanvas-menu-close" id="offcanvas-menu-close-trigger">
            <i class="ion-android-close"></i>
        </a>

        <div class="offcanvas-wrapper">

            <div class="offcanvas-inner-content">
                <nav class="offcanvas-navigation">
                    <ul>
                        <li class="menu-item-has-children"><a href="index.html">祭祖商城</a>
                            <ul class="sub-menu">
                                <li><a href="shop-list-left-sidebar.jsp">商品總攬</a></li>
                                <li><a href="cart.jsp">購物車</a></li>
                            </ul>
                        </li>

                        <li class="menu-item-has-children"><a href="#">預約服務</a>
                            <ul class="sub-menu">
                                <li><a href="blog-post-video-format.jsp">法會直播</a></li>
                                <li><a href="<%=request.getContextPath()%>/front-end/booking/booking.jsp">預約祭祀</a></li>
                                <li><a href="menu-item-has-children">線上祭祀</a></li>
                            </ul>
                        </li>

                        <li class="menu-item-has-children"><a href="#">客服中心</a>
                            <ul class="sub-menu">
                                <li><a href="<%=request.getContextPath()%>/front-end/service/contact.jsp">聯絡我們</a></li>
                                <li><a href="<%=request.getContextPath()%>/front-end/service/about.jsp">關於我們</a></li>
                            </ul>
                        </li>

                        <li><a href="<%=request.getContextPath()%>/front-end/service/faq.jsp">常見問題</a></li>
                    </ul>
                </nav>

                <div class="offcanvas-settings">
                    <nav class="offcanvas-navigation">
                        <ul>
                            <li class="menu-item-has-children"><a href="#">會員登入 </a>
                                <ul class="sub-menu">
                                    <li><a href="<%=request.getContextPath()%>/front-end/memberData/login-register-member.jsp">註冊/登入</a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children"><a href="#">廠商登入 </a>
                                <ul class="sub-menu">
                                    <li><a href="<%=request.getContextPath()%>/front-end/compData/comp-login-register.jsp">註冊/登入</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>

                <div class="offcanvas-widget-area">
                    <!--Off Canvas Widget Social Start-->
                    <div class="off-canvas-widget-social">
                        <a href="#" title="Facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" title="Twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" title="LinkedIn"><i class="fa fa-linkedin"></i></a>
                        <a href="#" title="Youtube"><i class="fa fa-youtube-play"></i></a>
                        <a href="#" title="Vimeo"><i class="fa fa-vimeo-square"></i></a>
                    </div>
                    <!--Off Canvas Widget Social End-->
                </div>
            </div>
        </div>

    </div>

    <!--=======  End of offcanvas mobile menu  =======-->
    <!--====================  search overlay ====================-->

    <div class="search-overlay" id="search-overlay">
        <a href="javascript:void(0)" class="close-search-overlay" id="close-search-overlay">
            <i class="ion-ios-close-empty"></i>
        </a>

        <!--=======  search form  =======-->

        <div class="search-form">
            <form action="#">
                <input type="search" placeholder="Search entire store here ...">
                <button type="submit"><i class="ion-android-search"></i></button>
            </form>
        </div>

        <!--=======  End of search form  =======-->
    </div>

    <!--====================  End of search overlay  ====================-->
    <!--====================  quick view ====================-->

    <div class="modal fade quick-view-modal-container" id="quick-view-modal-container" tabindex="-1" role="dialog"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="col-xl-12 col-lg-12">
                        <!--=======  single product main content area  =======-->
                        <div class="single-product-main-content-area">
                            <div class="row">
                                <div class="col-xl-5 col-lg-6">
                                    <!--=======  product details slider area  =======-->

                                    <div class="product-details-slider-area">


                                        <div class="big-image-wrapper">

                                            <div class="product-details-big-image-slider-wrapper-quick product-details-big-image-slider-wrapper--bottom-space ht-slick-slider"
                                                data-slick-setting='{
                "slidesToShow": 1,
                "slidesToScroll": 1,
                "arrows": false,
                "autoplay": false,
                "autoplaySpeed": 5000,
                "fade": true,
                "speed": 500,
                "prevArrow": {"buttonClass": "slick-prev", "iconClass": "fa fa-angle-left" },
                "nextArrow": {"buttonClass": "slick-next", "iconClass": "fa fa-angle-right" }
            }' data-slick-responsive='[
                {"breakpoint":1501, "settings": {"slidesToShow": 1, "arrows": false} },
                {"breakpoint":1199, "settings": {"slidesToShow": 1, "arrows": false} },
                {"breakpoint":991, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} },
                {"breakpoint":767, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} },
                {"breakpoint":575, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} },
                {"breakpoint":479, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} }
            ]'>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-1.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-2.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-3.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-4.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-5.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                            </div>
                                        </div>


                                        <div class="product-details-small-image-slider-wrapper product-details-small-image-slider-wrapper--horizontal-space ht-slick-slider"
                                            data-slick-setting='{
            "slidesToShow": 4,
            "slidesToScroll": 1,
            "arrows": true,
            "autoplay": false,
            "autoplaySpeed": 5000,
            "speed": 500,
            "asNavFor": ".product-details-big-image-slider-wrapper-quick",
            "focusOnSelect": true,
            "centerMode": false,
            "prevArrow": {"buttonClass": "slick-prev", "iconClass": "fa fa-angle-left" },
            "nextArrow": {"buttonClass": "slick-next", "iconClass": "fa fa-angle-right" }
        }' data-slick-responsive='[
            {"breakpoint":1501, "settings": {"slidesToShow": 3, "arrows": false} },
            {"breakpoint":1199, "settings": {"slidesToShow": 3, "arrows": false} },
            {"breakpoint":991, "settings": {"slidesToShow": 5, "arrows": false, "slidesToScroll": 1} },
            {"breakpoint":767, "settings": {"slidesToShow": 3, "arrows": false, "slidesToScroll": 1} },
            {"breakpoint":575, "settings": {"slidesToShow": 3, "arrows": false, "slidesToScroll": 1} },
            {"breakpoint":479, "settings": {"slidesToShow": 2, "arrows": false, "slidesToScroll": 1} }
        ]'>
                                            <div class="single-image">
                                                <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-1.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-2.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-3.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-4.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-5.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                        </div>
                                    </div>

                                    <!--=======  End of product details slider area  =======-->
                                </div>
                                <div class="col-xl-7 col-lg-6">
                                    <!--=======  single product content description  =======-->
                                    <div class="single-product-content-description">
                                        <p class="single-info">Brands <a href="shop-left-sidebar.jsp">Dolor</a>
                                        </p>
                                        <h4 class="product-title">Lorem ipsum dolor set amet decor</h4>
                                        <div class="product-rating">
                                            <span class="rating">
                                                <i class="ion-android-star active"></i>
                                                <i class="ion-android-star active"></i>
                                                <i class="ion-android-star active"></i>
                                                <i class="ion-android-star active"></i>
                                                <i class="ion-android-star-outline"></i>
                                            </span>

                                            <span class="review-count"> <a href="#">(2 reviews)</a> | <a href="#">Write
                                                    A Review</a> </span>
                                        </div>

                                        <p class="single-grid-product__price"><span
                                                class="discounted-price">$100.00</span> <span
                                                class="main-price discounted">$120.00</span></p>

                                        <p class="single-info">Product Code: <span class="value">CODE123</span> </p>
                                        <p class="single-info">Reward Points: <span class="value">200</span> </p>
                                        <p class="single-info">Availability: <span class="value">In Stock</span>
                                        </p>

                                        <p class="product-description">Lorem ipsum dolor sit amet consectetur
                                            adipisicing elit. At, delectus. Voluptates omnis distinctio vitae quo
                                            quia
                                            veniam minima dolorem hic necessitatibus pariatur, quae fuga similique
                                            optio
                                            laboriosam assumenda voluptatum aperiam.</p>

                                        <div class="product-actions product-actions--quick-view">
                                            <div class="quantity-selection">
                                                <label>Qty</label>
                                                <input type="number" value="1" min="1">
                                            </div>

                                            <div class="product-buttons">
                                                <a class="cart-btn" href="#"> <i class="ion-bag"></i> ADD TO
                                                    CART</a>
                                                <span class="wishlist-compare-btn">
                                                    <a> <i class="ion-heart"></i></a>
                                                    <a> <i class="ion-android-options"></i></a>
                                                </span>
                                            </div>

                                        </div>


                                    </div>
                                    <!--=======  End of single product content description  =======-->
                                </div>
                            </div>
                        </div>
                        <!--=======  End of single product main content area  =======-->
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--====================  End of quick view  ====================-->

    <%-- ChatBot --%>
    <div class="container">
        <div class="chatbox">
            <div class="chatbox__support">
                <div class="chatbox__header">
                    <div class="chatbox__image--header">
                        <img src="https://s.yimg.com/ny/api/res/1.2/wxWUiWDLgDlYZCUwkMFfFw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtjZj13ZWJw/https://s.yimg.com/os/creatr-uploaded-images/2022-01/23b5caf0-7f3a-11ec-8e67-0aced8de185c" alt="image" width="50" height="50"
                            class="rounded-circle me-2">
                    </div>
                    <div class="chatbox__content--header">
                        <h4 class="chatbox__heading--header" id="statusOutput">manager</h4>
                        <p class="chatbox__description--header">我要代替月亮懲罰你</p>
                    </div>
                </div>
                <div class="chatbox__messages">
                    <div id="messagesArea"></div>
                </div>
                <!-- 輸入對話框 -->
                <div class="chatbox__footer">
                    <textarea name="message" id="message" placeholder="請輸入訊息"></textarea>
                    <button class="chatbox__send--footer" onclick="sendMessage();">傳送</button>
                </div>
            </div>
            <div class="chatbox__button">
                <button id="connect" onclick="connect();">button</button>
                                <input id="cus_name" type="hidden">
            </div>
        </div>
    </div>
    <script src="<%=request.getContextPath()%>/assets/js/Chat.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
    <%-- ChatBot End --%>
    <!--=============================================
    =            JS files        =
    =============================================-->

    <!-- Vendor JS -->
    <script src="<%=request.getContextPath()%>/assets/js/vendors.js"></script>

    <!-- Active JS -->
    <script src="<%=request.getContextPath()%>/assets/js/active.js"></script>

    <!--=====  End of JS files ======-->

</body>

</html>