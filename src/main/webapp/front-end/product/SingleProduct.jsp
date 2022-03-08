
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
                            <a href="<%=request.getContextPath()%>/front-end/index.jsp">
                                <img width="150" height="50" src="<%=request.getContextPath()%>/assets/img/logo_v2.png" class="img-fluid" alt="">
                            </a>
                        </div>
                        <!-- menu wrapper -->
                        <div class="navigation-menu-wrapper">
                            <nav>
                                <ul>
                                    <li class="menu-item-has-children"><a href="#">祭祖商城</a>
                                        <ul class="sub-menu">
                                             <li><a href="${pageContext.request.contextPath}/AllProductServlet.controller?action=selectAll">商品總覽</a></li>
                                           <li> <a href="${pageContext.request.contextPath}/ViewCart.controller?action=ViewCart">購物車</a></li>
                                        </ul>
                                    </li>

                                    <li class="menu-item-has-children"><a href="#">預約服務</a>
                                        <ul class="sub-menu">
                                            <li><a href="<%=request.getContextPath()%>/front-end/booking/bookingvideo.jsp">法會直播</a></li>
                                            <li><a href="<%=request.getContextPath()%>/front-end/booking/booking.jsp">預約祭祀</a></li>
                                            <li><a href="<%=request.getContextPath()%>/front-end/booking/inquirybooking.jsp">查詢祭祀</a></li>
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
                                <%
                                       Vector<CartVO> buyList = (Vector<CartVO>) session.getAttribute("myCart");
                                %>
                                    <div class="header-cart-icon">
                                        <a href="#" id="minicart-trigger">
                                            <i class="ion-bag"></i>
                                            <%if (buyList != null && (buyList.size() > 0)){ %>
                                            <span class="counter">${buyListCount}</span>
                                            <%} %>
                                            <%if (buyList == null || (buyList.size() == 0)){ %>
                                            <span class="counter">0</span>
                                            <%} %>
                                        </a>
                                        <!-- mini cart  -->
                                        
                                        <div class="mini-cart" id="mini-cart">
                                            <div class="cart-items-wrapper ps-scroll">
                                        
                                        <%if (buyList != null && (buyList.size() > 0)){ %>
                                        	<%
                                            	for(int index =0; index < buyList.size(); index++){
                                            		CartVO order = buyList.get(index);
                                            %>
                                            
                                                <div class="single-cart-item">
                                                    
                                                    <a href="${pageContext.request.contextPath}/CartServlet.controller?action=Delete&del=<%= index %>&prodNo=${prodNo}" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    
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
                                                <a href="${pageContext.request.contextPath}/ViewCart.controller?action=ViewCart">檢視購物車</a>
                                                <%if (buyList != null && (buyList.size() > 0)){ %>
                                                <a href="${pageContext.request.contextPath}/CartServlet.controller?action=CheckOut">結帳</a>
                                                <%} %>
                                            </div>
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

											<c:if test="${user == null && compAccount == null}">
												<div class="single-settings-block">
													<h4 class="title">一般用戶</h4>
													<ul>
														<li><a
															href="<%=request.getContextPath()%>/front-end/memberData/login-register-member.jsp">註冊/登入</a></li>
													</ul>
												</div>
												<div class="single-settings-block">
													<h4 class="title">廠商專區</h4>
													<ul>
														<li><a
															href="<%=request.getContextPath()%>/secure/loginFromSession.controller">註冊/登入</a></li>
													</ul>
												</div>
											</c:if>

											<c:if test="${user != null}">
												<div class="single-settings-block">
													<h4 class="title">會員專區</h4>
													<ul>
														<li><a
															href="<%=request.getContextPath()%>/front-end/memberData/my-account-member.jsp">會員中心</a></li>
													</ul>
												</div>
											</c:if>

											<c:if test="${compAccount != null}">
												<div class="single-settings-block">
													<h4 class="title">廠商專區</h4>
													<ul>
														<li><a
															href="<%=request.getContextPath()%>/front-end/compData/comp-index.jsp">廠商用戶中心</a></li>
													</ul>
												</div>
											</c:if>
										</div>
									</div>
								</li>
							</ul>
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
                                                            src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=${prodNo}&prodImg=1" class="img-fluid"
                                                            alt="">
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
                                            </div>
                                        </div>

                                        <!--=======  End of product details slider area  =======-->
                                    </div>
                                    <div class="col-lg-6">
                                        <!--=======  single product content description  =======-->
                                        <div class="single-product-content-description">
                                            
                                            <h4 class="product-title">${prodName}</h4>
                                            <div class="product-rating">
                                            </div>
											
                                            <p class="single-grid-product__price"><span
                                                    class="discounted-price">$${prodPrice}</span></p>

                                            <p class="single-info">商品編號 : <span class="value">${prodNo}</span> </p>
                                            <p class="single-info">商品庫存 : <span class="value">${prodStock}</span>
                                            </p>
                                            <h4 class="product-title"></h4>
                                            <c:if test="${prodStock == 0}">
                                            	<div class="product-actions">
                                                	<span class="cart-btn"> 補貨中</span>
                                            	</div>
											</c:if>
											<c:if test="${prodStock != 0}">
												<form action="${pageContext.request.contextPath}/CartServlet.controller?action=AddCart" method="get">
                                            	<div class="product-actions">
                                            		<p class="single-info">數量 : <input type="number" min="0" max="${prodStock}" name="prodAmount" size="3" value=1> </p>
                                            	</div>
                                            	<br>
                                                <div class="product-buttons ml-0">
                                                	<input type="hidden" name="prodNo" value="${prodNo}">
                                                	<input type="hidden" name="prodName" value="${prodName}">
                                                	<input type="hidden" name="prodPrice" value="${prodPrice}">
                                                	<input type="hidden" name="prodStock" value="${prodStock}">
                                                	<input type="hidden" name="action" value="AddCart">
                                                	<button class="cart-btn" type="submit">加入購物車</button>
                                                </div>
                                                </form>
											</c:if>

                                            <p class="product-description">${prodDesc}</p>

                                        </div>
                                        <!--=======  End of single product content description  =======-->
                                    </div>
                                </div>
                            </div>
                            <!--=======  End of single product main content area  =======-->
                        </div>
                    </div>
                    <!--=======  End of page wrapper  =======-->
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of page content area  ====================-->
    
    <!--====================  footer area ====================-->
   <div class="footer-area">
        <div class="footer-">
            <div class="container wide">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-copyright-wrapper footer-copyright-wrapper--default-footer">
                            <div class="container">
                                <div class="row align-items-center no-gutters">
                                    <div class="col-lg-2 col-md-2">
                                        <div class="footer-logo">
                                            <a href="#"><img width="150" height="50" src="<%=request.getContextPath()%>/assets/img/logo_v2.png"
                                                    class="img-fluid" alt=""></a>
                                        </div>
                                    </div>

                                  <div class="col-lg-7 col-md-5">

                                        <div class="copyright-text">
                                            
                                             <a href="#">龘虤</a>
                                            <P>104 台北市中山區南京東路三段219號5樓</P>
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
    
    <!-- scroll to top  -->
    <div id="scroll-top">
        <span>回到頂端</span><i class="ion-chevron-right"></i><i class="ion-chevron-right"></i>
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