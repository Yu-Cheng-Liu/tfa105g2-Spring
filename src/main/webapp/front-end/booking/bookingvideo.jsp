<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Eposi - Multipurpose eCommerce Bootstrap5 Template</title>
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/chat.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/chatStyle.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/typing.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/booking.css">


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
                                <img width="150" height="50" src="<%=request.getContextPath()%>/assets/img/logo_v1.jpg" class="img-fluid" alt="">
                            </a>
                        </div>
                        <!-- menu wrapper -->
                        <div class="navigation-menu-wrapper">
                            <nav>
                                <ul>
                                    <li class="menu-item-has-children"><a href="#">祭祖商城</a>
                                        <ul class="sub-menu">
                                            <li><a href="${pageContext.request.contextPath}/AllProductServlet?action=selectAll">商品總覽</a></li>
                                            <li><a href="cart.jsp">購物車</a></li>
                                        </ul>
                                    </li>

                                    <li class="menu-item-has-children"><a href="#">法會直播</a>
                                        <ul class="sub-menu">
                                           <li><a href="<%=request.getContextPath()%>/front-end/booking/bookingvideo.jsppost-video-format.jsp">法會直播</a></li>
                                            
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
                                            <span class="counter">3</span>
                                        </a>
                                        <!-- mini cart  -->
                                        <div class="mini-cart" id="mini-cart">
                                            <div class="cart-items-wrapper ps-scroll">
                                                <div class="single-cart-item">
                                                    <a href="javascript:void(0)" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    <div class="image">
                                                        <a href="single-product.jsp">
                                                            <img width="80" height="106"
                                                                src="<%=request.getContextPath()%>/assets/img/products/product-1-80x106.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p class="product-title"><a href="single-product.jsp">Cillum
                                                                dolore furniture</a></p>
                                                        <p class="count"><span>1 x </span> $402</p>
                                                    </div>
                                                </div>
                                                <div class="single-cart-item">
                                                    <a href="javascript:void(0)" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    <div class="image">
                                                        <a href="single-product.jsp">
                                                            <img width="80" height="106"
                                                                src="<%=request.getContextPath()%>/assets/img/products/product-2-80x106.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p class="product-title"><a href="single-product.jsp">Lorem
                                                                ipsum furniture</a></p>
                                                        <p class="count"><span>1 x </span> $500</p>
                                                    </div>
                                                </div>
                                                <div class="single-cart-item">
                                                    <a href="javascript:void(0)" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    <div class="image">
                                                        <a href="single-product.jsp">
                                                            <img width="80" height="106"
                                                                src="<%=request.getContextPath()%>/assets/img/products/product-3-80x106.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p class="product-title"><a href="single-product.jsp">Cillum
                                                                dolore tool</a></p>
                                                        <p class="count"><span>1 x </span> $607</p>
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
                                                <a href="cart.jsp">VIEW CART</a>
                                                <a href="checkout.jsp">CHECKOUT</a>
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
                                    <a href="index.html">
                                        <img width="93" height="25" src="<%=request.getContextPath()%>/assets/img/logo.webp" class="img-fluid" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-6 col-md-6">
                                <div class="mobile-navigation text-end">
                                    <div class="header-icon-wrapper">
                                        <ul class="icon-list justify-content-end">
                                            <li>
                                                <div class="header-cart-icon">
                                                    <a href="cart.html">
                                                        <i class="ion-bag"></i>
                                                        <span class="counter">3</span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)" class="mobile-menu-icon"
                                                    id="mobile-menu-trigger"><i class="fa fa-bars"></i></a>
                                            </li>
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
                            <h2 class="breadcrumb-content__title">Blog Post</h2>
                            <ul class="breadcrumb-content__page-map">
                                <li><a href="index.html">Home</a></li>
                                <li class="active">Blog Post</li>
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
    
                    <!--=======  page wrapper  =======-->
                    
                                    <!--=======  page sidebar wrapper =======-->
                                    
                                        <!--=======  End of single sidebar widget  =======-->

                                        <!--=======  single sidebar widget  =======-->
                                       

                                            <!--=======  block container  =======-->


                                                <!--=======  single block  =======-->

                                                

                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->


                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->

                                             
                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->

                                               
                                                <!--=======  End of single block  =======-->


                                            <!--=======  End of block container  =======-->
                           
                                        <!--=======  End of single sidebar widget  =======-->

                                        <!--=======  single sidebar widget  =======-->
                                        

                                            <!--=======  block container  =======-->

                                       

                                                <!--=======  single block  =======-->


                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->

                                               

                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->

                                             

                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->

                                               

                                                <!--=======  End of single block  =======-->

                                           

                                            <!--=======  End of block container  =======-->
                                        
                                        <!--=======  End of single sidebar widget  =======-->



                                        <!--=======  single sidebar widget  =======-->
                                       
                                        <!--=======  End of single sidebar widget  =======-->
                                    
                                    <!--=======  End of page sidebar wrapper  =======-->
                                
                                    <!--=======  blog page content  =======-->
                                    
                                        <!--=======  blog post container  =======-->

                                       

                                            <!--=======  post title  =======-->


                                            <h1 class="post-title"style="text-align:center;">法會直播</h1>

                                            <!--=======  End of post title  =======-->


                                            <!--=======  Post meta  =======-->
                                            <div class="post-meta" style="text-align: center;">
                                                <p><span><i class="fa fa-user-circle"></i> Posted By: </span> <a
                                                        href="#">admin</a> <span class="separator">|</span> <span><i
                                                            class="fa fa-calendar"></i> Posted On: <a href="#">24
                                                            March, 2022</a></span></p>
                                            </div>

                                            <!--=======  End of Post meta  =======-->

                                            <!--=======  Post media  =======-->
                                            <div id = "buabuayAndStreaming">
                                                <div class="single-blog-post-media" style="text-align: center;" >
                                                    <div class="video" id="streaming">
                                                        <iframe width="699" height="393" src="https://www.youtube.com/embed/HVfua9eU1SA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                                    </div>
                                                    
                                                    <div id="buabuay" style="text-align: right;">
                                                    	<h3>擲筊祈福</h3>
                                                	<div id="bbans">
                                                    	<label id="bbname"></label>
                                                    	<img id="bb"  width="150" height="150">   
                                                	</div>
                                                
                                                    	<img src="<%=request.getContextPath()%>/assets/img/baibai/wish.gif" width="150" height="150" id="bbgif">
                                                    <button id="bbBtn" >擲筊</button>
                                                </div>
                                                </div>
                                                
                                            </div>
                                            <!--=======  End of Post media  =======-->

                                            <!--=======  Post content  =======-->


                                            <!--=======  End of Post content  =======-->
                                            <!-- <h3>擲筊祈福</h3> -->
                                            <!--=======  Tags area  =======-->

                                            <!-- <div id="bbans">
                                                <label id="bbname"></label>
                                                <img id="bb"  width="150" height="150">   
                                              </div>
                                             
                                              <img src="<%=request.getContextPath()%>/assets/img/baibai/wish.gif" width="150" height="150" id="bbgif">
                                              <button id="bbBtn" >擲筊</button> -->

                                            <!--=======  End of Tags area  =======-->


                                            <!--=======  Share post area  =======-->

                                      
                                            <!--=====  End of Share post area  ======-->

                                            <!--=======  related post  =======-->

                                     
                                                        <!--=======  single related post  =======-->


                                                        <!--=======  End of single related post  =======-->
                                                    
                                                        <!--=======  single related post  =======-->

                                                    
                                                        

                                                        <!--=======  End of single related post  =======-->
                                                 
                                                        <!--=======  single related post  =======-->

                                                       
                                                        <!--=======  End of single related post  =======-->
                                              

                                            <!--=======  End of related post  =======-->

                                   

                                        <!--=======  End of blog post container  =======-->

                                        <!--=============================================
                        =            Comment section         =
                        =============================================-->

                                      

                                                <!--=======  End of single comment  =======-->

                                                <!--=======  single reply comment  =======-->


                                                <!--=======  End of single reply comment  =======-->

                                                <!--=======  single comment  =======-->

                                                

                                                <!--=======  End of single comment  =======-->



                                           
                                            <!--=======  End of comment container  =======-->

                                            <!--=======  comment form container  =======-->


                                                <!--=======  comment form  =======-->

                                                
                                                <!--=======  End of comment form  =======-->
                                            

                                            <!--=======  End of comment form container  =======-->

                                        


                                        <!--=====  End of Comment section  ======-->
                                    
                                    <!--=======  End of blog page content  =======-->
                                
                
                    <!--=======  End of page wrapper  =======-->
   
    <!--====================  End of page content area  ====================-->
    <!--====================  newsletter area ====================-->
    
    <!--====================  End of newsletter area  ====================-->
    <!--====================  footer area ====================-->
     <div class="footer-area">
        <div class="footer-copyright">
            <div class="container wide">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-copyright-wrapper footer-copyright-wrapper--default-footer">
                            <div class="container">
                                <div class="row align-items-center no-gutters">
                                    <div class="col-lg-2 col-md-2">
                                        <div class="footer-logo">
                                            <a href="#"><img width="100" height="50" src="<%=request.getContextPath()%>/assets/img/logo_v1.jpg"
                                                    class="img-fluid" alt=""></a>
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-5">

                                        <div class="copyright-text">

                                            Copyright &copy; 2021 <a href="#">Eposi</a>. All Rights Reserved.
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
                        <li class="menu-item-has-children"><a href="index.html">祭祖商城</a>
                            <ul class="sub-menu">
                                <li><a href="shop-list-left-sidebar.jsp">商品總攬</a></li>
                                <li><a href="cart.jsp">購物車</a></li>
                            </ul>
                        </li>

                        <li class="menu-item-has-children"><a href="#">預約服務</a>
                            <ul class="sub-menu">
                                <li><a href="blog-post-video-format.jsp">法會直播</a></li>
                                <li><a href="<%=request.getContextPath()%>/front-end/booking/booking.jsp">預約祭祀</a></li>
                                <li><a href="menu-item-has-children">線上祭祀</a></li>
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
        <a href="javascript:void(0)" class="close-search-overlay" id="close-search-overlay">
            <i class="ion-ios-close-empty"></i>
        </a>

        <!--=======  search form  =======-->

        <div class="search-form">
            <form action="#">
                <input type="search" placeholder="Search entire store here ...">
                <button type="submit"><i class="ion-android-search"></i></button>
            </form>
        </div>

        <!--=======  End of search form  =======-->
    </div>

    <!--====================  End of search overlay  ====================-->
    <!--====================  quick view ====================-->

    <div class="modal fade quick-view-modal-container" id="quick-view-modal-container" tabindex="-1" role="dialog"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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

                                            <div class="product-details-big-image-slider-wrapper-quick product-details-big-image-slider-wrapper--bottom-space ht-slick-slider"
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
            }' data-slick-responsive='[
                {"breakpoint":1501, "settings": {"slidesToShow": 1, "arrows": false} },
                {"breakpoint":1199, "settings": {"slidesToShow": 1, "arrows": false} },
                {"breakpoint":991, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} },
                {"breakpoint":767, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} },
                {"breakpoint":575, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} },
                {"breakpoint":479, "settings": {"slidesToShow": 1, "arrows": false, "slidesToScroll": 1} }
            ]'>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-1.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-2.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-3.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-4.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                                <div class="single-image">
                                                    <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-5.webp"
                                                        class="img-fluid" alt="">
                                                </div>
                                            </div>
                                        </div>


                                        <div class="product-details-small-image-slider-wrapper product-details-small-image-slider-wrapper--horizontal-space ht-slick-slider"
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
        }' data-slick-responsive='[
            {"breakpoint":1501, "settings": {"slidesToShow": 3, "arrows": false} },
            {"breakpoint":1199, "settings": {"slidesToShow": 3, "arrows": false} },
            {"breakpoint":991, "settings": {"slidesToShow": 5, "arrows": false, "slidesToScroll": 1} },
            {"breakpoint":767, "settings": {"slidesToShow": 3, "arrows": false, "slidesToScroll": 1} },
            {"breakpoint":575, "settings": {"slidesToShow": 3, "arrows": false, "slidesToScroll": 1} },
            {"breakpoint":479, "settings": {"slidesToShow": 2, "arrows": false, "slidesToScroll": 1} }
        ]'>
                                            <div class="single-image">
                                                <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-1.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-2.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-3.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-4.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                            <div class="single-image">
                                                <img width="600" height="800" src="<%=request.getContextPath()%>/assets/img/products/big1-5.webp"
                                                    class="img-fluid" alt="">
                                            </div>
                                        </div>
                                    </div>

                                    <!--=======  End of product details slider area  =======-->
                                </div>
                                <div class="col-xl-7 col-lg-6">
                                    <!--=======  single product content description  =======-->
                                    <div class="single-product-content-description">
                                        <p class="single-info">Brands <a href="shop-left-sidebar.jsp">Dolor</a>
                                        </p>
                                        <h4 class="product-title">Lorem ipsum dolor set amet decor</h4>
                                        <div class="product-rating">
                                            <span class="rating">
                                                <i class="ion-android-star active"></i>
                                                <i class="ion-android-star active"></i>
                                                <i class="ion-android-star active"></i>
                                                <i class="ion-android-star active"></i>
                                                <i class="ion-android-star-outline"></i>
                                            </span>

                                            <span class="review-count"> <a href="#">(2 reviews)</a> | <a href="#">Write
                                                    A Review</a> </span>
                                        </div>

                                        <p class="single-grid-product__price"><span
                                                class="discounted-price">$100.00</span> <span
                                                class="main-price discounted">$120.00</span></p>

                                        <p class="single-info">Product Code: <span class="value">CODE123</span> </p>
                                        <p class="single-info">Reward Points: <span class="value">200</span> </p>
                                        <p class="single-info">Availability: <span class="value">In Stock</span>
                                        </p>

                                        <p class="product-description">Lorem ipsum dolor sit amet consectetur
                                            adipisicing elit. At, delectus. Voluptates omnis distinctio vitae quo
                                            quia
                                            veniam minima dolorem hic necessitatibus pariatur, quae fuga similique
                                            optio
                                            laboriosam assumenda voluptatum aperiam.</p>

                                        <div class="product-actions product-actions--quick-view">
                                            <div class="quantity-selection">
                                                <label>Qty</label>
                                                <input type="number" value="1" min="1">
                                            </div>

                                            <div class="product-buttons">
                                                <a class="cart-btn" href="#"> <i class="ion-bag"></i> ADD TO
                                                    CART</a>
                                                <span class="wishlist-compare-btn">
                                                    <a> <i class="ion-heart"></i></a>
                                                    <a> <i class="ion-android-options"></i></a>
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
    <!--=============================================
    =            JS files        =
    =============================================-->

    <!-- Vendor JS -->
    <script src="<%=request.getContextPath()%>/assets/js/vendors.js"></script>

    <!-- Active JS -->
    <script src="<%=request.getContextPath()%>/assets/js/active.js"></script>
    
   
 <script src="<%=request.getContextPath()%>/assets/js/booking.js"></script>
    <!--=====  End of JS files ======-->

</body>
<script>
    var bbans=document.getElementById("bbans"); 
    var bbname=document.getElementById("bbname");  
    var bbgif=document.getElementById("bbgif");
    var bbBtn=document.getElementById("bbBtn");  
    var bb=document.getElementById("bb"); 
    bbans.setAttribute('style','display:none;'); 
    bbBtn.addEventListener("click",function(e){
    var myArray = [ {url: '<%=request.getContextPath()%>/assets/img/baibai/01.png',name:'聖筊'},{url: '<%=request.getContextPath()%>/assets/img/baibai/02.png',name:'陰筊'},{url: '<%=request.getContextPath()%>/assets/img/baibai/03.png',name:'笑筊'},{url: '<%=request.getContextPath()%>/assets/img/baibai/01.png',name:'聖筊'}]
    var rand = Math.floor(Math.random()*myArray.length);
    var arrRand= myArray[rand];
    bbname.innerText=arrRand.name;
    bb.setAttribute('src', arrRand.url);
    bbans.removeAttribute('style','display:none;');
    bbgif.setAttribute('style','display:none;');
     }); 
    
    </script>

</html>