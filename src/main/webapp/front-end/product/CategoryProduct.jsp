<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Eposi - Multipurpose eCommerce Bootstrap5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="icon" href="assets/img/favicon.ico">

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
    <link href="${pageContext.request.contextPath}/assets/css/vendors.css" rel="stylesheet">
    <!-- Main CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">


</head>

<body>
    <!--====================  header area ====================-->
    <div class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--=======  header wrapper  =======-->
                    <div class="header-wrapper d-none d-lg-flex">
                        <!-- logo -->
                        <div class="logo">
                            <a href="index.html">
                                <img width="93" height="25" src="${pageContext.request.contextPath}/assets/img/logo.webp" class="img-fluid" alt="">
                            </a>
                        </div>
                        <!-- menu wrapper -->
                        <div class="navigation-menu-wrapper">
                            <nav>
                                <ul>
                                    <li class="menu-item-has-children"><a href="#">祭祖商城</a>
                                        <ul class="sub-menu">
                                        
                                            <li>
                                            	<form METHOD="post" action="" enctype="multipart/form-data">
                                            		<a href="${pageContext.request.contextPath}/AllProductServlet.controller?action=selectAll">商品總覽</a>
                                            	</form>
                                            </li>
                                            
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
                                            <li><a href="contact.jsp">聯絡我們</a></li>
                                            <li><a href="about.jsp">關於我們</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="faq.jsp">常見問題</a></li>
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
                                                                src="${pageContext.request.contextPath}/assets/img/products/product-1-80x106.webp"
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
                                                                src="${pageContext.request.contextPath}/assets/img/products/product-2-80x106.webp"
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
                                                                src="${pageContext.request.contextPath}/assets/img/products/product-3-80x106.webp"
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
                                                    <li><a href="login-register.jsp">註冊</a></li>
                                                    <li><a href="login-register.jsp">登入</a></li>
                                                </ul>
                                            </div>
                                            <div class="single-settings-block">
                                                <h4 class="title">廠商專區 </h4>
                                                <ul>
                                                    <li><a href="login-register.jsp">註冊</a></li>
                                                    <li><a href="login-register.jsp">登入</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--=======  End of header wrapper  =======-->

                </div>
            </div>
        </div>
    </div>
    <!--====================  End of header area  ====================-->

    <!--====================  breadcrumb area ====================-->
    <div class="breadcrumb-area section-space--half">
        <div class="container wide">
            <div class="row">
                <div class="col-lg-12">
                    <!--=======  breadcrumb wrpapper  =======-->
                    <div class="breadcrumb-wrapper breadcrumb-bg">
                        <!--=======  breadcrumb content  =======-->
                        <div class="breadcrumb-content">
                            <h2 class="breadcrumb-content__title">Shop</h2>
                            <ul class="breadcrumb-content__page-map">
                                <li><a href="index.html">Home</a></li>
                                <li class="active">Shop</li>
                            </ul>
                        </div>
                        <!--=======  End of breadcrumb content  =======-->
                    </div>
                    <!--=======  End of breadcrumb wrpapper  =======-->
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of breadcrumb area  ====================-->

    <!--====================  shop page content area ====================-->
    <div class="page-content-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--=======  shop page wrapper  =======-->
                    <div class="page-wrapper">
                        <div class="page-content-wrapper">
                            <div class="row">
                                <div class="col-lg-12">
                                    <!--=======  shop page header  =======-->
                                    <div class="shop-header">
                                        <div class="shop-header__left">
                                            <div class="grid-icons">
                                                <button data-target="grid three-column" data-tippy="3"
                                                    data-tippy-inertia="true" data-tippy-animation="fade"
                                                    data-tippy-delay="50" data-tippy-arrow="true"
                                                    data-tippy-theme="roundborder" class="three-column"></button>
                                                <button data-target="grid four-column" data-tippy="4"
                                                    data-tippy-inertia="true" data-tippy-animation="fade"
                                                    data-tippy-delay="50" data-tippy-arrow="true"
                                                    data-tippy-theme="roundborder"
                                                    class="four-column d-none d-lg-block"></button>
                                                <button data-target="list" data-tippy="List" data-tippy-inertia="true"
                                                    data-tippy-animation="fade" data-tippy-delay="50"
                                                    data-tippy-arrow="true" data-tippy-theme="roundborder"
                                                    class="active list-view"></button>
                                            </div>

                                            <!-- <div class="shop-header__left__message">
                                                 商品總筆數  <c:out value="${selectAllCount}"/>
                                            </div> -->
                                        </div>

                                        <div class="shop-header__right">

                                            <div class="single-select-block d-inline-block">
                                                <span class="select-title">顯示筆數</span>
                                                <select>
                                                    <option value="1">10</option>
                                                    <option value="2">20</option>
                                                    <option value="3">30</option>
                                                    <option value="4">40</option>
                                                </select>
                                            </div>

                                            <div class="single-select-block d-inline-block">
                                                <span class="select-title">Sort By:</span>
                                                <select class="pr-0">
                                                    <option value="1">Default</option>
                                                    <option value="2">Name (A-Z)</option>
                                                    <option value="3">Price (min - max)</option>
                                                    <option value="4">Color</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <!--=======  End of shop page header  =======-->
                                </div>
                                <div class="col-lg-3 order-2 order-lg-1">
                                    <!--=======  page sidebar wrapper =======-->
                                    <div class="page-sidebar-wrapper">
                                        <!--=======  single sidebar widget  =======-->
                                        <div class="single-sidebar-widget">
											
											<!-- 左邊欄商品分類 -->
											

                                            <h4 class="single-sidebar-widget__title">商品分類</h4>
                                            
                                            <ul class="single-sidebar-widget__category-list">
                                                 
                                                <c:forEach var="prodTypeVO" items="${selectAllType}">
                                                <li class="has-children"><a href="${pageContext.request.contextPath}/AllProductServlet.controller?action=selectByType&prodTypeCode=${prodTypeVO.prodTypeCode}" class="active">${prodTypeVO.prodTypeDesc}<span
                                                            class="counter"><c:out value="${typeCount}"/></span></a>
                                                </li>
                                                
												</c:forEach>
                                            </ul>
                                            
                                        </div>
                                        <!--=======  End of single sidebar widget  =======-->
                                        <!--=======  single sidebar widget  =======-->
                                        <div class="single-sidebar-widget">
                                            <div class="sidebar-sub-widget-wrapper">
                                                <div class="sidebar-sub-widget">
                                                    <h4
                                                        class="sidebar-sub-widget__title sidebar-sub-widget__title--price-title">
                                                        價格篩選</h4>
                                                    <div class="sidebar-price">
                                                        <div id="price-range" class="mb-10"></div>
                                                        <input type="text" id="price-amount" class="price-amount">
                                                            ${getPrice.min}${getPrice.max}
                                                    </div>
                                                </div>
                                                <!-- <div class="sidebar-sub-widget">
                                                    <h4
                                                        class="sidebar-sub-widget__title sidebar-sub-widget__title--abs-icon">
                                                        Manufacturer</h4>
                                                    <ul
                                                        class="single-sidebar-widget__category-list single-sidebar-widget__category-list--abs-icon">
                                                        <li><a href="#">Lorem ipsum (7)</a></li>
                                                        <li><a href="#">Dolor (8) </a></li>
                                                        <li><a href="#">Cillium (10) </a></li>
                                                        <li><a href="#">Dolore (14) </a></li>
                                                        <li><a href="#">Lorem ipsum (7)</a></li>
                                                        <li><a href="#">Dolor (8) </a></li>
                                                        <li><a href="#">Cillium (10) </a></li>
                                                        <li><a href="#">Dolore (14) </a></li>
                                                    </ul>
                                                </div>
                                                <div class="sidebar-sub-widget">
                                                    <h4
                                                        class="sidebar-sub-widget__title sidebar-sub-widget__title--abs-icon">
                                                        Select By Color</h4>
                                                    <ul
                                                        class="single-sidebar-widget__category-list single-sidebar-widget__category-list--abs-icon">
                                                        <li><a href="#">Black (7)</a></li>
                                                        <li><a href="#">Blue (8) </a></li>
                                                        <li><a href="#">Yellow (10) </a></li>
                                                        <li><a href="#">Pink (14) </a></li>
                                                        <li><a href="#">Red (7)</a></li>
                                                        <li><a href="#">Cayan (8) </a></li>
                                                    </ul>
                                                </div> -->
                                            </div>
                                        </div>
                                        <!--=======  End of single sidebar widget  =======-->
                                        <!--=======  single sidebar widget  =======-->
                                        <!-- <div class="single-sidebar-widget">
                                            <h4 class="single-sidebar-widget__title">Popular Tags</h4>
                                            <ul class="single-sidebar-widget__tag-list">
                                                <li><a href="#">Car Seats</a></li>
                                                <li><a href="#">Chair</a></li>
                                                <li><a href="#">Engine Parts</a></li>
                                                <li><a href="#">Sofas</a></li>
                                                <li><a href="#">Sofas</a></li>
                                                <li><a href="#">Decor</a></li>
                                                <li><a href="#">Furniture</a></li>
                                                <li><a href="#">Chair</a></li>

                                            </ul>
                                        </div>  -->
                                        <!--=======  End of single sidebar widget  =======-->
                                    </div>
                                    <!--=======  End of page sidebar wrapper  =======-->
                                </div>
                                <div class="col-lg-9 order-1 order-lg-2">
                                    <!--=======  shop page content  =======-->
                                    <div class="shop-page-content">

                                        <div class="row shop-product-wrap list">                                            
                                                                                    
                                            <div class="col-12 col-lg-4 col-md-4 col-sm-6">
                                                <!--=======  product grid view  =======-->
                                               
                                                <div class="single-grid-product grid-view-product">
                                                    <div class="single-grid-product__image">
                                                        <div class="single-grid-product__label">
                                                            <span class="sale">20%</span>
                                                            <span class="new">New</span>
                                                        </div>
                                                        <a href="single-product.jsp">
                                                            <img width="600" height="800"
                                                                src="${pageContext.request.contextPath}/assets/img/products/1-600x800.webp"
                                                                class="img-fluid" alt="">
                                                            <img width="600" height="800"
                                                                src="${pageContext.request.contextPath}/assets/img/products/1_1-600x800.webp"
                                                                class="img-fluid" alt="">
                                                        </a>

                                                        <div class="hover-icons">
                                                            <a href="javascript:void(0)"><i class="ion-bag"></i></a>
                                                            <a href="javascript:void(0)"><i class="ion-heart"></i></a>
                                                            <a href="javascript:void(0)"><i
                                                                    class="ion-android-options"></i></a>
                                                            <a href="javascript:void(0)" data-bs-toggle="modal"
                                                                data-bs-target="#quick-view-modal-container"><i
                                                                    class="ion-android-open"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="single-grid-product__content">
                                                        <div class="single-grid-product__category-rating">
                                                            <span class="category"><a
                                                                    href="shop-left-sidebar.jsp">Decor</a></span>
                                                            <span class="rating">
                                                                <i class="ion-android-star active"></i>
                                                                <i class="ion-android-star active"></i>
                                                                <i class="ion-android-star active"></i>
                                                                <i class="ion-android-star active"></i>
                                                                <i class="ion-android-star-outline"></i>
                                                            </span>
                                                        </div>

                                                        <h3 class="single-grid-product__title"> <a
                                                                href="single-product.jsp">Cillum dolore lorem ipsum
                                                                decoration item</a></h3>
                                                        <p class="single-grid-product__price"><span
                                                                class="discounted-price">$100.00</span> <span
                                                                class="main-price discounted">$120.00</span></p>
                                                    </div>
                                                </div>
                                                <!--=======  End of product grid view  =======-->
                                                <!--=======  list view product  =======-->
                                                <c:forEach var="prodVO" items="${result}">
                                                <div
                                                    class="single-grid-product single-grid-product--list-view list-view-product">
                                                    <div
                                                        class="single-grid-product__image single-grid-product--list-view__image">
                                                        <!-- <div class="single-grid-product__label">
                                                            <span class="sale">-10%</span>
                                                            <span class="new">New</span>
                                                        </div> -->
                                                        <a href="${pageContext.request.contextPath}/SingleProductServlet.controller?prodNo=${prodVO.prodNo}">
                                                            <img width="600" height="800"
                                                                src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=${prodVO.prodNo}&prodImg=1"
                                                                class="img-fluid" alt="">
                                                            <%-- <img width="600" height="800"
                                                                src="${pageContext.request.contextPath}/assets/img/products/1_1-600x800.webp"
                                                                class="img-fluid" alt=""> --%>
                                                        </a>

                                                        <div class="hover-icons">
                                                            <a href="javascript:void(0)"><i class="ion-bag"></i></a>
                                                            <a href="javascript:void(0)"><i class="ion-heart"></i></a>
                                                            <a href="javascript:void(0)"><i
                                                                    class="ion-android-options"></i></a>
                                                            <a href="javascript:void(0)" data-bs-toggle="modal"
                                                                data-bs-target="#quick-view-modal-container"><i
                                                                    class="ion-android-open"></i></a>
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="single-grid-product__content single-grid-product--list-view__content">

                                                        <!-- <div class="category"><a href="shop-left-sidebar.jsp">Decor</a>
                                                        </div> -->
                                                        <h3
                                                            class="single-grid-product__title single-grid-product--list-view__title">
                                                            <!-- <a href="../webprojt-shopping/SingleProductServlet">${prodVO.prodName}</a> -->
                                                            <a href="${pageContext.request.contextPath}/SingleProductServlet.controller?prodNo=${prodVO.prodNo}">${prodVO.prodName}</a>

                                                        </h3>
                                                        <div class="rating">
                                                            <i class="ion-android-star active"></i>
                                                            <i class="ion-android-star active"></i>
                                                            <i class="ion-android-star active"></i>
                                                            <i class="ion-android-star active"></i>
                                                            <i class="ion-android-star-outline"></i>
                                                        </div>
                                                        <p
                                                            class="single-grid-product__price single-grid-product--list-view__price">
                                                            <span class="discounted-price">$${prodVO.prodPrice}</span> <span
                                                                class="main-price discounted">$${prodVO.prodPrice}</span>
                                                        </p>
                                                        <p class="single-grid-product--list-view__product-short-desc">
                                                            ${prodVO.prodDesc}
                                                        </p>
                                                    </div>
                                                </div>
                                                </c:forEach>
                                                <!--=======  End of list view product  =======-->
                                            </div>
                                            
                                        </div>

                                    </div>

                                    <!--=======  pagination area =======-->
                                    <div class="pagination-area">
                                        <div class="pagination-area__left">
                                            Showing 1 to 9 of 11 (2 Pages)
                                        </div>
                                        <div class="pagination-area__right">
                                            <ul class="pagination-section">
                                                <li><a class="active" href="#">1</a></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">></a></li>
                                                <li><a href="#">>|</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!--=======  End of pagination area  =======-->
                                    <!--=======  End of shop page content  =======-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--=======  End of shop page wrapper  =======-->
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of shop page content area  ====================-->

    <!--====================  newsletter area ====================-->
    <div class="newsletter-area section-space--inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="newsletter-wrapper">
                        <p class="small-text">Special Ofers For Subscribers</p>
                        <h3 class="title">Ten Percent Member Discount</h3>
                        <p class="short-desc">Subscribe to our newsletters now and stay up to date with new collections,
                            the latest lookbooks and exclusive offers.</p>

                        <div class="newsletter-form">
                            <form id="mc-form" class="mc-form">
                                <input type="email" placeholder="Enter Your Email Address Here..." required>
                                <button type="submit" value="submit">SUBSCRIBE</button>
                            </form>

                        </div>
                        <!-- mailchimp-alerts Start -->
                        <div class="mailchimp-alerts">
                            <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                            <div class="mailchimp-success"></div><!-- mailchimp-success end -->
                            <div class="mailchimp-error"></div><!-- mailchimp-error end -->
                        </div>
                        <!-- mailchimp-alerts end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
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
                                            <a href="#"><img width="93" height="25" src="${pageContext.request.contextPath}/assets/img/logo.webp"
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
                                <li><a href="blog-post-audio-format.jsp">預約祭祀</a></li>
                                <li><a href="menu-item-has-children">線上祭祀</a></li>
                            </ul>
                        </li>

                        <li class="menu-item-has-children"><a href="#">客服中心</a>
                            <ul class="sub-menu">
                                <li><a href="contact.jsp">聯絡我們</a></li>
                                <li><a href="about.jsp">關於我們</a></li>
                            </ul>
                        </li>

                        <li><a href="faq.jsp">常見問題</a></li>
                    </ul>
                </nav>

                <div class="offcanvas-settings">
                    <nav class="offcanvas-navigation">
                        <ul>
                            <li class="menu-item-has-children"><a href="#">會員登入 </a>
                                <ul class="sub-menu">
                                    <li><a href="login-register.jsp">註冊</a></li>
                                    <li><a href="login-register.jsp">登入</a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children"><a href="#">廠商登入 </a>
                                <ul class="sub-menu">
                                    <li><a href="login-register.jsp">註冊</a></li>
                                    <li><a href="login-register.jsp">登入</a></li>
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
                                                    <img width="600" height="800" src="${pageContext.request.contextPath}/assets/img/products/big1-1.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="${pageContext.request.contextPath}/assets/img/products/big1-2.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="${pageContext.request.contextPath}/assets/img/products/big1-3.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="${pageContext.request.contextPath}/assets/img/products/big1-4.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="${pageContext.request.contextPath}/assets/img/products/big1-5.webp"
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
                                                <img width="600" height="800" src="${pageContext.request.contextPath}/assets/img/products/big1-1.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="${pageContext.request.contextPath}/assets/img/products/big1-2.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="${pageContext.request.contextPath}/assets/img/products/big1-3.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="${pageContext.request.contextPath}/assets/img/products/big1-4.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="${pageContext.request.contextPath}/assets/img/products/big1-5.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                        </div>
                                    </div>

                                    <!--=======  End of product details slider area  =======-->
                                </div>
                                <div class="col-xl-7 col-lg-6">
                                    <!--=======  single product content description  =======-->
                                    <div class="single-product-content-description">
                                        <p class="single-info">Brands <a href="shop-left-sidebar.jsp">Dolor</a> </p>
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
                                        <p class="single-info">Availability: <span class="value">In Stock</span> </p>

                                        <p class="product-description">Lorem ipsum dolor sit amet consectetur
                                            adipisicing elit. At, delectus. Voluptates omnis distinctio vitae quo quia
                                            veniam minima dolorem hic necessitatibus pariatur, quae fuga similique optio
                                            laboriosam assumenda voluptatum aperiam.</p>

                                        <div class="product-actions product-actions--quick-view">
                                            <div class="quantity-selection">
                                                <label>Qty</label>
                                                <input type="number" value="1" min="1">
                                            </div>

                                            <div class="product-buttons">
                                                <a class="cart-btn" href="#"> <i class="ion-bag"></i> ADD TO CART</a>
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
    <!-- scroll to top  -->
    <div id="scroll-top">
        <span>線上客服</span><i class="ion-chevron-right"></i><i class="ion-chevron-right"></i>
    </div>
    <!-- end of scroll to top -->
    <!--=============================================
    =            JS files        =
    =============================================-->

    <!-- Vendor JS -->
    <script src="${pageContext.request.contextPath}/assets/js/vendors.js"></script>

    <!-- Active JS -->
    <script src="${pageContext.request.contextPath}/assets/js/active.js"></script>

    <!--=====  End of JS files ======-->

</body>

</html>