<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Eposi - Multipurpose eCommerce Bootstrap5 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="icon"
	href="<%=request.getContextPath()%>/assets/img/favicon.ico">

<!-- FontAwesome 連結-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<!-- BookStrap 連結-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>


<!--=============================================
    =            CSS  files       =
    =============================================-->
<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<!-- Vendor CSS -->
<link href="<%=request.getContextPath()%>/assets/css/vendors.css"
	rel="stylesheet">
<!-- Main CSS -->
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Karla:ital,wght@0,400;0,700;1,400;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet">



<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/comp.css">


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
								src="<%=request.getContextPath()%>/assets/img/logo.webp"
								class="img-fluid" alt="">
							</a>
						</div>
						<!-- menu wrapper -->
						<div class="navigation-menu-wrapper">
							<nav>
								<ul>
									<li class="menu-item-has-children"><a href="index.html">祭祖商城</a>
										<ul class="sub-menu">
											<li><a href="shop-list-left-sidebar.html">shop List
													Left Sidebar</a></li>
											<li><a href="single-product-affiliate.html">Single
													Product affiliate</a></li>

										</ul></li>

									<li class="menu-item-has-children"><a href="#">預約服務</a>
										<ul class="sub-menu">
											<li><a href="blog-post-video-format.html">法會直播</a></li></li>
									<li><a href="blog-post-audio-format.html">預約祭祀</a></li>

									</li>
									<li><a href="menu-item-has-children">線上祭祀</a></li>


									</li>
								</ul>
								</li>


								<li class="menu-item-has-children"><a
									href="blog-left-sidebar.html">客服中心</a>
									<ul class="sub-menu">
										<li><a href="contact.html">Contact</a></li>

									</ul></li>

								<li><a href="faq.html">常見問題</a></li>
								</ul>
							</nav>
						</div>
						<!-- header icon -->
						<div class="header-icon-wrapper">
							<ul class="icon-list">
							
										<a href="<%=request.getContextPath()%>/front-end/compData/comp-index.jsp" id="comp-user-icon">
										<i class="fa-solid fa-user"></i>
										</a>
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
															src="<%=request.getContextPath()%>/assets/img/products/product-1-80x106.webp"
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
															src="<%=request.getContextPath()%>/assets/img/products/product-2-80x106.webp"
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
															src="<%=request.getContextPath()%>/assets/img/products/product-3-80x106.webp"
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
													<li><a
														href="<%=request.getContextPath()%>/front-end/compData/comp-login-register.jsp">廠商登入</a></li>
													<li><a
														href="<%=request.getContextPath()%>/front-end/compData/comp-login-register.jsp">廠商註冊</a></li>
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
										src="<%=request.getContextPath()%>/assets/img/logo.webp"
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
                                    
                                        <a href="#account-info" ${attrs1} data-bs-toggle="tab"><i class="fa fa-user"></i>公司資訊管理</a>
                                            
                                        <a href="#dashboad" ${attrs2}  data-bs-toggle="tab"><i
                                                class="fa fa-dashboard"></i>
                                            帳戶大廳</a>

                                        <a href="#orders" ${attrs3} data-bs-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
                                            訂單總覽</a>
                                            
                                        <a href="#product-management" ${attrs4} data-bs-toggle="tab" ><i class="fa fa-cart-arrow-down" ></i>
                                            商品管理</a>

                                        <a href="#payment-method" ${attrs5} data-bs-toggle="tab"><i class="fa fa-credit-card"></i>
                                            Payment
                                            Method</a>

                                        <a href="#address-edit" ${attrs6} data-bs-toggle="tab"><i class="fa fa-map-marker"></i>
                                            address</a>

                                        <a href="<%=request.getContextPath()%>/front-end/compData/comp-login-register.jsp"><i class="fa fa-sign-out"></i> Logout</a>
                                    </div>
                                </div>
                                <!-- My Account Tab Menu End -->

                                <!-- My Account Tab Content Start -->
                                <div class="col-lg-9 col-12">
                                    <div class="tab-content" id="myaccountContent">
                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade ${classes1}" id="dashboad" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Dashboard</h3>

                                                <div class="welcome mb-20">
                                                    <p>Hello, <strong>Alex Tuntuni</strong> (If Not <strong>Tuntuni
                                                            !</strong><a href="login-register.html" class="logout">
                                                            Logout</a>)</p>
                                                </div>

                                                <p class="mb-0">From your account dashboard. you can easily check &amp;
                                                    view your
                                                    recent orders, manage your shipping and billing addresses and edit
                                                    your
                                                    password and account details.</p>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
												<!--  Order Details -->
                                        <div class="tab-pane fade ${classes2} " id="orders" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>訂單總覽</h3>

                                                <div class="myaccount-table table-responsive text-center">
                                                    <form action="<%=request.getContextPath()%>/secure/getAllOrders.controller" method="get">
                                                    <table class="table table-bordered">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th>訂單編號</th>
                                                                <th>產品編號</th>
                                                                <th>廠商編號</th>
                                                                <th>產品名稱</th>
                                                                <th>產品數量</th>
                                                                <th>價格</th>
                                                            </tr>
                                                        </thead>

                                                        	<c:forEach var="OrderDetail" items="${list}">
                                                        <tbody>
	                                                                <td>${OrderDetail.orderNo}</td>
	                                                                <td>${OrderDetail.prodNo}</td>
	                                                                <td>${OrderDetail.compNO}</td>
	                                                                <td>${OrderDetail.prodName}</td>
	                                                                <td>${OrderDetail.prodAmount}</td>
	                                                                <td>${OrderDetail.prodPrice}</td>
                                                        
                                                        </tbody>
                                                        	</c:forEach>
                                                       
                                                    </table>
                                                    
                                                    		<button name="getListByCompNo" class="getListByCompNo" type="submit">查詢
                                                    			<input name="getListByCompNo"type="hidden" value="getListByCompNo"></input>	
                                                    		</button>
                                                    	</form>
                                                   
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->
                                        
                                        
                                        
