<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, web.cart.entity.CartVO" %>


<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>會員中心 | 龘虤</title>
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

<!-- BookStrap 連結-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Vendor CSS -->
<link href="<%=request.getContextPath()%>/assets/css/vendors.css"
	rel="stylesheet">
<!-- Main CSS -->
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/member.css">

<!-- JQuery 連結-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,300;0,400;0,600;1,300&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/chat.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/chatStyle.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/typing.css">

<style>
.breadcrumb-bg {
	background-image:
		url("<%=request.getContextPath()%>/assets/img/hero-slider/test4.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
}

.account-details-form h4 {
	margin-top: 30px;
	margin-bottom: 15px;
}

.account-details-form input {
	margin-bottom: 23px;
	line-height: 16px;
	margin-top: 7px;
	 border-radius:5px; 
	 border:1px solid #ccc; 
	 padding: 9px 25px;
	 color: black;
}

.select_style{
margin-top: 7px;
  width:100%; 
  height:36px; 
  overflow:hidden;
  border:1px solid #ccc; 
  -moz-border-radius:5px; /* Gecko browsers */ 
  -webkit-border-radius:5px; /* Webkit browsers */ 
  border-radius:5px; 
  
} 

.select_style select{ 
  padding: 0px 25px;
  background:transparent; 
  width:100%; 
  font-size:14px; 
  border:none; 
  height:36px; 
  -webkit-appearance:none; /*for Webkit browsers*/ 
} 

#verifying {
	color:orangered;
	/* display: inline; */
}

.save-change-btn{
	margin-top: 5px;
}

