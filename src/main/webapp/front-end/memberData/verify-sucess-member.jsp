<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>會員驗證 | 龘虤</title>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>

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
	background-image:
		url("<%=request.getContextPath()%>/assets/img/hero-slider/test4.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
}

.login-title {
	font-size: 17px;
	line-height: 0px;
	text-decoration: none;
}

.login-form label {
	margin-bottom: 5px;
	font-weight: 550;
}

.login-form input {
	line-height: 15px;
	padding: 10px 10px;
	font-size: 12px;
	margin-bottom: 13px;
	border-radius: 5px;
	border: 1px solid #bbb;
}

.back-to-index a {
	background-color: #FBD02C;
	color: #333;
	text-decoration: none;
	display: block;
	width: 150px;
	height: 40px;
	text-align: center;
	line-height: 40px;
	font-size: 14px;
	font-weight:600;
}


.back-to-index a:hover {
	background-color: #333;
	color: white;
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
							<a href="index.jsp"> <img width="150" height="50"
								src="<%=request.getContextPath()%>/assets/img/logo_v1.jpg"
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
												href="${pageContext.request.contextPath}/AllProductServlet?action=selectAll">商品總覽</a></li>
											<li><a href="cart.jsp">購物車</a></li>
										</ul></li>

									<li class="menu-item-has-children"><a href="#">預約服務</a>
										<ul class="sub-menu">
											<li><a href="blog-post-video-format.jsp">法會直播</a></li>
											<li><a href="blog-post-audio-format.jsp">預約祭祀</a></li>
											<li><a href="menu-item-has-children">線上祭祀</a></li>
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
														<a href="single-product.jsp"> <img width="80"
															height="106"
															src="<%=request.getContextPath()%>/assets/img/products/product-1-80x106.webp"
															class="img-fluid" alt="">
														</a>
													</div>
													<div class="content">
														<p class="product-title">
															<a href="single-product.jsp">Cillum dolore furniture</a>
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
														<a href="single-product.jsp"> <img width="80"
															height="106"
															src="<%=request.getContextPath()%>/assets/img/products/product-2-80x106.webp"
															class="img-fluid" alt="">
														</a>
													</div>
													<div class="content">
														<p class="product-title">
															<a href="single-product.jsp">Lorem ipsum furniture</a>
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
														<a href="single-product.jsp"> <img width="80"
															height="106"
															src="<%=request.getContextPath()%>/assets/img/products/product-3-80x106.webp"
															class="img-fluid" alt="">
														</a>
													</div>
													<div class="content">
														<p class="product-title">
															<a href="single-product.jsp">Cillum dolore tool</a>
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
												<a href="cart.jsp">VIEW CART</a> <a href="checkout.jsp">CHECKOUT</a>
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
														href="<%=request.getContextPath()%>/front-end/compData/comp-login-register.jsp">註冊/登入</a></li>
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
								<div class="col-sm-12 col-md-12 col-xs-12 col-lg-6">
									<div class="login-form">
										<h4 class="login-title"">電子信箱已完成驗證!</h4>
										<div class="row">
											<div class="back-to-index">
												<a href="<%=request.getContextPath()%>/front-end/index.jsp">點此回首頁</a>
											</div>
										</div>
									</div>
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
											<a href="#"><img width="100" height="50"
												src="<%=request.getContextPath()%>/assets/img/logo_v1.jpg"
												class="img-fluid" alt=""></a>
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
				<nav class="offcanvas-navigation">
					<ul>
						<li class="menu-item-has-children"><a href="index.html">祭祖商城</a>
							<ul class="sub-menu">
								<li><a href="shop-list-left-sidebar.jsp">商品總攬</a></li>
								<li><a href="cart.jsp">購物車</a></li>
							</ul></li>

						<li class="menu-item-has-children"><a href="#">預約服務</a>
							<ul class="sub-menu">
								<li><a href="blog-post-video-format.jsp">法會直播</a></li>
								<li><a
									href="<%=request.getContextPath()%>/front-end/booking/booking.jsp">預約祭祀</a></li>
								<li><a href="menu-item-has-children">線上祭祀</a></li>
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
	<!-- scroll to top  -->
	<div id="scroll-top">
		<span>線上客服</span><i class="ion-chevron-right"></i><i
			class="ion-chevron-right"></i>
	</div>


	<!-- end of scroll to top -->
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