<!--                                         Single Tab Content Start -->
<!-- 												 Order Details -->
<%--                                         <div class="tab-pane fade ${classes3} " id="product-management" role="tabpanel"> --%>
<!--                                             <div class="myaccount-content"> -->
<!--                                                 <h3>訂單總覽</h3> -->

<!--                                                 <div class="myaccount-table table-responsive text-center"> -->
<%--                                                     <form action="<%=request.getContextPath()%>/secure/getAllOrders.controller" method="get"> --%>
<!--                                                     <table class="table table-bordered"> -->
<!--                                                         <thead class="thead-light"> -->
<!--                                                             <tr> -->
<!--                                                                 <th>訂單編號</th> -->
<!--                                                                 <th>產品編號</th> -->
<!--                                                                 <th>廠商編號</th> -->
<!--                                                                 <th>產品名稱</th> -->
<!--                                                                 <th>產品數量</th> -->
<!--                                                                 <th>價格</th> -->
<!--                                                             </tr> -->
<!--                                                         </thead> -->

<%--                                                         	<c:forEach var="OrderDetail" items="${list}"> --%>
<!--                                                         <tbody> -->
<%-- 	                                                                <td>${OrderDetail.orderNo}</td> --%>
<%-- 	                                                                <td>${OrderDetail.prodNo}</td> --%>
<%-- 	                                                                <td>${OrderDetail.compNO}</td> --%>
<%-- 	                                                                <td>${OrderDetail.prodName}</td> --%>
<%-- 	                                                                <td>${OrderDetail.prodAmount}</td> --%>
<%-- 	                                                                <td>${OrderDetail.prodPrice}</td> --%>
                                                        
<!--                                                         </tbody> -->
<%--                                                         	</c:forEach> --%>
                                                       
<!--                                                     </table> -->
                                                    
