<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, web.cart.entity.CartVO" %>

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
                                            <li><a href="${pageContext.request.contextPath}/AllProductServlet.controller?action=selectAll">商品總覽</a></li>
                                            <li><a href="${pageContext.request.contextPath}/CartServlet.controller?action=ViewCart">購物車</a></li>
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
                                            <span class="counter">${buyListCount}</span>
                                        </a>
                                        <!-- mini cart  -->
                                        
                                        
                                        <div class="mini-cart" id="mini-cart">
                                            <div class="cart-items-wrapper ps-scroll">
                                        <%
                                        	Vector<CartVO> buyList = (Vector<CartVO>) session.getAttribute("myCart");
                                        %>
                                        <%if (buyList != null && (buyList.size() > 0)){ %>
                                        	<%
                                            	for(int index =0; index < buyList.size(); index++){
                                            		CartVO order = buyList.get(index);
                                            %>
                                            <%-- <c:forEach var="cart" items="${myCart}"> --%>
                                            	<%-- ${cart.key}
                                            	${cart.value} --%>
                                            <%-- <%
                                            Map<Integer, Integer> myCart = (Map) session.getAttribute("myCart");
                                            	for(int i = 1; i < myCart.size(); i++){
                                            		Integer cart = myCart.get(i);
                                            	}
                                            %> --%>
                                            
                                                <div class="single-cart-item">
                                                    <!-- <a href="javascript:void(0)" class="remove-icon"><i
                                                            class="ion-android-close"></i></a> -->
                                                    <a href="${pageContext.request.contextPath}/CartServlet.controller?action=Delete&del=<%= index %>&prodNo=${prodNo}" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    <%-- <form action="" class="remove-icon" method="get">
                                                    	<input type="hidden" name="del" value="<%= index %>">
                                                    	
                                                    	<i class="ion-android-close"></i>
                                                            
                                                    </form> --%>
                                                    <%-- <form action="${pageContext.request.contextPath}/CartServlet.controller?action=Delete" method="get">
                                                    	<input type="hidden" name="del" value="<%= index %>">
                                                    	<button type="sumbit" class="remove-icon"></button>
                                                    	<i class="ion-android-close"></i>
                                                            
                                                    </form> --%>
                                                    <div class="image">
                                                        <a href="single-product.jsp">
                                                            <img width="80" height="106"
                                                                src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=<%=order.getProdNo()%>&prodImg=1"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                    
                                                        <p class="product-title"><a href="single-product.jsp"><%=order.getProdName()%></a></p>
                                                        <p class="count"><span><%=order.getProdAmount()%> x </span> $ <%=order.getProdPrice() %></p>
                                                    </div>
                                                	
                                                <%-- </c:forEach> --%>
                                            	</div>
                                            	
                                            <%}%>
                                            
                                            <div class="cart-calculation">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <td class="text-start">商品總金額 :</td>
                                                            <td class="text-end">$${amount}</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <%}%>
                                            <div class="cart-buttons">
                                                <a href="${pageContext.request.contextPath}/CartServlet.controller?action=ViewCart">檢視購物車</a>
                                                <a href="${pageContext.request.contextPath}/CartServlet.controller?action=CheckOut">結帳</a>
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

                    <!--=======  mobile navigation area  =======-->

                    <!-- <div class="header-mobile-navigation d-block d-lg-none">
                        <div class="row align-items-center">
                            <div class="col-6 col-md-6">
                                <div class="header-logo">
                                    <a href="index.html">
                                        <img width="93" height="25" src="assets/img/logo.webp" class="img-fluid" alt="">
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
                    </div> -->

                    <!--=======  End of mobile navigation area  =======-->

                </div>
            </div>
        </div>
    </div>
    <!--====================  End of header area  ====================-->

    <!--=======  mobile navigation area  =======-->

    <!-- <div class="header-mobile-navigation d-block d-lg-none">
        <div class="row align-items-center">
            <div class="col-6 col-md-6">
                <div class="header-logo">
                    <a href="index.html">
                        <img width="93" height="25" src="assets/img/logo.webp" class="img-fluid" alt="">
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
                                <a href="javascript:void(0)" class="mobile-menu-icon" id="mobile-menu-trigger"><i
                                        class="fa fa-bars"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> -->

    <!--=======  End of mobile navigation area  =======-->

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
                            <h2 class="breadcrumb-content__title">Cart</h2>
                            <ul class="breadcrumb-content__page-map">
                                <li><a href="index.html">Home</a></li>
                                <li class="active">Cart</li>
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
    <!--====================  page content area ====================-->
    <div class="page-content-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--=======  page wrapper  =======-->
                    <div class="page-wrapper">
                        <div class="page-content-wrapper">
                            <form action="#">
                                <!--=======  cart table  =======-->

                                <div class="cart-table table-responsive">
                                    <table class="table">
                                    
                                        	
                                        <thead>
                                            <tr>
                                                <th class="pro-thumbnail">商品圖片</th>
                                                <th class="pro-title">商品名稱</th>
                                                <th class="pro-price">價格</th>
                                                <th class="pro-quantity">數量</th>
                                                <th class="pro-subtotal">商品金額</th>
                                                <th class="pro-remove">移除</th>
                                            </tr>
                                        </thead>
                                        
                                        <%
                                            for(int index =0; index < buyList.size(); index++){
                                            	CartVO order = buyList.get(index);
                                        %>
                                        <tbody>
                                            <tr>
                                                <td class="pro-thumbnail"><a href="single-product.jsp"><img width="600"
                                                            height="800" src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=<%=order.getProdNo()%>&prodImg=1"
                                                            class="img-fluid" alt="Product"></a></td>
                                                <td class="pro-title"><a href="single-product.jsp"><%=order.getProdName()%></a></td>
                                                <td class="pro-price"><span>$ <%=order.getProdPrice() %></span></td>
                                                <td class="pro-quantity">
                                                    <div class="quantity-selection"><input type="number" value="1"
                                                            min="1"></div>
                                                </td>
                                                <td class="pro-subtotal"><span>$${amount}</span></td>
                                                <td class="pro-remove"><a href="${pageContext.request.contextPath}/CartServlet.controller?action=Delete&del=<%= index %>&prodNo=${prodNo}"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <%}%>
                                    </table>
                                </div>

                                <!--=======  End of cart table  =======-->


                            </form>

                            <div class="row">

                                <div class="col-lg-6 col-12">
                                    <!--=======  Calculate Shipping  =======-->

                                    <!-- <div class="calculate-shipping">
                                        <h4>Calculate Shipping</h4>
                                        <form action="#">
                                            <div class="row">
                                                <div class="col-md-6 col-12">
                                                    <select class="nice-select">
                                                        <option>Bangladesh</option>
                                                        <option>China</option>
                                                        <option>country</option>
                                                        <option>India</option>
                                                        <option>Japan</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 col-12">
                                                    <select class="nice-select">
                                                        <option>Dhaka</option>
                                                        <option>Barisal</option>
                                                        <option>Khulna</option>
                                                        <option>Comilla</option>
                                                        <option>Chittagong</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6 col-12">
                                                    <input type="text" placeholder="Postcode / Zip">
                                                </div>
                                                <div class="col-md-6 col-12">
                                                    <input type="submit" value="Estimate">
                                                </div>
                                            </div>
                                        </form>
                                    </div> -->

                                    <!--=======  End of Calculate Shipping  =======-->

                                    <!--=======  Discount Coupon  =======-->

                                    <!-- <div class="discount-coupon">
                                        <h4>Discount Coupon Code</h4>
                                        <form action="#">
                                            <div class="row">
                                                <div class="col-md-6 col-12">
                                                    <input type="text" placeholder="Coupon Code">
                                                </div>
                                                <div class="col-md-6 col-12">
                                                    <input type="submit" value="Apply Code">
                                                </div>
                                            </div>
                                        </form>
                                    </div> -->

                                    <!--=======  End of Discount Coupon  =======-->

                                </div>


                                <div class="col-lg-6 col-12 d-flex">
                                    <!--=======  Cart summery  =======-->

                                    <div class="cart-summary">
                                        <div class="cart-summary-wrap">
                                            <h4>Cart Summary</h4>
                                            <p>Sub Total <span>$1250.00</span></p>
                                            <p>Shipping Cost <span>$00.00</span></p>
                                            <h2>Grand Total <span>$1250.00</span></h2>
                                        </div>
                                        <div class="cart-summary-button">
                                            <button class="checkout-btn">Checkout</button>
                                            <button class="update-btn">Update Cart</button>
                                        </div>
                                    </div>

                                    <!--=======  End of Cart summery  =======-->

                                </div>

                            </div>
                        </div>
                    </div>
                    <!--=======  End of page wrapper  =======-->
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of page content area  ====================-->
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