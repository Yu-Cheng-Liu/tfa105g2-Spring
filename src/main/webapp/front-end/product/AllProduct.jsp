<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                           <li><a href="${pageContext.request.contextPath}/ViewCart.controller?action=ViewCart">購物車</a></li>
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
                                                    
                                                    <a href="${pageContext.request.contextPath}/ViewCart.controller?action=Cancel&cancel=<%=index %>" class="remove-icon"><i
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
                                            </div>
                                        </div>

                                        <div class="shop-header__right">
                                        	<div class="shop-header__left__message">
                                                 商品總筆數 :  <c:out value="${selectAllCount}"/>
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
                                                <li class="has-children"><a href="${pageContext.request.contextPath}/AllProductServlet.controller?action=selectByType&prodTypeCode=${prodTypeVO.prodTypeCode}" class="active">${prodTypeVO.prodTypeDesc}</a>
                                                </li>
												</c:forEach>
                                            </ul>
                                            
                                        </div>
                                        <!--=======  End of single sidebar widget  =======-->
                                        
                                    </div>
                                    <!--=======  End of page sidebar wrapper  =======-->
                                </div>
                                <div class="col-lg-9 order-1 order-lg-2">
                                    <!--=======  shop page content  =======-->
                                    <div class="shop-page-content">

                                        <div class="row shop-product-wrap list">                                            
                                                                                    
                                            <div class="col-12 col-lg-4 col-md-4 col-sm-6">
                                                
                                                <!--=======  list view product  =======-->
                                                <c:forEach var="prodVO" items="${selectAll}">
                                                <div
                                                    class="single-grid-product single-grid-product--list-view list-view-product">
                                                    <div
                                                        class="single-grid-product__image single-grid-product--list-view__image">
                                                        
                                                        <a href="${pageContext.request.contextPath}/SingleProductServlet.controller?prodNo=${prodVO.prodNo}">
                                                            <img width="600" height="800"
                                                                src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=${prodVO.prodNo}&prodImg=1"
                                                                class="img-fluid" alt="">
                                                        </a>

                                                    </div>
                                                    <div
                                                        class="single-grid-product__content single-grid-product--list-view__content">

                                                        
                                                        <h3
                                                            class="single-grid-product__title single-grid-product--list-view__title">
                                                            <a href="${pageContext.request.contextPath}/SingleProductServlet.controller?prodNo=${prodVO.prodNo}">${prodVO.prodName}</a>

                                                        </h3>
                                                        
                                                        <p
                                                            class="single-grid-product__price single-grid-product--list-view__price">
                                                            <span class="discounted-price">$${prodVO.prodPrice}</span> 
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
    <script src="${pageContext.request.contextPath}/assets/js/vendors.js"></script>

    <!-- Active JS -->
    <script src="${pageContext.request.contextPath}/assets/js/active.js"></script>

    <!--=====  End of JS files ======-->

</body>

</html>