<!--                                                     		<button name="getListByCompNo" class="getListByCompNo" type="submit">查詢 -->
<!--                                                     			<input name="getListByCompNo"type="hidden" value="getListByCompNo"></input>	 -->
<!--                                                     		</button> -->
<!--                                                     	</form> -->
                                                   
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                         </div> -->
<!--                                         Single Tab Content End -->


                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade ${classes4}" id="payment-method" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Payment Method</h3>

                                                <p class="saved-message">You Can't Saved Your Payment Method yet.</p>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade ${classes5}" id="address-edit" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Billing Address</h3>

                                                <address>
                                                    <p><strong>Alex Tuntuni</strong></p>
                                                    <p>1355 Market St, Suite 900 <br>
                                                        San Francisco, CA 94103</p>
                                                    <p>Mobile: (123) 456-7890</p>
                                                </address>

                                                <a href="#" class="btn d-inline-block edit-address-btn"><i
                                                        class="fa fa-edit"></i>Edit Address</a>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade ${classes6}" id="account-info" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>帳戶資訊</h3>

                                                <div class="account-details-form">
                                                        <div class="row">
                                                        <form action = "<%=request.getContextPath()%>/secure/editProfile.controller" method="POST">
                                                        <h2>${EditPersonalProfileSucceed}</h2>
                                                        
	                                                            <div class="col-lg-6 col-12"> 公司名稱
	                                                                <input id="compName" placeholder="公司名稱" name="compName"
	                                                                    value="${compName}" type="text" disabled>
	                                                                    <span style="color: red;">${errors.compName}</span> <br>
	                                                            </div>
	
	                                                            <div class="col-lg-6 col-12"> 公司負責人
	                                                                <input id="chargePerson" placeholder="公司負責人" name="chargePerson"
	                                                                     value="${chargePerson}" type="text" disabled>
	                                                                      <span style="color: red;">${errors.chargePerson}</span>
	                                                            </div>
	                                                            
	                                                            <div class="col-12"> 電子郵件
	                                                                <input id="email" placeholder="電子郵件" name="email"
	                                                                     value="${email}" type="email" disabled>
	                                                                     <span style="color: red;">${errors.email}</span>
	                                                            </div>
	
	                                                           <div class="col-12"> 公司地址
	                                                                <input id="address" placeholder="公司地址" name="address"
	                                                                     value="${address}" type="text" disabled>
	                                                            </div>
	                                                            
	                                                           <div class="col-12"> 公司電話
	                                                                <input id="compPhone" placeholder="公司電話" name="compPhone"
	                                                                     value="${compPhone}" type="text" disabled>
	                                                            </div>
	                                                            
	                                                           <div class="col-12"> 公司統編
	                                                                <input id="compAccount" placeholder="公司統編" name="compAccount"
	                                                                     value="${compAccount}" type="text" disabled> 
	                                                            </div>
	                                                            
	                                                            <button type = "button" id="changePersonalProfile" class="save-change-btn"> 變更資料 </button>
	                                                            <button type = "submit" id="compAccountSubmit" class="save-change-btn"> 送出 </button>
														</form>
														<form action="<%=request.getContextPath()%>/secure/changePass.controller">
                                                            <div class="col-12 mb-2">
                                                                <h4>密碼變更</h4>
                                                                <span style="color: red;">${changePasswordSucceed}</span>
                                                            </div>

                                                            <div class="col-12">
                                                                <input id="oldPass" placeholder="目前密碼" name="oldPass"
                                                                    type="password">
                                                                  <span style="color: red;">${errors.oldPass}</span>  
                                                            </div>

                                                            <div class="col-lg-6 col-12">
                                                                <input id="newPass" placeholder="新密碼" name="newPass"
                                                                    type="password">
                                                                    <span style="color: red;">${errors.newPass}</span>
                                                            </div>

                                                            <div class="col-lg-6 col-12">
                                                                <input id="confirm" placeholder="確認密碼" name="confirm"
                                                                    type="password">
                                                                    <span style="color: red;">${errors.samePass}</span>
                                                            </div>

                                                            <div class="col-12">
                                                                <button class="save-change-btn">送出</button>
                                                            </div>

                                                        </div>
                                                    </form>
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
						<div
							class="footer-copyright-wrapper footer-copyright-wrapper--default-footer">
							<div class="container">
								<div class="row align-items-center no-gutters">
									<div class="col-lg-2 col-md-2">
										<div class="footer-logo">
											<a href="#"><img width="93" height="25"
												src="<%=request.getContextPath()%>/assets/img/logo.webp"
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
						<li class="menu-item-has-children"><a href="#">會員登入</a>
							<ul class="sub-menu">
								<li><a href="login-register.html">Register</a></li>
								<li><a href="login-register.html">Login</a></li>

							</ul></li>
						<li class="menu-item-has-children"><a href="#">廠商登入</a>
							<ul class="sub-menu">
								<li><a href="login-register.html">Register</a></li>
								<li><a href="login-register.html">Login</a></li>

							</ul></li>


					</ul>
				</nav>

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
	<!--====================  quick view ====================-->

	<div class="modal fade quick-view-modal-container"
		id="quick-view-modal-container" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
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

											<div
												class="product-details-big-image-slider-wrapper-quick product-details-big-image-slider-wrapper--bottom-space ht-slick-slider"
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
            }'
												data-slick-responsive='[
                {"breakpoint":1501, "settings": {"slidesToShow": 1, "arrows": false} },
                {"breakpoint":1199, "settings": {"slidesToShow": 1, "arrows": false} },
                {"breakpoint":991, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} },
                {"breakpoint":767, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} },
                {"breakpoint":575, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} },
                {"breakpoint":479, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} }
            ]'>
												<div class="single-image">
													<img width="600" height="800"
														src="<%=request.getContextPath()%>/assets/img/products/big1-1.webp"
														class="img-fluid" alt="">
												</div>
												<div class="single-image">
													<img width="600" height="800"
														src="<%=request.getContextPath()%>/assets/img/products/big1-2.webp"
														class="img-fluid" alt="">
												</div>
												<div class="single-image">
													<img width="600" height="800"
														src="<%=request.getContextPath()%>/assets/img/products/big1-3.webp"
														class="img-fluid" alt="">
												</div>
												<div class="single-image">
													<img width="600" height="800"
														src="<%=request.getContextPath()%>/assets/img/products/big1-4.webp"
														class="img-fluid" alt="">
												</div>
												<div class="single-image">
													<img width="600" height="800"
														src="<%=request.getContextPath()%>/assets/img/products/big1-5.webp"
														class="img-fluid" alt="">
												</div>
											</div>
										</div>


										<div
											class="product-details-small-image-slider-wrapper product-details-small-image-slider-wrapper--horizontal-space ht-slick-slider"
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
        }'
											data-slick-responsive='[
            {"breakpoint":1501, "settings": {"slidesToShow": 3, "arrows": false} },
            {"breakpoint":1199, "settings": {"slidesToShow": 3, "arrows": false} },
            {"breakpoint":991, "settings": {"slidesToShow": 5, "arrows": false, "slidesToScroll": 1} },
            {"breakpoint":767, "settings": {"slidesToShow": 3, "arrows": false, "slidesToScroll": 1} },
            {"breakpoint":575, "settings": {"slidesToShow": 3, "arrows": false, "slidesToScroll": 1} },
            {"breakpoint":479, "settings": {"slidesToShow": 2, "arrows": false, "slidesToScroll": 1} }
        ]'>
											<div class="single-image">
												<img width="600" height="800"
													src="<%=request.getContextPath()%>/assets/img/products/big1-1.webp"
													class="img-fluid" alt="">
											</div>
											<div class="single-image">
												<img width="600" height="800"
													src="<%=request.getContextPath()%>/assets/img/products/big1-2.webp"
													class="img-fluid" alt="">
											</div>
											<div class="single-image">
												<img width="600" height="800"
													src="<%=request.getContextPath()%>/assets/img/products/big1-3.webp"
													class="img-fluid" alt="">
											</div>
											<div class="single-image">
												<img width="600" height="800"
													src="<%=request.getContextPath()%>/assets/img/products/big1-4.webp"
													class="img-fluid" alt="">
											</div>
											<div class="single-image">
												<img width="600" height="800"
													src="<%=request.getContextPath()%>/assets/img/products/big1-5.webp"
													class="img-fluid" alt="">
											</div>
										</div>
									</div>

									<!--=======  End of product details slider area  =======-->
								</div>
								<div class="col-xl-7 col-lg-6">
									<!--=======  single product content description  =======-->
									<div class="single-product-content-description">
										<p class="single-info">
											Brands <a href="shop-left-sidebar.html">Dolor</a>
										</p>
										<h4 class="product-title">Lorem ipsum dolor set amet
											decor</h4>
										<div class="product-rating">
											<span class="rating"> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star active"></i> <i
												class="ion-android-star-outline"></i>
											</span> <span class="review-count"> <a href="#">(2
													reviews)</a> | <a href="#">Write A Review</a>
											</span>
										</div>

										<p class="single-grid-product__price">
											<span class="discounted-price">$100.00</span> <span
												class="main-price discounted">$120.00</span>
										</p>

										<p class="single-info">
											Product Code: <span class="value">CODE123</span>
										</p>
										<p class="single-info">
											Reward Points: <span class="value">200</span>
										</p>
										<p class="single-info">
											Availability: <span class="value">In Stock</span>
										</p>

										<p class="product-description">Lorem ipsum dolor sit amet
											consectetur adipisicing elit. At, delectus. Voluptates omnis
											distinctio vitae quo quia veniam minima dolorem hic
											necessitatibus pariatur, quae fuga similique optio laboriosam
											assumenda voluptatum aperiam.</p>

										<div class="product-actions product-actions--quick-view">
											<div class="quantity-selection">
												<label>Qty</label> <input type="number" value="1" min="1">
											</div>

											<div class="product-buttons">
												<a class="cart-btn" href="#"> <i class="ion-bag"></i>
													ADD TO CART
												</a> <span class="wishlist-compare-btn"> <a> <i
														class="ion-heart"></i></a> <a> <i
														class="ion-android-options"></i></a>
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
		<span>Back to top</span><i class="ion-chevron-right"></i><i
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

	<script src="<%=request.getContextPath()%>/assets/js/company.js"></script>


	<!--=====  End of JS files ======-->

</body>

</html>