<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, web.cart.entity.CartVO" %>
<!DOCTYPE html>
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

    <!-- JQuery 連結-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,300;0,400;0,600;1,300&display=swap"
            rel="stylesheet">

    <%-- 聊天室 --%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/chat.css">


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
									<a href="<%=request.getContextPath()%>/front-end/index.html"> <img width="93" height="25"
										src="<%=request.getContextPath()%>/assets/img/logo_v1.jpg" class="img-fluid" alt="">
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

                                <div class="col-lg-12">
                                    <div class="about-top-content-wrapper">
                                        <div class="row row-30">
                                            <!-- About Image -->
                                            <div class="col-lg-6">
                                                <div class="about-image">
                                                    <img width="570" height="319"
                                                        src="<%=request.getContextPath()%>/assets/img/banners/img2-middle-eposi1.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                            </div>

                                            <!-- About Content -->
                                            <div class="about-content col-lg-6">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <h1>歡迎蒞臨<span>龘虤</span></h1>
                                                        <p class="mb-3">
                                                            新冠病毒肆虐全球2年,
                                                            一場突如其來的疫情,
                                                            給我們的生活帶來了許多變化…
                                                            
                                                            我們發現以往習慣的祭祖模式必須有些替代方案,
                                                            為了讓祖先們感受到我們無遠弗屆的孝心,
                                                            因此想到了藉由線上方式為祖先進行盛大的祭祖活動!
                                                            </p>
                                                    </div>

                                                    <div class="col-12">
                                                        <h4>龘虤理念</h4>
                                                        <p>龘虤以始終秉持著「不只要做到第一，更要成為唯一」的精神帶領生命產業改革與創新。</p>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>

                            <div class="row row-10">

                                <!-- Banner -->
                                <div class="col-md-4">
                                    <div class="single-banner">
                                        <a href="#"><img width="550" height="260" src="<%=request.getContextPath()%>/assets/img/banners/04.jpg"
                                                class="img-fluid" alt="Banner"></a>
                                    </div>
                                </div>
                                <div class="col-md-4 col-12">
                                    <div class="single-banner">
                                        <a href="#"><img width="550" height="260" src="<%=request.getContextPath()%>/assets/img/banners/07.jpg"
                                                class="img-fluid" alt="Banner"></a>
                                    </div>
                                </div>
                                <div class="col-md-4 col-12">
                                    <div class="single-banner">
                                        <a href="#"><img width="550" height="260" src="<%=request.getContextPath()%>/assets/img/banners/113.jpg"
                                                class="img-fluid" alt="Banner"></a>
                                    </div>

                                </div>

                            </div>

                            <!-- Mission, Vission & Goal -->
                            <div class="about-mission-vission-goal row row-20">

                                <div class="col-lg-4 col-md-4 col-12">
                                    <h3>劉淯誠</h3>
                                    <p>
									<b>➤前置規劃</b><br>
									網站地圖、流程規劃、wireframe繪製
									ER-MODEL規劃與建置、MYSQL資料庫表格建置及整合<br>
									<b>➤網頁及功能</b><br>
									前台 (廠商) :<br>
									● 登入 / Filter /忘記密碼 / 記住我<br>
									● 註冊/密碼加密/驗證信 <br>
									● 公司資訊變更/修改密碼/產品銷售圖表<br>
									● 訂單明細查詢/商品上架/下架<br>
									後台 :<br>
									● 廠商查詢<br>
									● 商品查詢<br>
									<b>➤整合</b><br>
									專案及MySQL資料庫 / 簡報製作/
									GCP環境建置
									</p>
                                </div>

                                <div class="col-lg-4 col-md-4 col-12">
                                    <h3>王晟峻</h3>
                                    <p>
                                    <b>➤前置規劃</b><br>
									網站地圖、流程規劃、wireframe繪製
									ER-MODEL規劃與建置、MYSQL資料庫表格建置及整合<br>
									<b>➤網頁及功能</b><br>
									前台 :<br>
									● 客服小天使(線上一對一聊天)/客服中心<br>
									● 關於我們/常見問題<br>
									後台 :<br>
									● 客服表單回覆<br>
									● 後台功能管理/管理員新增.刪除/權限設定/修改密碼<br>
									● 後台整合<br>
									<b>➤整合</b><br>
									專案及MySQL資料庫<br> 
									<b>➤技術指導</b></p>
                                </div>

                                <div class="col-lg-4 col-md-4 col-12">
                                    <h3>翁翊淇</h3>
                                    <p>
                                    <b>➤前置規劃</b><br>
										網站地圖、流程規劃、wireframe繪製
										ER-MODEL規劃與建置、MYSQL資料庫表格建置及整合<br>
										<b>➤網頁及功能</b><br>
										前台 (會員) :<br>
										● 首頁  / header footer<br>
										● 法會直播<br>
										● 法會預約/查詢/修改/刪除<br>
										● 會員塔位查詢<br>
										後台 :<br>
										● 塔位新增/查詢<br>
										<b>➤整合</b><br>
										專案及MySQL資料庫
                                    </p>
                                </div>

                            </div>

                            < <div class="row row-10">

                                <!-- Banner -->
                                <div class="col-md-4">
                                    <div class="single-banner">
                                        <a href="#"><img width="550" height="260" src="<%=request.getContextPath()%>/assets/img/banners/14.jpg"
                                                class="img-fluid" alt="Banner"></a>
                                    </div>
                                </div>
                                <div class="col-md-4 col-12">
                                    <div class="single-banner">
                                        <a href="#"><img width="550" height="260" src="<%=request.getContextPath()%>/assets/img/banners/21.jpg"
                                                class="img-fluid" alt="Banner"></a>
                                    </div>
                                </div>
                                <div class="col-md-4 col-12">
                                    <div class="single-banner">
                                        <a href="#"><img width="550" height="260" src="<%=request.getContextPath()%>/assets/img/banners/202.jpg"
                                                class="img-fluid" alt="Banner"></a>
                                    </div>

                                </div>

                            </div>

                            <!-- Mission, Vission & Goal -->
                            <div class="about-mission-vission-goal row row-20">

                                <div class="col-lg-4 col-md-4 col-12">
                                    <h3>廖郁涵</h3>
                                    <p> <b>➤前置規劃</b><br>
									網站地圖、流程規劃、wireframe繪製
									ER-MODEL規劃與建置、MYSQL資料庫表格建置及整合<br>
									<b>➤網頁及功能</b><br>
									前台 (會員) :<br>
									● 主視覺 /會員中心<br>
									● 登入 / Filter /忘記密碼 / 記住我<br>
									● 註冊/密碼加密/驗證信<br> 
									● 更換大頭貼/更新個人資料/修改密碼<br>
									後台 :<br>
									● 會員管理查詢<br>
									● 管理員登入<br>
									<b>➤整合</b><br>
									專案及MySQL資料庫 / 簡報製作
									</p>
                                </div>

                                <div class="col-lg-4 col-md-4 col-12">
                                    <h3>黃琳鈺</h3>
                                    <p><b>➤前置規劃</b><br>
										網站地圖、流程規劃、wireframe繪製
										ER-MODEL規劃與建置、MYSQL資料庫表格建置及整合<br>
										<b>➤網頁及功能</b><br>
										前台 :<br>
										● 商品新增/修改<br>
										● 結帳<br>
										● 訂單查詢<br>
										<b>➤整合</b><br>
										專案及MySQL資料庫</p>
                                </div>

                                <div class="col-lg-4 col-md-4 col-12">
                                    <h3>廖于瑩</h3>
                                     <p><b>➤前置規劃</b><br>
										網站地圖、流程規劃、wireframe繪製
										ER-MODEL規劃與建置、MYSQL資料庫表格建置及整合<br>
										<b>➤網頁及功能</b><br>
										前台 :<br>
										● 商品總覽/商品分類查詢<br>
										● 購物車<br>
										後台 :<br>
										● 訂單管理<br>
										<b>➤整合</b><br>
										專案及MySQL資料庫</p>
                                </div>

                            </div>

                            <div class="row">

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

</html>