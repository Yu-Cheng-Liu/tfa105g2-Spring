<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>會員登入註冊 | 龘虤</title>
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
<link href="<%=request.getContextPath()%>/assets/css/vendors.css"
	rel="stylesheet">
<!-- Main CSS -->
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/member.css">

<style>
.page-wrapper {
	margin-top: -48px;
}

.breadcrumb-bg {
	background-image: url("./assets/img/backgrounds/test4.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
}

<!--
Login Title -->.login-title {
	font-size: 18px;
	line-height: 0px;
	text-decoration: none;
}

<!--
Login Form -->.login-form label {
	margin-bottom: 5px;
	font-weight: 550;
}

.login-form input {
	line-height: 15px;
	padding: 10px 10px;
	font-size: 12px;
	margin-bottom: 13px;
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
	font-size: 12px;
	font-weight: 500;
	color: #707070;
}

#ckbutton_id {
	position: absolute;
}

#ckbutton_id2 {
	position: absolute;
}
</style>

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
							<a href="index.html"> <img width="93" height="25"
								src="assets/img/logo.webp" class="img-fluid" alt="">
							</a>
						</div>
						<!-- menu wrapper -->
						<div class="navigation-menu-wrapper">
							<nav>
								<ul>
									<li class="menu-item-has-children"><a href="index.html">祭祖商城</a>
										<ul class="sub-menu">
											<li><a href="index.html">Home Shop 1</a></li>
											<li><a href="index-2.html">Home Shop 2</a></li>
											<li><a href="index-3.html">Home Shop 3</a></li>
											<li><a href="index-4.html">Home Shop 4</a></li>
											<li><a href="index-5.html">Home Shop 5</a></li>
											<li><a href="index-6.html">Home Shop 6</a></li>
											<li><a href="index-7.html">Home Shop 7</a></li>
											<li><a href="index-8.html">Home Shop 8</a></li>
										</ul></li>

									<li class="menu-item-has-children"><a href="#">預約服務</a>
										<ul class="sub-menu">
											<li class="menu-item-has-children"><a href="#">Page
													List One</a>
												<ul class="sub-menu">
													<li><a href="cart.html">Cart</a></li>
													<li><a href="checkout.html">Checkout</a></li>
													<li><a href="wishlist.html">Wishlist</a></li>
												</ul></li>
											<li class="menu-item-has-children"><a href="#">page
													list two</a>
												<ul class="sub-menu">
													<li><a href="my-account.html">My Account</a></li>
													<li><a href="login-register.html">Login Register</a></li>
													<li><a href="faq.html">FAQ</a></li>
												</ul></li>
											<li class="menu-item-has-children"><a href="#">Page
													list three</a>
												<ul class="sub-menu">
													<li><a href="compare.html">Compare</a></li>
													<li><a href="contact.html">Contact</a></li>
													<li><a href="about.html">About Us</a></li>
												</ul></li>
										</ul></li>

									<li class="menu-item-has-children"><a
										href="shop-left-sidebar.html">客服小天使</a>
										<ul class="mega-menu four-column">
											<li><a href="#">Shop Grid</a>
												<ul>
													<li><a href="shop-3-column.html">shop 3 column</a></li>
													<li><a href="shop-4-column.html">shop 4 column</a></li>
													<li><a href="shop-left-sidebar.html">shop left
															sidebar</a></li>
													<li><a href="shop-right-sidebar.html">shop right
															sidebar</a></li>
												</ul></li>
											<li><a href="shop-list-left-sidebar.html">Shop List</a>
												<ul>
													<li><a href="shop-list.html">shop List</a></li>
													<li><a href="shop-list-left-sidebar.html">shop
															List Left Sidebar</a></li>
													<li><a href="shop-list-right-sidebar.html">shop
															List Right Sidebar</a></li>
												</ul></li>
											<li><a href="single-product.html">Single Product</a>
												<ul>
													<li><a href="single-product.html">Single Product</a></li>
													<li><a href="single-product-variable.html">Single
															Product variable</a></li>
													<li><a href="single-product-affiliate.html">Single
															Product affiliate</a></li>
													<li><a href="single-product-group.html">Single
															Product group</a></li>
													<li><a href="single-product-tabstyle-2.html">Tab
															Style 2</a></li>
													<li><a href="single-product-tabstyle-3.html">Tab
															Style 3</a></li>
												</ul></li>
											<li><a href="single-product.html">Single Product</a>
												<ul>
													<li><a href="single-product-gallery-left.html">Gallery
															Left</a></li>
													<li><a href="single-product-gallery-right.html">Gallery
															Right</a></li>
													<li><a href="single-product-sticky-left.html">Sticky
															Left</a></li>
													<li><a href="single-product-sticky-right.html">Sticky
															Right</a></li>
													<li><a href="single-product-slider-box.html">Slider
															Box</a></li>
												</ul></li>
											<li class="megamenu-banner d-none d-lg-block mt-30 w-100">
												<a href="shop-left-sidebar.html" class="mb-0"> <img
													width="920" height="183"
													src="assets/img/banners/img-bottom-menu.webp"
													class="img-fluid" alt="">
											</a>
											</li>
										</ul></li>

									<li class="menu-item-has-children"><a
										href="blog-left-sidebar.html">關於我們</a>
										<ul class="sub-menu">
											<li><a href="blog-left-sidebar.html">Blog Left
													Sidebar</a></li>
											<li><a href="blog-right-sidebar.html">Blog Right
													Sidebar</a></li>
											<li><a href="blog-post-left-sidebar.html">Blog Post
													Left Sidebar</a></li>
											<li><a href="blog-post-right-sidebar.html">Blog Post
													Right Sidebar</a></li>
											<li><a href="blog-post-image-format.html">Blog Post
													Image Format</a></li>
											<li><a href="blog-post-image-gallery.html">Blog Post
													Image Gallery</a></li>
											<li><a href="blog-post-audio-format.html">Blog Post
													Audio Format</a></li>
											<li><a href="blog-post-video-format.html">Blog Post
													Video Format</a></li>
										</ul></li>

									<li><a href="contact.html">常見問題</a></li>
								</ul>
							</nav>
						</div>
						<!-- header icon -->
						<div class="header-icon-wrapper">
							<ul class="icon-list">
								<li><a href="javascript:void(0)"
									id="search-overlay-trigger"> <i
										class="ion-ios-search-strong"></i>
								</a></li>
								<li>
									<div class="header-cart-icon">
										<a href="#" id="minicart-trigger"> <i class="ion-bag"></i>
											<span class="counter">3</span>
										</a>
										<!-- mini cart  -->
										<div class="mini-cart" id="mini-cart">
											<div class="cart-items-wrapper ps-scroll">
												<div class="single-cart-item">
													<a href="javascript:void(0)" class="remove-icon"><i
														class="ion-android-close"></i></a>
													<div class="image">
														<a href="single-product.html"> <img width="80"
															height="106"
															src="assets/img/products/product-1-80x106.webp"
															class="img-fluid" alt="">
														</a>
													</div>
													<div class="content">
														<p class="product-title">
															<a href="single-product.html">Cillum dolore furniture</a>
														</p>
														<p class="count">
															<span>1 x </span> $402
														</p>
													</div>
												</div>
												<div class="single-cart-item">
													<a href="javascript:void(0)" class="remove-icon"><i
														class="ion-android-close"></i></a>
													<div class="image">
														<a href="single-product.html"> <img width="80"
															height="106"
															src="assets/img/products/product-2-80x106.webp"
															class="img-fluid" alt="">
														</a>
													</div>
													<div class="content">
														<p class="product-title">
															<a href="single-product.html">Lorem ipsum furniture</a>
														</p>
														<p class="count">
															<span>1 x </span> $500
														</p>
													</div>
												</div>
												<div class="single-cart-item">
													<a href="javascript:void(0)" class="remove-icon"><i
														class="ion-android-close"></i></a>
													<div class="image">
														<a href="single-product.html"> <img width="80"
															height="106"
															src="assets/img/products/product-3-80x106.webp"
															class="img-fluid" alt="">
														</a>
													</div>
													<div class="content">
														<p class="product-title">
															<a href="single-product.html">Cillum dolore tool</a>
														</p>
														<p class="count">
															<span>1 x </span> $607
														</p>
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
												<a href="cart.html">VIEW CART</a> <a href="checkout.html">CHECKOUT</a>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="header-settings-icon">
										<a href="javascript:void(0)" class="header-settings-trigger"
											id="header-settings-trigger">
											<div class="setting-button">
												<span></span> <span></span> <span></span>
											</div>
										</a>

										<!-- settings menu -->
										<div class="settings-menu-wrapper" id="settings-menu-wrapper">
											<c:if test="${empty user}">
												<div class="single-settings-block">
													<h4 class="title">會員專區</h4>
													<ul>
														<li><a href="/tfa105g2-1/login-register-member.jsp">會員登入</a></li>
														<li><a href="/tfa105g2-1/login-register-member.jsp">會員註冊</a></li>
													</ul>
												</div>
												<div class="single-settings-block">
													<h4 class="title">廠商專區</h4>
													<ul>
														<li><a href="login-register.html">廠商登入</a></li>
														<li><a href="login-register.html">廠商註冊</a></li>
													</ul>
												</div>
											</c:if>
											<c:if test="${not empty user}">
												<div class="single-settings-block">
													<h4 class="title">會員專區</h4>
													<ul>
														<li><a
															href="<c:url value="/my-account-member.jsp" />">會員中心</a></li>
													</ul>
												</div>
											</c:if>
											<!-- <div class="single-settings-block">
                                                <h4 class="title">LANGUAGE: EN-GB </h4>
                                                <ul>
                                                    <li><a href="javascript:void(0)"><img
                                                                width="16" height="11" src="assets/img/icons/en-gb.webp" alt=""> English</a>
                                                    </li>
                                                    <li><a href="javascript:void(0)"><img
                                                                width="16" height="11" src="assets/img/icons/de-de.webp" alt=""> Germany </a>
                                                    </li>
                                                </ul>
                                            </div> -->
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
										src="assets/img/logo.webp" class="img-fluid" alt="">
									</a>
								</div>
							</div>
							<div class="col-6 col-md-6">
								<div class="mobile-navigation text-end">
									<div class="header-icon-wrapper">
										<ul class="icon-list justify-content-end">
											<li>
												<div class="header-cart-icon">
													<a href="cart.html"> <i class="ion-bag"></i> <span
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
								<li><a href="index.html">首頁</a></li>
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
								<c:if test="${not empty insert}">
									<span
										style="font-size: 28px; font-weight: 650; text-align: center;">註冊成功，歡迎光臨!</span>
								</c:if>
								<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6">
									<!-- Login Form s-->
									<form
										action="<c:url value="/login-register-member.controller" />"
										method="post">

										<div class="login-form">
											<h4 class="login-title">會員登入</h4>

											<div class="row">
												<div class="col-md-12 col-12">
													<label>帳號</label> <input type="text" name="useraccount"
														value="${param.useraccount}"> <span
														style="color: red">${errors.useraccount}</span>
												</div>
												<div class="col-12">
													<label>密碼</label> <input type="password" name="password"
														value="${param.password}"> <span
														style="color: red">${errors.password}</span>
												</div>
												<div class="col-sm-6">

													<div class="check-box d-inline-block ml-0 ml-md-2">
														<input type="checkbox" id="remember_me"> <label
															for="remember_me">記住我</label>
													</div>
												</div>

												<div class="col-sm-6 text-start text-sm-end">
													<a href="#" class="forget-pass-link"> 忘記密碼?</a>
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
									<form action="<c:url value="/register-member.controller" />"
										method="post">

										<div class="login-form">
											<h4 class="login-title">會員註冊</h4>

											<div class="row">
												<div class="col-md-12 mb-20">
													<label>帳號*</label> <span style="color: red">${errors.useraccount_rg}</span><input
														type="text" name="useraccount_rg"
														value="${param.useraccount_rg}" placeholder="請設定4-15位英數字帳號">
												</div>
												<div class="col-md-6 mb-20">
													<label>密碼*</label> <span style="color: red">${errors.password_rg}</span><input
														type="password" name="password_rg"
														placeholder="請設定6-8位英數字密碼">
												</div>
												<div class="col-md-6 mb-20">
													<label>確認密碼*</label> <span style="color: red">${errors.password_rg2}</span><input
														type="password" name="password_rg2" placeholder="請再輸入一次密碼">
												</div>
												<div class="col-md-12 mb-20">
													<label>姓名</label> <span style="color: red">${errors.username}</span><input
														type="text" name="username" value="${param.username}">
												</div>
												<div class="col-md-12">
													<label>手機*</label><span style="color: red">${errors.phone}</span>
													<input type="tel" name="phone" value="${param.phone}"
														maxlength="10">
												</div>
												<div class="col-md-12">
													<label>信箱*</label> <span style="color: red">${errors.email}</span><input
														type="email" name="email" value="${param.email}">
												</div>
												<div class="col-md-12">
													<label>通訊地址</label> <input type="text" name="address"
														value="${param.address}">
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
												<div class="col-md-12">
													<label>驗證碼</label> <input type="email">
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
	<div class="newsletter-area section-space--inner">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2">
					<div class="newsletter-wrapper">
						<p class="small-text">Special Ofers For Subscribers</p>
						<h3 class="title">Ten Percent Member Discount</h3>
						<p class="short-desc">Subscribe to our newsletters now and
							stay up to date with new collections, the latest lookbooks and
							exclusive offers.</p>

						<div class="newsletter-form">
							<form id="mc-form" class="mc-form">
								<input type="email"
									placeholder="Enter Your Email Address Here..." required>
								<button type="submit" value="submit">SUBSCRIBE</button>
							</form>

						</div>
						<!-- mailchimp-alerts Start -->
						<div class="mailchimp-alerts">
							<div class="mailchimp-submitting"></div>
							<!-- mailchimp-submitting end -->
							<div class="mailchimp-success"></div>
							<!-- mailchimp-success end -->
							<div class="mailchimp-error"></div>
							<!-- mailchimp-error end -->
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
						<div
							class="footer-copyright-wrapper footer-copyright-wrapper--default-footer">
							<div class="container">
								<div class="row align-items-center no-gutters">
									<div class="col-lg-2 col-md-2">
										<div class="footer-logo">
											<a href="#"><img width="93" height="25"
												src="assets/img/logo.webp" class="img-fluid" alt=""></a>
										</div>
									</div>

									<div class="col-lg-7 col-md-5">

										<div class="copyright-text">

											Copyright &copy; 2021 <a href="#">Eposi</a>. All Rights
											Reserved.
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
				<div class="offcanvas-mobile-search-area">
					<form action="#">
						<input type="search" placeholder="Search ...">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
				<nav class="offcanvas-navigation">
					<ul>
						<li class="menu-item-has-children"><a href="#">Home</a>
							<ul class="sub-menu">
								<li><a href="index.html">Home 01</a></li>
								<li><a href="index-2.html">Home 02</a></li>
								<li><a href="index-3.html">Home 03</a></li>
								<li><a href="index-4.html">Home 04</a></li>
								<li><a href="index-5.html">Home 05</a></li>
								<li><a href="index-6.html">Home 06</a></li>
								<li><a href="index-7.html">Home 07</a></li>
								<li><a href="index-8.html">Home 08</a></li>
							</ul></li>
						<li class="menu-item-has-children"><a href="#">Pages</a>
							<ul class="sub-menu">
								<li class="menu-item-has-children"><a href="#">Page
										List One</a>
									<ul class="sub-menu">
										<li><a href="cart.html">Cart</a></li>
										<li><a href="checkout.html">Checkout</a></li>
										<li><a href="wishlist.html">Wishlist</a></li>
									</ul></li>
								<li class="menu-item-has-children"><a href="#">Page
										List Two</a>
									<ul class="sub-menu">
										<li><a href="my-account.html">My Account</a></li>
										<li><a href="login-register.html">Login Register</a></li>
										<li><a href="faq.html">FAQ</a></li>
									</ul></li>
								<li class="menu-item-has-children"><a href="#">Page
										List Three</a>
									<ul class="sub-menu">
										<li><a href="compare.html">Compare</a></li>
										<li><a href="contact.html">Contact</a></li>
										<li><a href="about.html">About Us</a></li>
									</ul></li>

							</ul></li>
						<li class="menu-item-has-children"><a href="#">Shop</a>
							<ul class="sub-menu">
								<li class="menu-item-has-children"><a href="#">Shop
										Grid</a>
									<ul class="sub-menu">
										<li><a href="shop-3-column.html">shop 3 column</a></li>
										<li><a href="shop-4-column.html">shop 4 column</a></li>
										<li><a href="shop-left-sidebar.html">shop left
												sidebar</a></li>
										<li><a href="shop-right-sidebar.html">shop right
												sidebar</a></li>
									</ul></li>
								<li class="menu-item-has-children"><a href="#">Shop
										List</a>
									<ul class="sub-menu">
										<li><a href="shop-list.html">shop List</a></li>
										<li><a href="shop-list-left-sidebar.html">shop List
												Left Sidebar</a></li>
										<li><a href="shop-list-right-sidebar.html">shop List
												Right Sidebar</a></li>
									</ul></li>
								<li class="menu-item-has-children"><a href="#">Single
										Product One</a>
									<ul class="sub-menu">
										<li><a href="single-product.html">Single Product</a></li>
										<li><a href="single-product-variable.html">Single
												Product variable</a></li>
										<li><a href="single-product-affiliate.html">Single
												Product affiliate</a></li>
										<li><a href="single-product-group.html">Single
												Product group</a></li>
										<li><a href="single-product-tabstyle-2.html">Tab
												Style 2</a></li>
										<li><a href="single-product-tabstyle-3.html">Tab
												Style 3</a></li>
									</ul></li>
								<li class="menu-item-has-children"><a href="#">Single
										Product Two</a>
									<ul class="sub-menu">
										<li><a href="single-product-gallery-left.html">Gallery
												Left</a></li>
										<li><a href="single-product-gallery-right.html">Gallery
												Right</a></li>
										<li><a href="single-product-sticky-left.html">Sticky
												Left</a></li>
										<li><a href="single-product-sticky-right.html">Sticky
												Right</a></li>
										<li><a href="single-product-slider-box.html">Slider
												Box</a></li>
									</ul></li>
							</ul></li>
						<li class="menu-item-has-children"><a href="#">Blog</a>
							<ul class="sub-menu">
								<li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
								<li><a href="blog-right-sidebar.html">Blog Right
										Sidebar</a></li>
								<li><a href="blog-post-left-sidebar.html">Blog Post
										Left Sidebar</a></li>
								<li><a href="blog-post-right-sidebar.html">Blog Post
										Right Sidebar</a></li>
								<li><a href="blog-post-image-format.html">Blog Post
										Image Format</a></li>
								<li><a href="blog-post-image-gallery.html">Blog Post
										Image Gallery</a></li>
								<li><a href="blog-post-audio-format.html">Blog Post
										Audio Format</a></li>
								<li><a href="blog-post-video-format.html">Blog Post
										Video Format</a></li>
							</ul></li>

					</ul>
				</nav>

				<div class="offcanvas-settings">
					<nav class="offcanvas-navigation">
						<ul>
							<li class="menu-item-has-children"><a href="#">MY
									ACCOUNT </a>
								<ul class="sub-menu">
									<li><a href="login-register.html">Register</a></li>
									<li><a href="login-register.html">Login</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#">CURRENCY:
									USD </a>
								<ul class="sub-menu">
									<li><a href="javascript:void(0)">€ Euro</a></li>
									<li><a href="javascript:void(0)">$ US Dollar</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#">LANGUAGE:
									EN-GB </a>
								<ul class="sub-menu">
									<li><a href="javascript:void(0)"><img width="16"
											height="11" src="assets/img/icons/en-gb.webp" alt="">
											English</a></li>
									<li><a href="javascript:void(0)"><img width="16"
											height="11" src="assets/img/icons/de-de.webp" alt="">
											Germany</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>

				<div class="offcanvas-widget-area">
					<div class="off-canvas-contact-widget">
						<div class="header-contact-info">
							<ul class="header-contact-info__list">
								<li><i class="ion-android-phone-portrait"></i> <a
									href="tel://12452456012">(1245) 2456 012 </a></li>
								<li><i class="ion-android-mail"></i> <a
									href="mailto:info@yourdomain.com">info@yourdomain.com</a></li>
							</ul>
						</div>
					</div>
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
	<!-- scroll to top  -->
	<div id="scroll-top">
		<span>Back to top</span><i class="ion-chevron-right"></i><i
			class="ion-chevron-right"></i>
	</div>
	<!-- end of scroll to top -->
	<!--=============================================
    =            JS files        =
    =============================================-->

	<!-- Vendor JS -->
	<script src="assets/js/vendors.js"></script>

	<!-- Active JS -->
	<script src="assets/js/active.js"></script>

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