.profile-wrap{
	margin-bottom: 7px;
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
                                           <li> <a href="${pageContext.request.contextPath}/CartServlet.controller?action=ViewCart">購物車</a></li>
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
                                    <div class="header-cart-icon">
                                        <a href="#" id="minicart-trigger">
                                            <i class="ion-bag"></i>
                                            <span class="counter">${buyListCount}</span>
                                        </a>
                                        <!-- mini cart  -->
                                        
                                        <div class="mini-cart" id="mini-cart">
                                            <div class="cart-items-wrapper ps-scroll">
                                        <%
                                        	Vector<CartVO> buyList = (Vector<CartVO>) session.getAttribute("myCart");
                                        %>
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
                                                <a href="${pageContext.request.contextPath}/CartServlet.controller?action=ViewCart">檢視購物車</a>
                                                <a href="${pageContext.request.contextPath}/CartServlet.controller?action=CheckOut">結帳</a>
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
										<a href="#dashboad" ${active1} data-bs-toggle="tab"><i
											class="fa fa-dashboard"></i> 會員中心</a> <a href="#orders"
											${active2} data-bs-toggle="tab"><i
											class="fa fa-cart-arrow-down"></i> 訂單查詢</a> 
											<a id="tower" href="#tower" ${active3} data-bs-toggle="tab"><i class="fa fa-calendar"></i>塔位資訊</a> 
											<a href="#account-info" ${active4}
											data-bs-toggle="tab"><i class="fa fa-user"></i> 修改個人資料</a> <a
											href="#payment-method" ${active5} data-bs-toggle="tab"><i
											class="fa fa-credit-card"></i> 付款方式</a> <a href="#address-edit"
											${active6} data-bs-toggle="tab"><i
											class="fa fa-map-marker"></i> 地址</a>
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
										<div class="tab-pane fade ${showactive1}" id="dashboad"
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
										<div class="tab-pane fade ${showactive2}" id="orders"
											role="tabpanel">
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
										   <div class="tab-pane fade ${showactive3}" id="tower"
											role="tabpanel">
											<div class="myaccount-content">
											  <form id="selectTower"action="<%=request.getContextPath() %>/towerforuser.controller" method="POST">
												
												<table class="table table-bordered">
														<thead class="thead-light">
															<tr>
																<th>塔位編號</th>
																<th>使用者編號</th>
																<th>往者姓名</th>
															</tr>																
														</thead>
														<c:forEach var="TowerVO" items="${TowerVO}">
														<tbody>
															<tr>
																<td>${TowerVO.towerNo}</td>
																<td>${TowerVO.userNo}</td>
																<td>${TowerVO.deadName}</td>
																
															</tr>
															
														</tbody>
														</c:forEach>
													
													</table>
													
												</form>
											</div>
											
										</div>
										<!-- Single Tab Content End -->

										<!-- Single Tab Content Start -->
										<div class="tab-pane fade ${showactive5}" id="payment-method"
											role="tabpanel">
											<div class="myaccount-content">
												<h3>Payment Method</h3>

												<p class="saved-message">You Can't Saved Your Payment
													Method yet.</p>
											</div>
										</div>
										<!-- Single Tab Content End -->

										<!-- Single Tab Content Start -->
										<div class="tab-pane fade ${showactive6}" id="address-edit"
											role="tabpanel">
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
										<div class="tab-pane fade ${showactive4}" id="account-info"
											role="tabpanel">
											<h5><span style="color: red">${errors.action}</span></h5>
											<c:if test="${not empty change}">
												<h5><span style="font-size: 20px; font-weight: 650;">密碼更新成功!</span></h5>
											</c:if>
											<c:if test="${not empty edit}">
												<h5><span style="font-size: 20px; font-weight: 650;">資料更新成功!</span></h5>
											</c:if>
											<div class="myaccount-content">
												<h3>個人基本資料</h3>

												<div class="profile-wrap">
													<div class="row">
														<div class="col-md-8 offset-md-2 py-4">
															<div class="edit-profile-photo text-center">
				
																<div id="changePicBox">
																	<img class="picBox" alt="" 
																		src="<%=request.getContextPath()%>/readerimg.controller?userno=${user.userno}" width="200">
																</div>
																<!-- <button type="button" class="btn btn-primary">點擊</button>
																<div class="change-photo-btn">
																	<a href="#" data-toggle="modal" data-target="#avatar" class="rate-review"><i class="ion-log-in"></i>變更圖片</a> -->
																	<!-- modal-start -->
																	<!-- <div class="modal " id="avatar">
																		<div class="modal-dialog modal-dialog-centered"
																			role="image">
																			<div class="picBox"> 
																			
																				<div>
																					<div id="changePic">
																						<label for="p_file"> <img
																							src="<%=request.getContextPath()%>/readerimg.controller?userno=${user.userno}" width="200">
																						</label>
																					</div>
																				</div> -->



																				
																				<div>
																					<div class="contact-form__upload-btn xs-left">
																						<FORM METHOD="post" enctype="multipart/form-data"
																							ACTION="<%=request.getContextPath()%>/uploadimg.controller">
																							
																							<input type="file" id="p_file" name="photoupload" > 
																							
																								<!-- style="display: none;" -->
																							<input type="hidden" name="userno" value="${user.userno}">
																							<input type="submit" name="action" value="確認">
																						</FORM>
																					</div>
																				</div>
																		
																				
<!-- 
																			</div>
																		</div>
																	</div> -->
																	<!-- modal-ends -->




															</div>
														</div>
													</div>
												</div>
												




												<div class="account-details-form">
													<form id="verifyForm"
														action="<%=request.getContextPath()%>/verify-email.controller"
														method="post">
														<c:if test="${user.verifystatus.equals('未驗證')}">
															<div class="row">	
																<div class="col-md-6">
																	<p id="verifying" class="mb-0">
																		您的email尚未驗證，是否現在驗證？</p>
																	<div class="col-12">
																		<button type="submit"
																			class="save-change-btn">取得驗證碼</button>
																	</div>
																</div>
															</div>
														</c:if>
																
													</form>
													<br>
													<br>


													<form action="<c:url value="/edit.controller" />"
														method="post">
														<div class="row">
															<div class="col-md-6">
																<label>帳號</label> <input name="useraccount" type="text"
																	value="${user.useraccount}" disabled>
															</div>
															<div class="col-md-6">
																<label>姓名</label> <input name="username" type="text"
																	value="${user.username}">
															</div>
															<div class="col-md-6">
																<label>手機</label> <span style="color: red">${errors.phone}</span><input
																	name="phone" type="tel" value="${user.phone}"
																	maxlength="10">
															</div>
															<div class="col-md-6">
																<label>信箱</label> <span style="color: red">${errors.email}</span><input
																	name="email" type="email" value="${user.email}">
															</div>
															<div class="col-md-12">
																<label>地址</label> <input name="address" type="text"
																	value="${user.address}">
															</div>
															<div class="col-lg-6 col-12">
																<label>性別</label> 
																<!-- <input name="gender" type="text"
																	value="${user.gender}"> -->
																	<div class="select_style">
																	<select name="gender">
																		<option selected disabled>${user.gender}</option>
																		<option >男</option>
																		<option >女</option>
																	</select>
																</div>
															</div>

															<div class="col-lg-6 col-12">
																<label>生日</label> <span style="color: red">${errors.birthday}</span><input
																	name="birthday" id="f_date1" type="text"
																	value="<fmt:formatDate value="${user.birthday}" pattern="yyyy/MM/dd"/>
																	">
															</div>
															<div class="col-12">
																<input type="hidden" name="action" value="edit">
																<button type="submit" class="register-button">修改個人資料</button>

															</div>
														</div>
													</form>


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
																	name="newpwd" placeholder="請設定6-15位英數字密碼"
																	type="password">
															</div>

															<div class="col-lg-6 col-12">
																<label>確認密碼</label> <span style="color: red">${errors.confirmpwd}</span><input
																	name="confirmpwd" type="password">
															</div>

															<div class="col-12">
																<input type="hidden" name="action" value="changepwd">
																<button type="submit" class="register-button">修改密碼</button>
															</div>
														</div>
													</form>
												</div>

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
	
	<!--====================  End of newsletter area  ====================-->
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
    <!--=======  offcanvas mobile menu  =======-->

    <div class="offcanvas-mobile-menu" id="offcanvas-mobile-menu">
        <a href="javascript:void(0)" class="offcanvas-menu-close" id="offcanvas-menu-close-trigger">
            <i class="ion-android-close"></i>
        </a>

        <div class="offcanvas-wrapper">

            <div class="offcanvas-inner-content">
                <nav class="offcanvas-navigation">
                    <ul>
                       <li class="menu-item-has-children"><a href="#">祭祖商城</a>
                                        <ul class="sub-menu">
                                             <li><a href="${pageContext.request.contextPath}/AllProductServlet.controller?action=selectAll">商品總覽</a></li>
                                           <li> <a href="${pageContext.request.contextPath}/CartServlet.controller?action=ViewCart">購物車</a></li>
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

                <div class="offcanvas-settings">
                    <nav class="offcanvas-navigation">
                        <ul>
                            <li class="menu-item-has-children"><a href="#">會員登入 </a>
                                <ul class="sub-menu">
                                    <li><a href="<%=request.getContextPath()%>/front-end/memberData/login-register-member.jsp">註冊/登入</a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children"><a href="#">廠商登入 </a>
                                <ul class="sub-menu">
                                    <li><a href="<%=request.getContextPath()%>/front-end/compData/comp-login-register.jsp">註冊/登入</a></li>
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
	<script src="<%=request.getContextPath()%>/assets/js/vendors.js"></script>

	<!-- Active JS -->
	<script src="<%=request.getContextPath()%>/assets/js/active.js"></script>

	<script src="<%=request.getContextPath()%>/assets/js/member.js"></script>
 
    <script src="<%=request.getContextPath()%>/assets/js/tower.js"></script>
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
		value : '${user.birthday}', // value:   new Date(),
	//disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // 去除特定不含
	//startDate:	            '2017/07/10',  // 起始日
	//minDate:               '-1970-01-01', // 去除今日(不含)之前
	//maxDate:               '+1970-01-01'  // 去除今日(不含)之後
	});
</script>

</html>