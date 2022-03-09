<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, web.cart.entity.CartVO"%>
<%
String useraccount = "";
String password = "";
Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (Cookie cookie : cookies) {
		String name = cookie.getName();
		if ("useraccount".equals(name)) {
	useraccount = cookie.getValue();
		} else if ("password".equals(name)) {
	password = cookie.getValue();
		}
	}
}
%>

<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>會員登入註冊 | 龘虤</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="icon"
	href="<%=request.getContextPath()%>/assets/img/favicon.ico">

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
<link href="<%=request.getContextPath()%>/assets/css/vendors.css"
	rel="stylesheet">
<!-- Main CSS -->
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/member.css">

<!-- JQuery 連結-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,300;0,400;0,600;1,300&display=swap"
        rel="stylesheet">

<%-- 聊天室 --%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/chat.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
<style>
.navigation-menu-wrapper nav > ul > li > a {
font-size: 16px;
}

.breadcrumb-content__page-map > li > a {
color: #FAEBD7;
font-size: 13px;
}

.breadcrumb-content__page-map li a:hover {
    color: rgba(255, 153, 0, 0.856);
}

.breadcrumb-content__page-map li:after {
color: #FAEBD7;
}

.breadcrumb-content__page-map li.active {
    color: rgba(255, 153, 0, 0.856);
    text-shadow:0.5px 0.5px 0.5px #696969;
    font-size: 13px;
}

.breadcrumb-content__title {
    font-size: 32px;
    color: #FAEBD7;
    text-shadow:1.5px 1.5px 1.5px #696969;
    line-height: 32px;
}

.page-wrapper {
	margin-top: -48px;
}

.breadcrumb-bg {
	background-image:
		url("<%=request.getContextPath()%>/assets/img/hero-slider/test.gif");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
}

select {
	height: 40px;
	margin-bottom: 4%;
	max-width: 100%;
}

.login-title {
	font-size: 18px;
	line-height: 0px;
	text-decoration: none;
}

.login-form label {
	margin-bottom: 9px;
	font-weight: 550;
	font-size: 15px;
}

.login-form input {
	line-height: 15px;
	padding: 10px 10px;
	font-size: 13px;
	margin-bottom: 13px;
	border-radius: 5px;
	border: 1px solid #bbb;
}

.login-form .check-box input[type=checkbox]+label {
	padding-left: 23px;
	line-height: 17px;
	font-size: 12px;
	margin-top: 0px;
}

.login-form .check-box input[type=checkbox]+label::before {
	width: 15px;
	height: 15px;
}

.login-form .check-box input[type=checkbox]+label::after {
	line-height: 15px;
	width: 15px;
}

.login-form .radio {
	float: left;
	margin-right: 70px;
	position: relative;
}

.login-form .radio input[type=radio]+label {
	padding-left: 42px;
	line-height: 15px;
	font-size: 14px;
	font-weight: 500;
	color: #707070;
}

#ckbutton_id {
	position: absolute;
}

#ckbutton_id2 {
	position: absolute;
}

font {
	font-size: 16px;
}

.register-button {
    font-weight: 500;
    font-size: 13px;
}

