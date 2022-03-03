
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><!DOCTYPE html>
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
                                            <!-- <li><a href="/webprojt-shopping/AllProductServlet">商品總攬</a></li> -->
                                            <li><a href="${pageContext.request.contextPath}/AllProductServlet.controller?action=selectAll">商品總覽</a></li>
                                            
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
                                        <%
                                        	Vector<CartVO> buyList = (Vector<CartVO>) session.getAttribute("myCart");
                                        %>
                                        <%if (buyList != null && (buyList.size() > 0)){ %>
                                        	<%
                                            	for(int i =0; i < buyList.size(); i++){
                                            		CartVO order = buyList.get(i);
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
                                                    <a href="javascript:void(0)" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    <div class="image">
                                                        <a href="single-product.jsp">
                                                            <%-- <img width="80" height="106"
                                                                src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=${prodVO.prodNo}&prodImg=1"
                                                                class="img-fluid" alt=""> --%>
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                    
                                                        <p class="product-title"><a href="single-product.jsp"><%=order.getProdName()%></a></p>
                                                        <p class="count"><span><%=order.getProdAmount()%> x </span> "$"<%=order.getProdPrice() %></p>
                                                    </div>
                                                </div>
                                                <%-- </c:forEach> --%>
                                            </div>
                                            <%}%>
                                            <div class="cart-calculation">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <td class="text-start">商品總金額 :</td>
                                                            <td class="text-end">$${cart.value * cprodPrice}></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            
                                            <div class="cart-buttons">
                                                <a href="${pageContext.request.contextPath}/front-end/product/cart.jsp">檢視購物車</a>
                                                <a href="${pageContext.request.contextPath}/front-end/product/checkout.jsp">結帳</a>
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
										<%}%>
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
                            <h2 class="breadcrumb-content__title">Single Product</h2>
                            <ul class="breadcrumb-content__page-map">
                                <li><a href="index.html">Home</a></li>
                                <li class="active">Single Product</li>
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
                            <!--=======  single product main content area  =======-->
                            <div class="single-product-main-content-area section-space">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <!--=======  product details slider area  =======-->

                                        <div class="product-details-slider-area">


                                            <div class="big-image-wrapper">

                                                <div class="product-details-big-image-slider-wrapper product-details-big-image-slider-wrapper--bottom-space ht-slick-slider"
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
        											<!-- 顯示放大圖片 -->
                                                    <div class="single-image">
                                                        <img id="bigPicture" width="600" height="800"
                                                            src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=${param.prodNo}&prodImg=1" class="img-fluid"
                                                            alt="">
                                                    </div>
