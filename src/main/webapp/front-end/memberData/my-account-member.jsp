<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



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
<link href="assets/css/vendors.css" rel="stylesheet">
<!-- Main CSS -->
<link href="assets/css/style.css" rel="stylesheet">
<style>
.account-details-form h4 {
	margin-top: 30px;
	margin-bottom: 15px;
}

.account-details-form input {
	margin-bottom: 23px;
	line-height: 16px;
	margin-top: 7px;
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
														<li><a href="login-register.html">會員登入</a></li>
														<li><a href="login-register.html">會員註冊</a></li>
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
							<h2 class="breadcrumb-content__title">My Account</h2>
							<ul class="breadcrumb-content__page-map">
								<li><a href="index.html">Home</a></li>
								<li class="active">My Account</li>
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
								<!-- My Account Tab Menu Start -->
								<div class="col-lg-3 col-12">
									<div class="myaccount-tab-menu nav" role="tablist">
										<a href="#dashboad" class="active" data-bs-toggle="tab"><i
											class="fa fa-dashboard"></i> 會員中心</a> <a href="#orders"
											data-bs-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
											訂單查詢</a> <a href="#download" data-bs-toggle="tab"><i
											class="fa fa-calendar"></i> 法會預約查詢</a> <a href="#payment-method"
											data-bs-toggle="tab"><i class="fa fa-credit-card"></i>
											付款方式</a> <a href="#address-edit" data-bs-toggle="tab"><i
											class="fa fa-map-marker"></i> 地址</a> <a href="#account-info"
											data-bs-toggle="tab"><i class="fa fa-user"></i> 修改個人資料</a>
										<!-- <a
											href="/tfa105g2-1/index.jsp"><i class="fa fa-sign-out"></i>
											登出</a>  -->

										<form action="<c:url value="/logout-member.controller" />"
											method="post">

											<div class="col-md-12">
												<input type="hidden" name="action" value="logout"> <input
													class="register-button" type="submit" value="登出">
											</div>
										</form>


									</div>
								</div>
								<!-- My Account Tab Menu End -->

								<!-- My Account Tab Content Start -->
								<div class="col-lg-9 col-12">
									<div class="tab-content" id="myaccountContent">
										<!-- Single Tab Content Start -->
										<div class="tab-pane fade show active" id="dashboad"
											role="tabpanel">
											<div class="myaccount-content">
												<h3>Dashboard</h3>

												<div class="welcome mb-20">
													<p>
														Hello, <strong>${user.username}</strong>
														<!--(If Not <strong>Tuntuni
															!</strong><a href="login-register.html" class="logout"> Logout</a>)-->
													</p>
												</div>

												<p class="mb-0">From your account dashboard. you can
													easily check &amp; view your recent orders, manage your
													shipping and billing addresses and edit your password and
													account details.</p>
											</div>
										</div>
										<!-- Single Tab Content End -->

										<!-- Single Tab Content Start -->
										<div class="tab-pane fade" id="orders" role="tabpanel">
											<div class="myaccount-content">
												<h3>Orders</h3>

												<div class="myaccount-table table-responsive text-center">
													<table class="table table-bordered">
														<thead class="thead-light">
															<tr>
																<th>No</th>
																<th>Name</th>
																<th>Date</th>
																<th>Status</th>
																<th>Total</th>
																<th>Action</th>
															</tr>
														</thead>

														<tbody>
															<tr>
																<td>1</td>
																<td>Mostarizing Oil</td>
																<td>Aug 22, 2018</td>
																<td>Pending</td>
																<td>$45</td>
																<td><a href="cart.html" class="btn">View</a></td>
															</tr>
															<tr>
																<td>2</td>
																<td>Katopeno Altuni</td>
																<td>July 22, 2018</td>
																<td>Approved</td>
																<td>$100</td>
																<td><a href="cart.html" class="btn">View</a></td>
															</tr>
															<tr>
																<td>3</td>
																<td>Murikhete Paris</td>
																<td>June 12, 2017</td>
																<td>On Hold</td>
																<td>$99</td>
																<td><a href="cart.html" class="btn">View</a></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
										<!-- Single Tab Content End -->

										<!-- Single Tab Content Start -->
										<div class="tab-pane fade" id="download" role="tabpanel">
											<div class="myaccount-content">
												<h3>Downloads</h3>

												<div class="myaccount-table table-responsive text-center">
													<table class="table table-bordered">
														<thead class="thead-light">
															<tr>
																<th>Product</th>
																<th>Date</th>
																<th>Expire</th>
																<th>Download</th>
															</tr>
														</thead>

														<tbody>
															<tr>
																<td>Mostarizing Oil</td>
																<td>Aug 22, 2018</td>
																<td>Yes</td>
																<td><a href="#" class="btn">Download File</a></td>
															</tr>
															<tr>
																<td>Katopeno Altuni</td>
																<td>Sep 12, 2018</td>
																<td>Never</td>
																<td><a href="#" class="btn">Download File</a></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
										<!-- Single Tab Content End -->

										<!-- Single Tab Content Start -->
										<div class="tab-pane fade" id="payment-method" role="tabpanel">
											<div class="myaccount-content">
												<h3>Payment Method</h3>

												<p class="saved-message">You Can't Saved Your Payment
													Method yet.</p>
											</div>
										</div>
										<!-- Single Tab Content End -->

										<!-- Single Tab Content Start -->
										<div class="tab-pane fade" id="address-edit" role="tabpanel">
											<div class="myaccount-content">
												<h3>Billing Address</h3>

												<address>
													<p>
														<strong>Alex Tuntuni</strong>
													</p>
													<p>
														1355 Market St, Suite 900 <br> San Francisco, CA
														94103
													</p>
													<p>Mobile: (123) 456-7890</p>
												</address>

												<a href="#" class="btn d-inline-block edit-address-btn"><i
													class="fa fa-edit"></i>Edit Address</a>
											</div>
										</div>
										<!-- Single Tab Content End -->

										<!-- Single Tab Content Start -->
										<div class="tab-pane fade" id="account-info" role="tabpanel">
											<div class="myaccount-content">
												<h3>個人基本資料</h3>

												<div class="account-details-form">
													<form action="<c:url value="/edit.controller" />"
														method="post">
														<div class="row">
															<div class="col-md-7">
																<label>帳號</label> <input name="useraccount" type="text"
																	value="${user.useraccount}" disabled>
															</div>
															<div class="col-md-7">
																<label>姓名</label> <input name="username" type="text"
																	value="${user.username}">
															</div>
															<div class="col-md-7">
																<label>手機</label> <span style="color: red">${errors.phone}</span><input name="phone" type="tel"
																	value="${user.phone}" maxlength="10">
															</div>
															<div class="col-md-12">
																<label>信箱</label>  <span style="color: red">${errors.email}</span><input name="email" type="email"
																	value="${user.email}">
															</div>
															<div class="col-md-12">
																<label>通訊地址</label> <input name="address" type="text"
																	value="${user.address}">
															</div>
															<div class="col-lg-6 col-12">
																<label>性別</label> <input name="gender" type="text"
																	value="${user.gender}">
															</div>

															<div class="col-lg-6 col-12">
																<label>生日</label> <span style="color: red">${errors.birthday}</span><input name="birthday" id="f_date1" type="text"
																	value="<fmt:formatDate value="${user.birthday}" pattern="yyyy/MM/dd"/>
																	">
															</div>
															<div class="col-12">
															<input type="hidden" name="action" value="edit">
																<button type="submit" class="save-change-btn">修改個人資料</button>
											
															</div>
														</div>
													</form>
													<h5>
														<span style="color: red">${errors.action}</span>
													</h5>
													<c:if test="${not empty edit}">
														<h5>資料更新成功!</h5>
													</c:if>

													<form
														action="<c:url value="/change-password.controller" />"
														method="post">
														<div class="row">
															<div class="col-12 mb-2">
																<h4>修改密碼</h4>
															</div>

															<div class="col-12">
																<label>舊密碼</label> <span style="color: red">${errors.useraccount}</span><input
																	name="currentpwd" type="password">
															</div>

															<div class="col-lg-6 col-12">
																<label>新密碼</label> <span style="color: red">${errors.newpwd}</span><input
																	name="newpwd" placeholder="請設定6-8位英數字密碼"
																	type="password">
															</div>

															<div class="col-lg-6 col-12">
																<label>確認密碼</label> <span style="color: red">${errors.confirmpwd}</span><input
																	name="confirmpwd" type="password">
															</div>

															<div class="col-12">
																<input type="hidden" name="action" value="changepwd">
																<button type="submit" class="save-change-btn">修改密碼</button>
															</div>
														</div>
													</form>
													<h5>
														<span style="color: red">${errors.action}</span>
													</h5>
													<c:if test="${not empty change}">
														<h5>密碼更新成功!</h5>
													</c:if>

												</div>
											</div>
										</div>
										<!-- Single Tab Content End -->
									</div>
								</div>
								<!-- My Account Tab Content End -->
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

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>


<script>
        $.datetimepicker.setLocale('zh');
        $('#f_date1').datetimepicker({
           theme: '',              //theme: 'dark',
 	       timepicker:false,       //timepicker:true,
 	       step: 1,                //step: 60 (這是timepicker的預設間隔60分鐘)
 	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
 		   value: '${user.birthday}', // value:   new Date(),
           //disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
           //startDate:	            '2017/07/10',  // 起始日
           //minDate:               '-1970-01-01', // 去除今日(不含)之前
           //maxDate:               '+1970-01-01'  // 去除今日(不含)之後
        });
        

        
</script>

</html>