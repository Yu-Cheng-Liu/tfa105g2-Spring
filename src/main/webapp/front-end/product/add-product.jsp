<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, web.cart.entity.CartVO" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>新增商品</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!--=============================================
    =            CSS  files       =
    =============================================-->
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Karla:ital,wght@0,400;0,700;1,400;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
    

    <!-- Vendor CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/vendors.css" rel="stylesheet">
    <!-- Main CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">

<style>
    #preview img.preview_img{
        width: 100%;
    }
    
    #preview2 img.preview_img2{
        width: 100%;
    }
    
    #preview3 img.preview_img3{
        width: 100%;
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

                    <!-- <div class="header-mobile-navigation d-block d-lg-none">
                        <div class="row align-items-center">
                            <div class="col-6 col-md-6">
                                <div class="header-logo">
                                    <a href="index.html">
                                        <img width="93" height="25" src="assets/img/logo.webp" class="img-fluid" alt="">
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
                    </div> -->

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
                            <h2 class="breadcrumb-content__title">Shop</h2>
                            <ul class="breadcrumb-content__page-map">
                                <li><a href="index.html">Home</a></li>
                                <li class="active">Shop</li>
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
            <div class="col-12">
                <!--=======  page wrapper  =======-->
                <div class="page-wrapper">
                    <div class="page-content-wrapper">
                        <!-- Checkout Form s-->
                        <form class="checkout-form" METHOD="post" action="<%=request.getContextPath()%>/front-end/product/ProductInsertServlet.controller" enctype="multipart/form-data">
                            <div class="row justify-content-around">
						
                                <div class="col-lg-7">
							
                                    <!-- Billing Address f-->
                                    <div id="billing-form">
                                        <h4 class="checkout-title" style="text-align:center;">新增商品</h4>

                                        <div class="row justify-content-around">
<!-- 											<div class="col-md-7"> -->
<!-- 											<label>商品類別<font style=color:red>*</font></label>				 -->
<!-- 											<select id="findType" style="width:130px" name="prodTypeCode"> -->
<!-- 											<option value="0">請選擇商品類別</option> -->
<%-- 											<c:forEach items="${selectAllType}" var="prodTypeVO" >											 --%>
<%-- 											<option value="${prodTypeVO.prodTypeCode}">${prodTypeVO.prodTypeDesc}</option> --%>
<%-- 											</c:forEach> --%>
<!-- 											</select> -->
<%-- 											<font color="red"><c:out value="${errorMsgs['prodTypeCode']}"/></font> --%>
<!-- 											</div> -->
											<div class="col-md-7">
											<label>商品類別<font style=color:red>*</font></label>
											<select id="findType" style="width:130px" name="prodTypeCode">
											<option value="0">請選擇商品類別</option>
											<option value="1">水果</option>
											<option value="2">鮮花</option>
											<option value="3">祭祀用品</option>
											<option value="4">其他</option>
											</select>
											<font color="red"><c:out value="${errorMsgs.prodTypeCode}"/></font>
                                            </div>
                                            
                                            <div class="col-md-7">
                                                <label>商品名稱<font style=color:red>*</font></label>
                                                <font color="red"><c:out value="${errorMsgs['prodName']}"/></font>
                                                <input type="text" placeholder="請輸入商品名稱" name="prodName" value="${prodName}" />                                                                              
                                            </div>

                                            <div class="col-md-7">
                                                <label>商品價格<font style=color:red>*</font></label>
                                                <font color="red"><c:out value="${errorMsgs['prodPrice']}"/></font>
                                                <input type="number" min="0" placeholder="請輸入商品價格" name="prodPrice" value="${prodPrice}" />
                                            </div>

                                            <div class="col-md-7">
                                                <label>商品說明</label>
                                                <input type="text" placeholder="請輸入商品說明內容" name="prodDesc" value="${prodDesc}" />
                                            </div>

                                            <div class="col-md-7">
                                                <label>商品庫存量<font style=color:red>*</font></label>
                                                <font color="red"><c:out value="${errorMsgs['prodStock']}"/></font>
                                                <input type="number" min="0" placeholder="請輸入數量" name="prodStock" value="${prodStock}"/>
                                            </div>
                                            <div class="col-md-7">
                                                <label>商品圖片-1 <font style=color:red>*</font></label>
                                                <font color="red"><c:out value="${errorMsgs['prodImg1']}"/></font>
                                                <input type="file" id="p_file" name="prodImg" />
                                                <div id="preview"><span class="text"></span></div>
                                                <br>
                                                <label>商品圖片-2</label>
                                                <input type="file" id="p_file2" name="prodImg" />
                                                <div id="preview2"><span class="text"></span></div>
                                                <br>
                                                <label>商品圖片-3</label>
                                                <input type="file" id="p_file3" name="prodImg" />
                                                <div id="preview3"><span class="text"></span></div>
                                            </div>

                                            <div class="col-7">
<!--                                             <input type="hidden" name="action" value="insert"> -->
                                            <button type="submit" class="register-button mt-0">確認送出</button>
                                            </div>
                                           
                                        </div>

                                    </div>

                                </div>

                            </div>
 						 </form>
             		</div>
             	</div>
            <!--=======  End of page wrapper  =======-->
             </div> 
        </div>
    </div> 
</div>

<!--====================  End of page content area  ====================-->

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
<!-- scroll to top  -->
<div id="scroll-top">
<span>Back to top</span><i class="ion-chevron-right"></i><i class="ion-chevron-right"></i>
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
<script>
//  ---------- 圖片1 ----------//
(function ($) {
    "use strict";
    $('#scroll-top').fadeIn();
var preview_el = document.getElementById("preview");
var p_file_el = document.getElementById("p_file");

var preview_img = function(file){

var reader =  new FileReader();
   reader.readAsDataURL(file);
   reader.addEventListener("load",function(){
       let img_str = '<img src="' + reader.result + '" class="preview_img">';
       preview_el.innerHTML = img_str;
   });
};

p_file_el.addEventListener("change",function(e){
   if(this.files.length > 0){
       preview_img(this.files[0]);
   }else{
       preview_el.innerHTML = '<span class="text"></span>';
   }
});

   //  ---------- 圖片2 ----------//	
var preview_e2 = document.getElementById("preview2");
var p_file_e2 = document.getElementById("p_file2");

var preview_img2 = function(file){

var reader =  new FileReader();
   reader.readAsDataURL(file);
   reader.addEventListener("load",function(){
       let img_str = '<img src="' + reader.result + '" class="preview_img2">';
       preview_e2.innerHTML = img_str;
   });
};

p_file_e2.addEventListener("change",function(e){
   if(this.files.length > 0){
       preview_img2(this.files[0]);
   }else{
       preview_e2.innerHTML = '<span class="text"></span>';
   }
});

    //  ---------- 圖片3 ----------//
var preview_e3 = document.getElementById("preview3");
var p_file_e3 = document.getElementById("p_file3");

var preview_img3 = function(file){

var reader =  new FileReader();
   reader.readAsDataURL(file);
   reader.addEventListener("load",function(){
       let img_str = '<img src="' + reader.result + '" class="preview_img3">';
       preview_e3.innerHTML = img_str;
   });
};

p_file_e3.addEventListener("change",function(e){
   if(this.files.length > 0){
       preview_img3(this.files[0]);
   }else{
       preview_e3.innerHTML = '<span class="text"></span>';
   }
});
})(jQuery);
</script>
</body>

</html>