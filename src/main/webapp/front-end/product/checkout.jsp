<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, web.cart.entity.CartVO" %>


<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>購物車結帳</title>
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
                            <!-- Checkout Form s-->
                            <form class="checkout-form" METHOD="post" action="<%=request.getContextPath()%>/front-end/memberorder/CheckOrder.controller" name="form1">
                                <div class="row row-40">

                                    <div class="col-lg-7">

                                        <!-- Billing Address -->
                                        <div id="billing-form">
                                            <h4 class="checkout-title">付款資訊</h4>

                                            <div class="row"></div>

                                                <div class="col-12">
                                                    <label>姓名<font style=color:red>*</font></label>
                                                    <font color="red"><c:out value="${errorMsgs.memberName}" /></font>
                                                    <input type="text"  placeholder="請填入姓名" name="memberName" value="${memberName}">
                                                </div>
                                                <div class="col-12">
                                                    <label>聯絡電話<font style=color:red>*</font></label>
                                                    <font color="red"><c:out value="${errorMsgs.memberPhone}" /></font>
                                                    <input type="text" placeholder="請輸入電話號碼" name="memberPhone" value="${memberPhone}" maxlength="10">
                                                </div>

<!--                                                 <div class="col-12"> -->
<!--                                                     <label>Email<font style=color:red>*</font></label> -->
<!--                                                     <input type="email" placeholder="請輸入Email" name=""> -->
<!--                                                 </div> -->
                                                
                                                           
                                                <div class="col-12">
                                                    <label>收貨地址<font style=color:red>*</font></label>
                                                    <font color="red"><c:out value="${errorMsgs.deliveryAddress}" /></font>
                                                    <input type="text" placeholder="請輸入地址" name="deliveryAddress" value="${deliveryAddress}">
                                                </div>
                                        </div>

                                        <!-- Shipping Address -->
                                        <div id="shipping-form">
                                            <h4 class="checkout-title">Shipping Address</h4>

                                            <div class="row">

                                                <div class="col-md-6 col-12">
                                                    <label>First Name*</label>
                                                    <input type="text" placeholder="First Name">
                                                </div>

                                                <div class="col-md-6 col-12">
                                                    <label>Last Name*</label>
                                                    <input type="text" placeholder="Last Name">
                                                </div>

                                                <div class="col-md-6 col-12">
                                                    <label>Email Address*</label>
                                                    <input type="email" placeholder="Email Address">
                                                </div>

                                                <div class="col-md-6 col-12">
                                                    <label>Phone no*</label>
                                                    <input type="text" placeholder="Phone number">
                                                </div>

                                                <div class="col-12">
                                                    <label>Company Name</label>
                                                    <input type="text" placeholder="Company Name">
                                                </div>

                                                <div class="col-12">
                                                    <label>Address*</label>
                                                    <input type="text" placeholder="Address line 1">
                                                    <input type="text" placeholder="Address line 2">
                                                </div>

                                                <div class="col-md-6 col-12">
                                                    <label>Country*</label>
                                                    <select class="nice-select">
                                                        <option>Bangladesh</option>
                                                        <option>China</option>
                                                        <option>country</option>
                                                        <option>India</option>
                                                        <option>Japan</option>
                                                    </select>
                                                </div>

                                                <div class="col-md-6 col-12">
                                                    <label>Town/City*</label>
                                                    <input type="text" placeholder="Town/City">
                                                </div>

                                                <div class="col-md-6 col-12">
                                                    <label>State*</label>
                                                    <input type="text" placeholder="State">
                                                </div>

                                                <div class="col-md-6 col-12">
                                                    <label>Zip Code*</label>
                                                    <input type="text" placeholder="Zip Code">
                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                    <div class="col-lg-5">
                                        <div class="row">

                                            <!-- Cart Total -->
                                            <div class="col-12">

                                                <h4 class="checkout-title">購物車總覽</h4>
                                                
                                                <div class="checkout-cart-total">

                                                    <h4>商品 <span>金額</span></h4>
                                                    

                                                    <ul>
                                                    <%
                                            			for(int index =0; index < buyList.size(); index++){
                                            				CartVO order = buyList.get(index);
                                            		%>
                                                        <li><%=order.getProdName()%> X <%=order.getProdAmount()%> <span>$ <%=order.getProdPrice() * order.getProdAmount() %></span></li>
                                                    <%}%> 
                                                    </ul>
													
                                                    <p>商品總金額<span>$ ${amount}</span></p>
                                                    <p>運費<span>$200</span></p>

                                                    <h4>總金額<span>$${amount + 200}</span></h4>

                                                </div>

                                            </div>

                                            <!-- Payment Method -->
												<div class="col-12" >
<!-- 												<input type="hidden" name="action" value="checkorder"> -->
                                                <button type="submit" class="place-order">確認結帳</button>
												</div>
                                            </div>

                                        </div>
                                    </div>
                            </form>
                            </div>
                        </div>
                    </div>
                    <!--=======  End of page wrapper  =======-->
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