<!--                                                     <div class="single-image"> -->
<!--                                                         <img width="600" height="800" -->
<%--                                                             src="${pageContext.request.contextPath}/pictureServlet?prodNo=${param.prodNo}＆${buf2}" class="img-fluid" --%>
<!--                                                             alt=""> -->
<!--                                                     </div> -->
<!--                                                     <div class="single-image"> -->
<!--                                                         <img width="600" height="800" -->
<%--                                                             src="${pageContext.request.contextPath}/pictureServlet?prodNo=${param.prodNo}＆prodImg3" class="img-fluid" --%>
<!--                                                             alt=""> -->
<!--                                                     </div> -->
                                                    <!-- <div class="single-image">
                                                        <img width="600" height="800"
                                                            src="assets/img/products/big1-4.webp" class="img-fluid"
                                                            alt="">
                                                    </div>
                                                    <div class="single-image">
                                                        <img width="600" height="800"
                                                            src="assets/img/products/big1-5.webp" class="img-fluid"
                                                            alt="">
                                                    </div> -->
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
        "asNavFor": ".product-details-big-image-slider-wrapper",
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
    											<!-- 三張小圖片 -->
                                                <div class="single-image">
                                                    <img name="pic" width="600" height="800" src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=${param.prodNo}&prodImg=1"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <c:if test="${prodImg != 0}">
                                                <div class="single-image">
                                                    <img name="pic" width="600" height="800" src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=${param.prodNo}&prodImg=2"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img name="pic" width="600" height="800" src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=${param.prodNo}&prodImg=3"
                                                        class="img-fluid" alt="">
                                                </div>
                                                </c:if>
                                                <!-- <div class="single-image">
                                                    <img width="600" height="800" src="assets/img/products/big1-4.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="assets/img/products/big1-5.webp"
                                                        class="img-fluid" alt="">
                                                </div> -->
                                            </div>
                                        </div>

                                        <!--=======  End of product details slider area  =======-->
                                    </div>
                                    <div class="col-lg-6">
                                        <!--=======  single product content description  =======-->
                                        <div class="single-product-content-description">
                                            <!-- <p class="single-info">Brands <a href="shop-left-sidebar.jsp">Dolor</a> -->
                                            </p>
                                            
                                            <h4 class="product-title">${prodName}</h4>
                                            <div class="product-rating">
                                                <span class="rating">
                                                    <i class="ion-android-star active"></i>
                                                    <i class="ion-android-star active"></i>
                                                    <i class="ion-android-star active"></i>
                                                    <i class="ion-android-star active"></i>
                                                    <i class="ion-android-star-outline"></i>
                                                </span>

                                                <span class="review-count"> <a href="#">(2 reviews)則商品評論</a> | <a
                                                        href="#">留下商品評論</a> </span>
                                            </div>
											
                                            <p class="single-grid-product__price"><span
                                                    class="discounted-price">$${prodPrice}</span><!-- <span
                                                    class="main-price discounted">$${prodPrice}</span> --></p>

                                            <p class="single-info">商品編號: <span class="value">${prodNo}</span> </p>
                                            <!--<p class="single-info">Reward Points: <span class="value">200</span> </p>-->
                                            <p class="single-info">商品庫存: <span class="value">${prodStock}</span>
                                            </p>
                                            <h4 class="product-title"></h4>
                                            <c:if test="${prodStock == 0}">
                                            	<div class="product-actions">
                                                	<span class="cart-btn"> 補貨中</span>
                                            	</div>
											</c:if>
											<c:if test="${prodStock != 0}">
												<form action="${pageContext.request.contextPath}/CartServlet.controller?action=AddCart">
                                            	<div class="product-actions">
                                            		<p class="single-info">數量: <input type="text" name="prodAmount" size="3" value=1> </p>
                                            	</div>
                                                
                                            	<br>
                                                <div class="product-buttons ml-0">
                                                
                                                	<input type="hidden" name="prodNo" value="${prodNo}">
                                                	<input type="hidden" name="prodName" value="${prodName}">
                                                	<input type="hidden" name="prodPrice" value="${prodPrice}">
                                                	<input type="hidden" name="prodStock" value="${prodStock}">
                                                	<input type="hidden" name="action" value="AddCart">
                                                	<button class="cart-btn" type="submit">加入購物車</button>
                                                	<%-- <a class="cart-btn" href="${pageContext.request.contextPath}/AddCart" type="submit"><i class="ion-bag"></i> 加入購物車</a> --%>
                                                    <%-- <a class="cart-btn" href="${pageContext.request.contextPath}/AddCart?action=ADD"> <i class="ion-bag"></i> 加入購物車</a> --%>
                                                </div>
                                                </form>
											</c:if>

                                            <p class="product-description">${prodDesc}</p>
                                            
											
                                            <!-- <div class="social-share-buttons mt-20">
                                                <h5>share this product</h5>
                                                <ul>
                                                    <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                                    </li>
                                                    <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
                                                    </li>
                                                    <li><a class="google-plus" href="#"><i
                                                                class="fa fa-google-plus"></i></a></li>
                                                    <li><a class="pinterest" href="#"><i
                                                                class="fa fa-pinterest"></i></a></li>
                                                </ul>
                                            </div> -->
                                            <!-- <p class="single-info mb-0">Tags: <a href="shop-left-sidebar.jsp">Dolor</a>
                                                , <a href="shop-left-sidebar.jsp">Ipsum</a>, <a
                                                    href="shop-left-sidebar.jsp">Lorem</a> </p> -->


                                        </div>
                                        <!--=======  End of single product content description  =======-->
                                    </div>
                                </div>
                            </div>
                            <!--=======  End of single product main content area  =======-->
                            <!--=======  product description review   =======-->

                            <div class="product-description-review-area">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <!--=======  product description review container  =======-->

                                        <div
                                            class="tab-slider-wrapper product-description-review-container  section-space--inner">
                                            <nav>
                                                <div class="nav nav-tabs justify-content-center" id="nav-tab"
                                                    role="tablist">
                                                    <a class="nav-item nav-link active" id="description-tab"
                                                        data-bs-toggle="tab" href="#product-description" role="tab"
                                                        aria-selected="true">Description</a>
                                                    <a class="nav-item nav-link" id="review-tab" data-bs-toggle="tab"
                                                        href="#review" role="tab" aria-selected="false">Reviews (1)</a>
                                                </div>
                                            </nav>
                                            <div class="tab-content" id="nav-tabContent">
                                                <div class="tab-pane fade show active" id="product-description"
                                                    role="tabpanel" aria-labelledby="description-tab">
                                                    <!--=======  product description  =======-->

                                                    <div class="product-description">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
                                                            fringilla augue nec est tristique auctor. Donec non est at
                                                            libero vulputate rutrum. Morbi ornare lectus quis justo
                                                            gravida semper. Nulla tellus mi, vulputate adipiscing cursus
                                                            eu, suscipit id nulla.</p>

                                                        <p>Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus
                                                            feugiat sem, quis fermentum turpis eros eget velit. Donec ac
                                                            tempus ante. Fusce ultricies massa massa. Fusce aliquam,
                                                            purus eget sagittis vulputate, sapien libero hendrerit est,
                                                            sed commodo augue nisi non neque. Lorem ipsum dolor sit
                                                            amet, consectetur adipiscing elit. Sed tempor, lorem et
                                                            placerat vestibulum, metus nisi posuere nisl, in accumsan
                                                            elit odio quis mi. Cras neque metus, consequat et blandit
                                                            et, luctus a nunc. Etiam gravida vehicula tellus, in
                                                            imperdiet ligula euismod eget.</p>
                                                    </div>

                                                    <!--=======  End of product description  =======-->
                                                </div>
                                                <div class="tab-pane fade" id="review" role="tabpanel"
                                                    aria-labelledby="review-tab">
                                                    <!--=======  review content  =======-->

                                                    <div class="product-rating-wrap">
                                                        <div class="pro-avg-rating">
                                                            <h4>4.5 <span>(Overall)</span></h4>
                                                            <span>Based on 9 Comments</span>
                                                        </div>
                                                        <div class="rating-list">
                                                            <div class="sin-list float-start">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <span>(5)</span>
                                                            </div>
                                                            <div class="sin-list float-start">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <span>(3)</span>
                                                            </div>
                                                            <div class="sin-list float-start">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <span>(1)</span>
                                                            </div>
                                                            <div class="sin-list float-start">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <span>(0)</span>
                                                            </div>
                                                            <div class="sin-list float-start">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <span>(0)</span>
                                                            </div>
                                                        </div>
                                                        <div class="ratings-wrapper">

                                                            <div class="sin-ratings">
                                                                <div class="rating-author">
                                                                    <h3>Cristopher Lee</h3>
                                                                    <div class="rating-star">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <span>(5)</span>
                                                                    </div>
                                                                </div>
                                                                <p>enim ipsam voluptatem quia voluptas sit
                                                                    aspernatur aut odit aut fugit, sed quia res eos
                                                                    qui ratione voluptatem sequi Neque porro
                                                                    quisquam est, qui dolorem ipsum quia dolor sit
                                                                    amet, consectetur, adipisci veli</p>
                                                            </div>

                                                            <div class="sin-ratings">
                                                                <div class="rating-author">
                                                                    <h3>Rashed Mahmud</h3>
                                                                    <div class="rating-star">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <span>(5)</span>
                                                                    </div>
                                                                </div>
                                                                <p>enim ipsam voluptatem quia voluptas sit
                                                                    aspernatur aut odit aut fugit, sed quia res eos
                                                                    qui ratione voluptatem sequi Neque porro
                                                                    quisquam est, qui dolorem ipsum quia dolor sit
                                                                    amet, consectetur, adipisci veli</p>
                                                            </div>

                                                            <div class="sin-ratings">
                                                                <div class="rating-author">
                                                                    <h3>Hasan Mubarak</h3>
                                                                    <div class="rating-star">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <span>(5)</span>
                                                                    </div>
                                                                </div>
                                                                <p>enim ipsam voluptatem quia voluptas sit
                                                                    aspernatur aut odit aut fugit, sed quia res eos
                                                                    qui ratione voluptatem sequi Neque porro
                                                                    quisquam est, qui dolorem ipsum quia dolor sit
                                                                    amet, consectetur, adipisci veli</p>
                                                            </div>

                                                        </div>
                                                        <div class="rating-form-wrapper fix">
                                                            <h3>Add your Comments</h3>
                                                            <form action="#">
                                                                <div class="rating-form row">
                                                                    <div class="col-12 mb-15">
                                                                        <h5>Rating:</h5>
                                                                        <div class="rating-star fix">
                                                                            <i class="fa fa-star-o"></i>
                                                                            <i class="fa fa-star-o"></i>
                                                                            <i class="fa fa-star-o"></i>
                                                                            <i class="fa fa-star-o"></i>
                                                                            <i class="fa fa-star-o"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6 col-12 form-group">
                                                                        <label for="name">Name:</label>
                                                                        <input id="name" placeholder="Name" type="text">
                                                                    </div>
                                                                    <div class="col-md-6 col-12 form-group">
                                                                        <label for="email">Email:</label>
                                                                        <input id="email" placeholder="Email"
                                                                            type="text">
                                                                    </div>
                                                                    <div class="col-12 form-group">
                                                                        <label for="your-review">Your Review:</label>
                                                                        <textarea name="review" id="your-review"
                                                                            placeholder="Write a review"></textarea>
                                                                    </div>
                                                                    <div class="col-12">
                                                                        <input value="add review" type="submit">
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>

                                                    <!--=======  End of review content  =======-->
                                                </div>
                                            </div>
                                        </div>

                                        <!--=======  End of product description review container  =======-->
                                    </div>
                                </div>
                            </div>

                            <!--=======  End of product description review   =======-->
                            <!--====================  single row slider ====================-->
                            <div class="single-row-slider-area section-space--inner-top">

                                <div class="row">
                                    <div class="col-lg-12">
                                        <!--=======  section title  =======-->
                                        <div class="section-title-wrapper text-center section-space--half">
                                            <h2 class="section-title">Related Products</h2>
                                            <p class="section-subtitle">Mirum est notare quam littera gothica, quam nunc
                                                putamus parum claram anteposuerit litterarum formas.</p>
                                        </div>
                                        <!--=======  End of section title  =======-->
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <!--=======  single row slider wrapper  =======-->
                                        <div class="single-row-slider-wrapper">
                                            <div class="ht-slick-slider" data-slick-setting='{
                        "slidesToShow": 4,
                        "slidesToScroll": 1,
                        "arrows": true,
                        "autoplay": false,
                        "autoplaySpeed": 5000,
                        "speed": 1000,
                        "infinite": false,
                        "prevArrow": {"buttonClass": "slick-prev", "iconClass": "ion-chevron-left" },
                        "nextArrow": {"buttonClass": "slick-next", "iconClass": "ion-chevron-right" }
                    }' data-slick-responsive='[
                        {"breakpoint":1501, "settings": {"slidesToShow": 4} },
                        {"breakpoint":1199, "settings": {"slidesToShow": 4, "arrows": false} },
                        {"breakpoint":991, "settings": {"slidesToShow": 3, "arrows": false} },
                        {"breakpoint":767, "settings": {"slidesToShow": 2, "arrows": false} },
                        {"breakpoint":575, "settings": {"slidesToShow": 2, "arrows": false} },
                        {"breakpoint":479, "settings": {"slidesToShow": 1, "arrows": false} }
                    ]'>

                                                <div class="col">
                                                    <!--=======  single grid product  =======-->
                                                    <div class="single-grid-product">
                                                        <div class="single-grid-product__image">
                                                            <div class="single-grid-product__label">
                                                                <span class="sale">-20%</span>
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
                                                                <a href="javascript:void(0)"><i
                                                                        class="ion-heart"></i></a>
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
                                                            <div class="product-countdown" data-countdown="2020/06/01">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--=======  End of single grid product  =======-->
                                                </div>

                                                <div class="col">
                                                    <!--=======  single grid product  =======-->
                                                    <div class="single-grid-product">
                                                        <div class="single-grid-product__image">
                                                            <div class="single-grid-product__label">
                                                                <span class="sale">-20%</span>
                                                            </div>
                                                            <a href="single-product.jsp">
                                                                <img width="600" height="800"
                                                                    src="${pageContext.request.contextPath}/assets/img/products/2-600x800.webp"
                                                                    class="img-fluid" alt="">
                                                                <img width="600" height="800"
                                                                    src="${pageContext.request.contextPath}/assets/img/products/2_1-600x800.webp"
                                                                    class="img-fluid" alt="">
                                                            </a>

                                                            <div class="hover-icons">
                                                                <a href="javascript:void(0)"><i class="ion-bag"></i></a>
                                                                <a href="javascript:void(0)"><i
                                                                        class="ion-heart"></i></a>
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
                                                                    href="single-product.jsp">lorem ipsum cillium
                                                                    dolore decoration item</a></h3>
                                                            <p class="single-grid-product__price"><span
                                                                    class="discounted-price">$20.00</span> <span
                                                                    class="main-price discounted">$40.00</span></p>
                                                        </div>
                                                    </div>
                                                    <!--=======  End of single grid product  =======-->
                                                </div>

                                                <div class="col">
                                                    <!--=======  single grid product  =======-->
                                                    <div class="single-grid-product">
                                                        <div class="single-grid-product__image">
                                                            <div class="single-grid-product__label">
                                                                <span class="new">New</span>
                                                            </div>
                                                            <a href="single-product.jsp">
                                                                <img width="600" height="800"
                                                                    src="${pageContext.request.contextPath}/assets/img/products/3-600x800.webp"
                                                                    class="img-fluid" alt="">
                                                                <img width="600" height="800"
                                                                    src="${pageContext.request.contextPath}/assets/img/products/3_1-600x800.webp"
                                                                    class="img-fluid" alt="">
                                                            </a>

                                                            <div class="hover-icons">
                                                                <a href="javascript:void(0)"><i class="ion-bag"></i></a>
                                                                <a href="javascript:void(0)"><i
                                                                        class="ion-heart"></i></a>
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
                                                                        href="shop-left-sidebar.jsp">Vase</a></span>
                                                                <span class="rating">
                                                                    <i class="ion-android-star active"></i>
                                                                    <i class="ion-android-star active"></i>
                                                                    <i class="ion-android-star active"></i>
                                                                    <i class="ion-android-star active"></i>
                                                                    <i class="ion-android-star-outline"></i>
                                                                </span>
                                                            </div>

                                                            <h3 class="single-grid-product__title"> <a
                                                                    href="single-product.jsp">cillium dolore lorem
                                                                    ipsum decoration item</a></h3>
                                                            <p class="single-grid-product__price"><span
                                                                    class="discounted-price">$40.00</span> <span
                                                                    class="main-price discounted">$60.00</span></p>
                                                        </div>
                                                    </div>
                                                    <!--=======  End of single grid product  =======-->
                                                </div>

                                                <div class="col">
                                                    <!--=======  single grid product  =======-->
                                                    <div class="single-grid-product">
                                                        <div class="single-grid-product__image">

                                                            <a href="single-product.jsp">
                                                                <img width="600" height="800"
                                                                    src="${pageContext.request.contextPath}/assets/img/products/4-600x800.webp"
                                                                    class="img-fluid" alt="">
                                                                <img width="600" height="800"
                                                                    src="${pageContext.request.contextPath}/assets/img/products/4_1-600x800.webp"
                                                                    class="img-fluid" alt="">
                                                            </a>

                                                            <div class="hover-icons">
                                                                <a href="javascript:void(0)"><i class="ion-bag"></i></a>
                                                                <a href="javascript:void(0)"><i
                                                                        class="ion-heart"></i></a>
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
                                                                        href="shop-left-sidebar.jsp">Furniture</a></span>
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
                                                                    class="main-price">$120.00</span></p>
                                                        </div>
                                                    </div>
                                                    <!--=======  End of single grid product  =======-->
                                                </div>

                                                <div class="col">
                                                    <!--=======  single grid product  =======-->
                                                    <div class="single-grid-product">
                                                        <div class="single-grid-product__image">
                                                            <div class="single-grid-product__label">
                                                                <span class="sale">-20%</span>
                                                                <span class="new">New</span>
                                                            </div>
                                                            <a href="single-product.jsp">
                                                                <img width="600" height="800"
                                                                    src="${pageContext.request.contextPath}/assets/img/products/5-600x800.webp"
                                                                    class="img-fluid" alt="">
                                                                <img width="600" height="800"
                                                                    src="${pageContext.request.contextPath}/assets/img/products/5_1-600x800.webp"
                                                                    class="img-fluid" alt="">
                                                            </a>

                                                            <div class="hover-icons">
                                                                <a href="javascript:void(0)"><i class="ion-bag"></i></a>
                                                                <a href="javascript:void(0)"><i
                                                                        class="ion-heart"></i></a>
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
                                                                    class="discounted-price">$80.00</span> <span
                                                                    class="main-price discounted">$100.00</span></p>
                                                        </div>
                                                    </div>
                                                    <!--=======  End of single grid product  =======-->
                                                </div>

                                            </div>
                                        </div>
                                        <!--=======  End of single row slider wrapper  =======-->
                                    </div>
                                </div>

                            </div>
                            <!--====================  End of single row slider  ====================-->
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
                                                <%-- <div class="single-image">
                                                    <img width="600" height="800" src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=${param.prodNo}"
                                                        class="img-fluid" alt="">
                                                </div> --%>
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
    <script src="${pageContext.request.contextPath}/assets/js/product.js"></script>

    <!-- Active JS -->
    <script src="${pageContext.request.contextPath}/assets/js/active.js"></script>

    <!--=====  End of JS files ======-->
    <script>
    	let img = document.getElementById("bigPicture");
    	let pics = document.getElementsByName("pic");
    	for (let i = 0; i < pics.length; i++) {
    		pics[i].addEventListener("click", function(e){
    			let src = e.target.getAttribute('src');
    			img.setAttribute('src', src);
    		});
    	}
    </script>

</body>

</html>