.register-button:hover {
    background-color: #ee3333;  
}
</style>

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
							<a href="<%=request.getContextPath()%>/front-end/index.jsp">
								<img width="150" height="50"
								src="<%=request.getContextPath()%>/assets/img/logo_v2.png"
								class="img-fluid" alt="">
							</a>
						</div>
						<!-- menu wrapper -->
						<div class="navigation-menu-wrapper">
							<nav>
								<ul>
									<li class="menu-item-has-children"><a href="#">祭祖商城</a>
										<ul class="sub-menu">
											<li><a
												href="${pageContext.request.contextPath}/AllProductServlet.controller?action=selectAll">商品總覽</a></li>
											<li><a
												href="${pageContext.request.contextPath}/ViewCart.controller?action=ViewCart">購物車</a></li>
										</ul></li>

									<li class="menu-item-has-children"><a href="#">預約服務</a>
										<ul class="sub-menu">
											<li><a
												href="<%=request.getContextPath()%>/front-end/booking/bookingvideo.jsp">法會直播</a></li>
											<li><a
												href="<%=request.getContextPath()%>/front-end/booking/booking.jsp">預約祭祀</a></li>
											<li><a
												href="<%=request.getContextPath()%>/front-end/booking/inquirybooking.jsp">查詢祭祀</a></li>
										</ul></li>

									<li class="menu-item-has-children"><a href="#">客服中心</a>
										<ul class="sub-menu">
											<li><a
												href="<%=request.getContextPath()%>/front-end/service/contact.jsp">聯絡我們</a></li>
											<li><a
												href="<%=request.getContextPath()%>/front-end/service/about.jsp">關於我們</a></li>
										</ul></li>

									<li><a
										href="<%=request.getContextPath()%>/front-end/service/faq.jsp">常見問題</a></li>
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
					<!--=======  End of header wrapper  =======-->


					<!--=======  mobile navigation area  =======-->

					<div class="header-mobile-navigation d-block d-lg-none">
						<div class="row align-items-center">
							<div class="col-6 col-md-6">
								<div class="header-logo">
									<a href="index.html"> <img width="93" height="25"
										src="<%=request.getContextPath()%>/assets/img/logo_v1.jpg"
										class="img-fluid" alt="">
									</a>
								</div>
							</div>
							<div class="col-6 col-md-6">
								<div class="mobile-navigation text-end">
									<div class="header-icon-wrapper">
										<ul class="icon-list justify-content-end">
											<li>
												<div class="header-cart-icon">
													<a href="cart.jsp"> <i class="ion-bag"></i> <span
														class="counter">3</span>
													</a>
												</div>
											</li>
											<li><a href="javascript:void(0)"
												class="mobile-menu-icon" id="mobile-menu-trigger"><i
													class="fa fa-bars"></i></a></li>
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

	<!--====================  breadcrumb area ====================-->
	<div class="breadcrumb-area section-space--half">
		<div class="container wide">
			<div class="row">
				<div class="col-lg-12">
					<!--=======  breadcrumb wrpapper  =======-->
					<div class="breadcrumb-wrapper breadcrumb-bg">
						<!--=======  breadcrumb content  =======-->
						<div class="breadcrumb-content">
							<h2 class="breadcrumb-content__title">登入 - 註冊</h2>
							<ul class="breadcrumb-content__page-map">
								<li><a href="<%=request.getContextPath()%>/front-end/index.jsp">首頁</a></li>
								<li class="active">登入 - 註冊</li>
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
							<div class="row">
								<h3>
									<span style="color: red">${errors.action}</span>
								</h3>

								<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6">
									<!-- Login Form -->
									
									<form action="<%=request.getContextPath()%>/login-register-member.controller"
														method="post">	
										<div class="login-form">
											<h4 class="login-title">會員登入</h4>

											<div class="row">
												<div class="col-md-12 col-12">
													<label>帳號</label> <input type="text" name="useraccount"
														value="<%=useraccount%>"> <span style="color: red">${errors.useraccount}</span>
												</div>
												<div class="col-12">
													<label>密碼</label> <input type="password" name="password"
														value="<%=password%>"> <span style="color: red">${errors.password}</span>
												</div>
												<div class="col-sm-6">

													<div class="check-box d-inline-block ml-0 ml-md-2">
														<input type="checkbox" id="remember_me" name="remember">
														<label for="remember_me">記住我</label>
													</div>
												</div>

												<div class="col-sm-6 text-start text-sm-end">
													<a
														href="<%=request.getContextPath()%>/front-end/memberData/forgot-pwd.jsp"
														class="forget-pass-link"> 忘記密碼?</a>
												</div>

												<div class="col-md-12">
													<input type="hidden" name="action" value="login">
													<button type="submit" class="register-button mt-3">登入</button>

												</div>

											</div>
										</div>

									</form>
								</div>
								<div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
									<form action="<%=request.getContextPath()%>/register-member.controller"
														method="post">
										<div class="login-form">
											<h4 class="login-title">會員註冊</h4>

											<div class="row">
												<div class="col-md-12 mb-20">
													<label>帳號<font color="red">*</font></label> <span
														style="color: red">${errors.useraccount_rg}</span><input
														type="text" name="useraccount_rg"
														value="${param.useraccount_rg}"
														placeholder="請設定4-15位英數字帳號">
												</div>
												<div class="col-md-6 mb-20">
													<label>密碼<font color="red">*</font></label><span
														style="color: red">${errors.password_rg}</span><input
														type="password" name="password_rg"
														placeholder="請設定6-15位英數字密碼">
												</div>
												<div class="col-md-6 mb-20">
													<label>確認密碼<font color="red">*</font></label> <span
														style="color: red">${errors.password_rg2}</span><input
														type="password" name="password_rg2" placeholder="請再輸入一次密碼">
												</div>
												<div class="col-md-12 mb-20">
													<label>姓名</label> <span style="color: red">${errors.username}</span><input
														type="text" name="username" value="${param.username}">
												</div>
												<div class="col-md-12">
													<label>手機<font color="red">*</font></label><span
														style="color: red">${errors.phone}</span> <input
														type="tel" name="phone" value="${param.phone}"
														maxlength="10">
												</div>
												<div class="col-md-12">
													<label>信箱<font color="red">*</font></label> <span
														style="color: red">${errors.email}</span><input
														type="email" name="email" value="${param.email}">
												</div>
												<div class="col-md-6 col-12 mb-20">
													<label>地址</label>
													<div id="twzipcode_ADV">
														<script>
															$("#twzipcode_ADV")
																	.twzipcode(
																			{
																				zipcodeIntoDistrict : true, // 郵遞區號自動顯示在地區
																				css : [
																						"city form-control",
																						"town form-control" ], // 自訂 "城市"、"地區" class 名稱 
																				countyName : "city", // 自訂城市 select 標籤的 name 值
																				districtName : "town" // 自訂地區 select 標籤的 name 值
																			});
														</script>
													</div>
												</div>
												<div class="col-md-12">
													<input type="text" name="address" value="${param.address}">
												</div>
												<div class="col-md-12">
													<label>性別</label>
													<div class="radio ">
														<input type="radio" id="ckbutton_id" name="gender"
															value="男"> <label for="ckbutton_id">男</label> <input
															type="radio" id="ckbutton_id2" name="gender" value="女">
														<label for="ckbutton_id2">女</label>
													</div>
												</div>
												<div class="col-md-12">
													<label>生日</label> <span style="color: red">${errors.birthday}</span>
													<input id="f_date1" type="text" name="birthday"
														value="${param.birthday}">
												</div>

												<div class="col-12">
													<input type="hidden" name="action2" value="register">
													<button type="submit" class="register-button mt-1">註冊</button>
												</div>
											</div>
										</div>

									</form>
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

	<!--====================  End of newsletter area  ====================-->
	<!--====================  footer area ====================-->
	<div class="footer-area">
		<div class="footer-">
			<div class="container wide">
				<div class="row">
					<div class="col-lg-12">
						<div
							class="footer-copyright-wrapper footer-copyright-wrapper--default-footer">
							<div class="container">
								<div class="row align-items-center no-gutters">
									<div class="col-lg-2 col-md-2">
										<div class="footer-logo">
											<a href="#"><img width="150" height="50"
												src="<%=request.getContextPath()%>/assets/img/logo_v2.png"
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
	<!--=======  offcanvas mobile menu  =======-->

	<div class="offcanvas-mobile-menu" id="offcanvas-mobile-menu">
		<a href="javascript:void(0)" class="offcanvas-menu-close"
			id="offcanvas-menu-close-trigger"> <i class="ion-android-close"></i>
		</a>

		<div class="offcanvas-wrapper">

			<div class="offcanvas-inner-content">
				<nav class="offcanvas-navigation">
					<ul>
						<li class="menu-item-has-children"><a href="#">祭祖商城</a>
							<ul class="sub-menu">
								<li><a
									href="${pageContext.request.contextPath}/AllProductServlet.controller?action=selectAll">商品總覽</a></li>
								<li><a
									href="${pageContext.request.contextPath}/CartServlet.controller?action=ViewCart">購物車</a></li>
							</ul></li>
						<li class="menu-item-has-children"><a href="#">預約服務</a>
							<ul class="sub-menu">
								<li><a
									href="<%=request.getContextPath()%>/front-end/booking/bookingvideo.jsp">法會直播</a></li>
								<li><a
									href="<%=request.getContextPath()%>/front-end/booking/booking.jsp">預約祭祀</a></li>
								<li><a
									href="<%=request.getContextPath()%>/front-end/booking/inquirybooking.jsp">查詢祭祀</a></li>
							</ul></li>


						<li class="menu-item-has-children"><a href="#">客服中心</a>
							<ul class="sub-menu">
								<li><a
									href="<%=request.getContextPath()%>/front-end/service/contact.jsp">聯絡我們</a></li>
								<li><a
									href="<%=request.getContextPath()%>/front-end/service/about.jsp">關於我們</a></li>
							</ul></li>

						<li><a
							href="<%=request.getContextPath()%>/front-end/service/faq.jsp">常見問題</a></li>
					</ul>
				</nav>

				<div class="offcanvas-settings">
					<nav class="offcanvas-navigation">
						<ul>
							<li class="menu-item-has-children"><a href="#">會員登入 </a>
								<ul class="sub-menu">
									<li><a
										href="<%=request.getContextPath()%>/front-end/memberData/login-register-member.jsp">註冊/登入</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#">廠商登入 </a>
								<ul class="sub-menu">
									<li><a
										href="<%=request.getContextPath()%>/front-end/compData/comp-login-register.jsp">註冊/登入</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>

				<div class="offcanvas-widget-area">
					<!--Off Canvas Widget Social Start-->
					<div class="off-canvas-widget-social">
						<a href="#" title="Facebook"><i class="fa fa-facebook"></i></a> <a
							href="#" title="Twitter"><i class="fa fa-twitter"></i></a> <a
							href="#" title="LinkedIn"><i class="fa fa-linkedin"></i></a> <a
							href="#" title="Youtube"><i class="fa fa-youtube-play"></i></a> <a
							href="#" title="Vimeo"><i class="fa fa-vimeo-square"></i></a>
					</div>
					<!--Off Canvas Widget Social End-->
				</div>
			</div>
		</div>

	</div>

	<!--=======  End of offcanvas mobile menu  =======-->
	<!--====================  search overlay ====================-->

	<div class="search-overlay" id="search-overlay">
		<a href="javascript:void(0)" class="close-search-overlay"
			id="close-search-overlay"> <i class="ion-ios-close-empty"></i>
		</a>

		<!--=======  search form  =======-->

		<div class="search-form">
			<form action="#">
				<input type="search" placeholder="Search entire store here ...">
				<button type="submit">
					<i class="ion-android-search"></i>
				</button>
			</form>
		</div>

		<!--=======  End of search form  =======-->
	</div>


	<!--====================  End of search overlay  ====================-->
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

<!-- =========================================以下為 datetimepicker 之相關設定========================================== -->

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script
	src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>

<script>
	$.datetimepicker.setLocale('zh');
	$('#f_date1').datetimepicker({
		theme : '', //theme: 'dark',
		timepicker : false, //timepicker:true,
		step : 1, //step: 60 (這是timepicker的預設間隔60分鐘)
		format : 'Y-m-d', //format:'Y-m-d H:i:s',
		value : '${param.birthday}', // value:   new Date(),
	//disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
	//startDate:	            '2017/07/10',  // 起始日
	//minDate:               '-1970-01-01', // 去除今日(不含)之前
	//maxDate:               '+1970-01-01'  // 去除今日(不含)之後
	});
</script>

</html>