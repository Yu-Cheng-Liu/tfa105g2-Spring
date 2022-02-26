<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE jsp>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>龘虤</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="icon" href="<%=request.getContextPath()%>/assets/img/favicon.ico">

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
<link href="<%=request.getContextPath()%>/assets/css/vendors.css" rel="stylesheet">
<!-- Main CSS -->
<link href="<%=request.getContextPath()%>/assets/css/style.css" rel="stylesheet">

<style>
	*{
  		color: black;
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
							<a href="<%=request.getContextPath()%>/front-end/index.jsp"> <img width="93" height="25"
								src="<%=request.getContextPath()%>/assets/img/logo.webp" class="img-fluid" alt="">
							</a>
						</div>
						<!-- menu wrapper -->
						<div class="navigation-menu-wrapper">
							<nav>
								<ul>
									<li class="menu-item-has-children"><a href="#">祭祖商城</a>
										<ul class="sub-menu">
											<li><a href="shop-list-left-sidebar.jsp">商品總攬</a></li>
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
											<li><a href="<%=request.getContextPath()%>/front-end/service/contact.jsp">聯絡我們</a></li>
											<li><a href="<%=request.getContextPath()%>/front-end/service/about.jsp">關於我們</a></li>
										</ul></li>

									<li><a href="<%=request.getContextPath()%>/front-end/service/faq.jsp">常見問題</a></li>
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
															src="assets/img/products/product-1-80x106.webp"
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
															src="assets/img/products/product-2-80x106.webp"
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
															src="assets/img/products/product-3-80x106.webp"
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
													<li><a href="login-register.jsp">註冊</a></li>
													<li><a href="login-register.jsp">登入</a></li>
												</ul>
											</div>
											<div class="single-settings-block">
												<h4 class="title">廠商專區</h4>
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

					<div class="header-mobile-navigation d-block d-lg-none">
						<div class="row align-items-center">
							<div class="col-6 col-md-6">
								<div class="header-logo">
									<a href="<%=request.getContextPath()%>/front-ean/index.html"> <img width="93" height="25"
										src="<%=request.getContextPath()%>/assets/img/logo.webp" class="img-fluid" alt="">
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
						<!-- <div class="breadcrumb-content">
                            <h2 class="breadcrumb-content__title">Contact Us</h2>
                            <ul class="breadcrumb-content__page-map">
                                <li><a href="index.html">Home</a></li>
                                <li class="active">Contact Us</li>
                            </ul>
                        </div> -->
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
								<div class="col-lg-5 offset-lg-1 col-md-12 order-1 order-lg-2">
									<!--=======  contact page side content  =======-->

									<div class="contact-page-side-content">
										<h3 class="contact-page-title">聯絡我們</h3>
										<p class="contact-page-message">為提供顧客更完善服務，
											您的寶貴意見將會是作為我們提升服務品質之參考。 請將您的意見以填寫表單方式送出，我們將於工作日由專人以郵件回覆您的問題。
											如有立即回覆之需求，請撥打客服專線或使用數位客服，謝謝！ 查詢相關服務資訊，請參考 常見問題。</p>
										<!--=======  single contact block  =======-->

										<div class="single-contact-block">
											<h4>
												<i class="fa fa-fax"></i> 地址
											</h4>
											<p>104 台北市中山區南京東路三段219號5樓</p>
										</div>

										<!--=======  End of single contact block  =======-->

										<!--=======  single contact block  =======-->

										<div class="single-contact-block">
											<h4>
												<i class="fa fa-phone"></i> 電話
											</h4>
											<p>公司： (+886) 227120589</p>
										</div>

										<!--=======  End of single contact block  =======-->

										<!--=======  single contact block  =======-->

										<div class="single-contact-block">
											<h4>
												<i class="fa fa-envelope-o"></i> 信箱
											</h4>
											<p>tfa105dayan@gmail.com</p>
										</div>

										<!--=======  End of single contact block  =======-->
									</div>

									<!--=======  End of contact page side content  =======-->

								</div>
								<div class="col-lg-6 col-md-12 order-2 order-lg-1">
									<!--=======  contact form content  =======-->

									<div class="contact-form-content">
										<h3 class="contact-page-title">歡迎與我們聯繫</h3>

										<div class="contact-form">
											<form action="contact.controller" method="post">
												<div class="form-group">
													<label>姓名 <span class="required">*</span> <c:if
															test="${not empty errors.name}">
															<p style="color: red;">${errors.name}</p>
														</c:if></label> <input type="text" name="customerName" id="con_namec:"
														value="${customerName}" required>

												</div>
												<div class="form-group">
													<label>電子信箱 <span class="required">*</span> <c:if
															test="${not empty errors.email}">
															<p style="color: red;">${errors.email}</p>
														</c:if>
													</label> <input type="email" name="email" id="con_email"
														value="${email}" required>

												</div>

												<div class="form-group">

													<label>你的意見</label>
													<c:if test="${not empty errors.content}">
														<p style="color: red;">${errors.content}</p>
													</c:if>
													<textarea name="content" id="con_message"></textarea>
												</div>
												<div class="form-group mb-0">
													<button type="submit" value="submit" id="submit"
														class="contact-button" name="submit">送出</button>
												</div>
											</form>
										</div>
									</div>

									<!--=======  End of contact form content =======-->
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
												src="<%=request.getContextPath()%>/assets/img/logo.webp" class="img-fluid" alt=""></a>
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
								<li><a href="blog-post-audio-format.jsp">預約祭祀</a></li>
								<li><a href="menu-item-has-children">線上祭祀</a></li>
							</ul></li>

						<li class="menu-item-has-children"><a href="#">客服中心</a>
							<ul class="sub-menu">
								<li><a href="<%=request.getContextPath()%>/front-end/service/contact.jsp">聯絡我們</a></li>
								<li><a href="<%=request.getContextPath()%>/front-end/service/about.jsp">關於我們</a></li>
							</ul></li>

						<li><a href="<%=request.getContextPath()%>/front-end/service/faq.jsp">常見問題</a></li>
					</ul>
				</nav>

				<div class="offcanvas-settings">
					<nav class="offcanvas-navigation">
						<ul>
							<li class="menu-item-has-children"><a href="#">會員登入 </a>
								<ul class="sub-menu">
									<li><a href="login-register.jsp">註冊</a></li>
									<li><a href="login-register.jsp">登入</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#">廠商登入 </a>
								<ul class="sub-menu">
									<li><a href="login-register.jsp">註冊</a></li>
									<li><a href="login-register.jsp">登入</a></li>
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

	<!-- Ajax Mail JS -->
	<script src="<%=request.getContextPath()%>/assets/js/ajax-mail.js"></script>


	<!-- Google Map -->
	<script
		src="https://maps.google.com/maps/api/js?sensor=false&libraries=geometry&v=3.22&key=AIzaSyChs2QWiAhnzz0a4OEhzqCXwx_qA9ST_lE"></script>

	<script>
		// When the window has finished loading create our google map below
		google.maps.event.addDomListener(window, 'load', init);

		function init() {
			// Basic options for a simple Google Map
			// For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
			var mapOptions = {
				// How zoomed in you want the map to start at (always required)
				zoom : 12,

				scrollwheel : false,

				// The latitude and longitude to center the map (always required)
				center : new google.maps.LatLng(40.740610, -73.935242), // New York

				// How you would like to style the map. 
				// This is where you would paste any style found on

				styles : [ {
					"featureType" : "water",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#e9e9e9"
					}, {
						"lightness" : 17
					} ]
				}, {
					"featureType" : "landscape",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#f5f5f5"
					}, {
						"lightness" : 20
					} ]
				}, {
					"featureType" : "road.highway",
					"elementType" : "geometry.fill",
					"stylers" : [ {
						"color" : "#ffffff"
					}, {
						"lightness" : 17
					} ]
				}, {
					"featureType" : "road.highway",
					"elementType" : "geometry.stroke",
					"stylers" : [ {
						"color" : "#ffffff"
					}, {
						"lightness" : 29
					}, {
						"weight" : 0.2
					} ]
				}, {
					"featureType" : "road.arterial",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#ffffff"
					}, {
						"lightness" : 18
					} ]
				}, {
					"featureType" : "road.local",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#ffffff"
					}, {
						"lightness" : 16
					} ]
				}, {
					"featureType" : "poi",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#f5f5f5"
					}, {
						"lightness" : 21
					} ]
				}, {
					"featureType" : "poi.park",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#dedede"
					}, {
						"lightness" : 21
					} ]
				}, {
					"elementType" : "labels.text.stroke",
					"stylers" : [ {
						"visibility" : "on"
					}, {
						"color" : "#ffffff"
					}, {
						"lightness" : 16
					} ]
				}, {
					"elementType" : "labels.text.fill",
					"stylers" : [ {
						"saturation" : 36
					}, {
						"color" : "#333333"
					}, {
						"lightness" : 40
					} ]
				}, {
					"elementType" : "labels.icon",
					"stylers" : [ {
						"visibility" : "off"
					} ]
				}, {
					"featureType" : "transit",
					"elementType" : "geometry",
					"stylers" : [ {
						"color" : "#f2f2f2"
					}, {
						"lightness" : 19
					} ]
				}, {
					"featureType" : "administrative",
					"elementType" : "geometry.fill",
					"stylers" : [ {
						"color" : "#fefefe"
					}, {
						"lightness" : 20
					} ]
				}, {
					"featureType" : "administrative",
					"elementType" : "geometry.stroke",
					"stylers" : [ {
						"color" : "#fefefe"
					}, {
						"lightness" : 17
					}, {
						"weight" : 1.2
					} ]
				} ]
			};

			// Get the HTML DOM element that will contain your map 
			// We are using a div with id="map" seen below in the <body>
			var mapElement = document.getElementById('google-map');

			// Create the Google Map using our element and options defined above
			var map = new google.maps.Map(mapElement, mapOptions);

			// Let's also add a marker while we're at it
			var marker = new google.maps.Marker({
				position : new google.maps.LatLng(40.740610, -73.935242),
				map : map,
				title : 'Greenfarm',
				icon : "assets/img/icons/map-marker.webp",
				animation : google.maps.Animation.BOUNCE
			});
		}
	</script>


	<!--=====  End of JS files ======-->

</body>

</html>