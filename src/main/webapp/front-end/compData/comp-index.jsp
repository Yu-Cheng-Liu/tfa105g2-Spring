<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page import="java.util.*, web.cart.entity.CartVO" %>
            <!DOCTYPE html>
            <html class="no-js" lang="zxx">

            <head>

                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <title>廠商中心 | 龘虤</title>
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

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>

                <!-- Vendor CSS -->
                <link href="<%=request.getContextPath()%>/assets/css/vendors.css" rel="stylesheet">
                <!-- Main CSS -->
                <link href="<%=request.getContextPath()%>/assets/css/style.css" rel="stylesheet">

                <script src="<%=request.getContextPath()%>/assets/js/company.js"></script>

                <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

                <script src="https://www.gstatic.com/charts/loader.js"></script>
                
                
                <script>
                	
	                function saleChart(){
	                	document.getElementById('chart_div').innerHtml = "";
	                    google.charts.load('current', { packages: ['corechart'] });
	                    google.charts.setOnLoadCallback(drawChart);
	                }
                    function drawChart() {
                        axios.post("./orderDetailSelectAll.controller").then(res=>{
                        	var orderDetails = [];
                        	 res.data.forEach(element=>{
                             	orderDetails.push([element.prodName,element.prodAmount])  
                        	 })
                        	 // Create the data table.
                             var data1 = new google.visualization.DataTable();
                             data1.addColumn('string', 'prodName');
                             data1.addColumn('number', 'prodAmount');
                             data1.addRows(orderDetails);

                             // Set chart options
                             var options = {
                                 'title': '產品銷售總量',
                                 'pieHole':0.4,
                                 'width': 800,
                                 'height': 600
                             };

                             // Instantiate and draw our chart, passing in some options.
                             var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
                             chart.draw(data1, options);
                             
                        }).catch((error) => console.log(error));
                        
                       
                    }
                	
                </script>


                <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/comp.css">



                <style>
                    #preview img.preview_img {
                        width: 100%;
                    }

                    #preview2 img.preview_img2 {
                        width: 100%;
                    }

                    #preview3 img.preview_img3 {
                        width: 100%;
                    }
                </style>



                <style>
                    * {
                        color: black;
                    }
                </style>

            </head>

            <body onload="saleChart()">
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
                                                                href="${pageContext.request.contextPath}/AllProductServlet.controller?action=selectAll">商品總覽</a>
                                                        </li>
                                                        <li><a
                                                                href="${pageContext.request.contextPath}/CartServlet.controller?action=ViewCart">購物車</a>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li class="menu-item-has-children"><a href="#">預約服務</a>
                                                    <ul class="sub-menu">
                                                        <li><a
                                                                href="<%=request.getContextPath()%>/front-end/booking/bookingvideo.jsp">法會直播</a>
                                                        </li>
                                                        <li><a
                                                                href="<%=request.getContextPath()%>/front-end/booking/booking.jsp">預約祭祀</a>
                                                        </li>
                                                        <li><a
                                                                href="<%=request.getContextPath()%>/front-end/booking/inquirybooking.jsp">查詢祭祀</a>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li class="menu-item-has-children"><a href="#">客服中心</a>
                                                    <ul class="sub-menu">
                                                        <li><a
                                                                href="<%=request.getContextPath()%>/front-end/service/contact.jsp">聯絡我們</a>
                                                        </li>
                                                        <li><a
                                                                href="<%=request.getContextPath()%>/front-end/service/about.jsp">關於我們</a>
                                                        </li>
                                                    </ul>
                                                </li>

                                                <li><a
                                                        href="<%=request.getContextPath()%>/front-end/service/faq.jsp">常見問題</a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <!-- header icon -->
                                    <div class="header-icon-wrapper">
                                        <ul class="icon-list">
                                            <li>
                                                <div class="header-cart-icon">
                                                    <a href="#" id="minicart-trigger"> <i class="ion-bag"></i>
                                                        <span class="counter">${buyListCount}</span>
                                                    </a>
                                                    <!-- mini cart  -->

                                                    <div class="mini-cart" id="mini-cart">
                                                        <div class="cart-items-wrapper ps-scroll">
                                                            <% Vector<CartVO> buyList = (Vector<CartVO>)
                                                                    session.getAttribute("myCart");
                                                                    %>
                                                                    <% if (buyList !=null && (buyList.size()> 0)) {
                                                                        %>
                                                                        <% for (int index=0; index < buyList.size();
                                                                            index++) { CartVO order=buyList.get(index);
                                                                            %>

                                                                            <div class="single-cart-item">

                                                                                <a href="${pageContext.request.contextPath}/CartServlet.controller?action=Delete&del=<%= index %>&prodNo=${prodNo}"
                                                                                    class="remove-icon"><i
                                                                                        class="ion-android-close"></i></a>

                                                                                <div class="image">
                                                                                    <a href="single-product.jsp"> <img
                                                                                            width="80" height="106"
                                                                                            src="${pageContext.request.contextPath}/pictureServlet.controller?prodNo=<%=order.getProdNo()%>&prodImg=1"
                                                                                            class="img-fluid" alt="">
                                                                                    </a>
                                                                                </div>
                                                                                <div class="content">

                                                                                    <p class="product-title">
                                                                                        <a href="single-product.jsp">
                                                                                            <%=order.getProdName()%>
                                                                                        </a>
                                                                                    </p>
                                                                                    <p class="count">
                                                                                        <span>
                                                                                            <%=order.getProdAmount()%> x
                                                                                        </span> $
                                                                                        <%=order.getProdPrice()%>
                                                                                    </p>
                                                                                </div>
                                                                            </div>

                                                                            <% } %>

                                                                                <div class="cart-calculation">
                                                                                    <table class="table">
                                                                                        <tbody>
                                                                                            <tr>
                                                                                                <td class="text-start">
                                                                                                    商品總金額 :</td>
                                                                                                <td class="text-end">
                                                                                                    $${amount}</td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>
                                                                                </div>
                                                                                <% } %>
                                                                                    <div class="cart-buttons">
                                                                                        <a
                                                                                            href="${pageContext.request.contextPath}/CartServlet.controller?action=ViewCart">檢視購物車</a>
                                                                                        <a
                                                                                            href="${pageContext.request.contextPath}/CartServlet.controller?action=CheckOut">結帳</a>
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
                                                        ${indexHamburger}</div>
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
                                                        <li><a href="javascript:void(0)" class="mobile-menu-icon"
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
                                    <div class="breadcrumb-content"></div>
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
                                            
                                            	<input id="lockCertainTab" type = "hidden" value = "${status}">
                                                <div class="myaccount-tab-menu nav" role="tablist">

                                                    <a href="#account-info" ${attrs1} data-bs-toggle="tab"><i
                                                            class="fa fa-user"></i>公司資訊管理</a>
                                                    <a href="#dashboad" ${attrs2}data-bs-toggle="tab" ><i
                                                            class="fa fa-dashboard"></i> 帳戶大廳</a>

                                                    <a class ="ifVerifiedThenShow" id="view-orders" href="#orders" ${attrs3} data-bs-toggle="tab">
                                                        <i class="fa fa-cart-arrow-down"></i>訂單總覽</a>

                                                    <a class ="ifVerifiedThenShow" href="#product-insert" ${attrs5} data-bs-toggle="tab">
                                                        <i class="fa fa-cart-arrow-down"></i> 商品新增</a>

                                                    <a class ="ifVerifiedThenShow" id="product-updateATag" href="#product-update" ${attrs6}
                                                        data-bs-toggle="tab" onclick="getProdName();">
                                                        <i class="fa fa-cart-arrow-down"></i> 商品修改</a>

                                                    <a class ="ifVerifiedThenShow" id="product-launchAndDiscontinue" href="#product-management"
                                                        ${attrs4} data-bs-toggle="tab">
                                                        <i class="fa fa-cart-arrow-down"></i> 商品上架/下架</a>

                                                    <form
                                                        action="<%=request.getContextPath()%>/secure/logout.controller"
                                                        id="logout" method="POST">
                                                        <a id="byebye"><i class="fa fa-sign-out"></i> 登出</a>
                                                    </form>
                                                </div>
                                            </div>
                                            <!-- My Account Tab Menu End -->

                                            <!-- My Account Tab Content Start -->
                                            <div class="col-lg-9 col-12">
                                                <div class="tab-content" id="myaccountContent">
                                                    <!-- Single Tab Content Start -->
                                                    <div class="tab-pane fade ${classes1}" id="dashboad"
                                                        role="tabpanel">
                                                        <div class="myaccount-content">
                                                            <h3>帳戶大廳</h3>

                                                            <div class="welcome mb-20">
                                                                <p>
                                                                    哈摟, <strong>${compName}</strong> <strong></strong>
                                                                </p>
                                                            </div>

                                                            <form id="verifyForm"
                                                                action="<%=request.getContextPath()%>/secure/verifyAgain.controller"
                                                                method="post">
																

                                                                <p id="verifying" class="mb-0">${status == '1' ?
                                                                    "歡迎來到龘虤！ 您的email驗證尚未完成，將無法使用商品相關功能，是否現在驗證？" :
                                                                    "歡迎來到龘虤！ 恭喜您已完成email驗證，祝您生意興隆"}</p>
                                                                   <div id="chart_div"></div>
                                                                <input type="hidden" name="verifyAgain"
                                                                    value="${email}">
                                                                <input type="hidden" name="verifyAgain"
                                                                    value="${chargePerson}">
                                                                <c:if test="${status  == '1'}">
                                                                    <button class="btn btn-outline-primary"
                                                                        type="submit">我要驗證email</button>

                                                                </c:if>

                                                            </form>
                                                        </div>
                                                    </div>
                                                    <!-- Single Tab Content End -->

                                                    <!-- Single Tab Content Start -->
                                                    <!--  Order Details -->
                                                    <div class="tab-pane fade ${classes2} " id="orders" role="tabpanel">
                                                        <div class="myaccount-content">
                                                            <h3>訂單總覽</h3>

                                                            <div class="myaccount-table table-responsive text-center">

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
                                                                <form id="getAllOrders"
                                                                    action="<%=request.getContextPath()%>/secure/getAllOrders.controller"
                                                                    method="POST">
                                                                    <input name="getListByCompNo" type="hidden"
                                                                        value="getListByCompNo" />
                                                                </form>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Single Tab Content End -->


                                                    <div class="tab-pane fade ${classes3} " id="product-management"
                                                        role="tabpanel">
                                                        <div class="myaccount-content">
                                                            <h3>商品上架/下架</h3>

                                                            <div class="myaccount-table table-responsive text-center">

                                                                <table class="table table-bordered">
                                                                    <thead class="thead-light">
                                                                        <tr>
                                                                            <th><input type="checkbox"
                                                                                    id="allProductsSelect"
                                                                                    name="allProductsSelect"></th>
                                                                            <th>商品編號</th>
                                                                            <th>商品名稱</th>
                                                                            <th>商品類別</th>
                                                                            <th>商品描述</th>
                                                                            <th>商品價格</th>
                                                                            <th>商品庫存</th>
                                                                            <th>商品狀態</th>
                                                                        </tr>
                                                                    </thead>

                                                                    <c:forEach var="ProductVO" items="${prods}">

                                                                        <form id="launchAndDiscontinueForm"
                                                                            action="<%=request.getContextPath()%>/secure/launchAndDiscontinue.controller"
                                                                            Method="post">
                                                                            <tbody>
                                                                                <td><input class="thisProduct"
                                                                                        type="checkbox"
                                                                                        name="thisProduct"
                                                                                        value="${ProductVO.prodNo}">
                                                                                </td>
                                                                                <td>${ProductVO.prodNo}</td>
                                                                                <td>${ProductVO.prodName}</td>
                                                                                <td>${ProductVO.prodTypeCode}</td>
                                                                                <td>${ProductVO.prodDesc}</td>
                                                                                <td>${ProductVO.prodPrice}</td>
                                                                                <td>${ProductVO.prodStock}</td>
                                                                                <td><strong>${ProductVO.prodVerify =="1"
                                                                                        ? "已上架" : "未上架"}</strong></td>
                                                                            </tbody>
                                                                    </c:forEach>

                                                                </table>

                                                                <input id="inputValue" type="hidden"
                                                                    name="setProductStatus">
                                                                <button class="btn btn-outline-primary" id="launch-btn"
                                                                    type="submit">上架</button>
                                                                <button class="btn btn-outline-primary"
                                                                    id="discontinue-btn" type="submit">下架</button>
                                                                </form>
                                                                <form id="getListByCompNo"
                                                                    action="<%=request.getContextPath()%>/secure/productManagement.controller"
                                                                    method="POST">
                                                                    <input name="getListByCompNo" type="hidden"
                                                                        value="getListByCompNo"></input>
                                                                </form>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Single Tab Content End -->



                                                    <!-- Single Tab Content Start -->


                                                    <div class="tab-pane fade ${classes4} " id="product-update"
                                                        role="tabpanel">
                                                        <div class="myaccount-content">
                                                            <h3>商品修改</h3>
                                                            <div class="page-content-area">
                                                                <div class="container">
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <!--=======  page wrapper  =======-->
                                                                            <div class="page-wrapper">
                                                                                <div class="page-content-wrapper">
                                                                                    <!-- Checkout Form s-->
                                                                                    <form class="checkout-form"
                                                                                        METHOD="post"
                                                                                        action="<%=request.getContextPath()%>/front-end/product/ProductUpdateServlet.controller"
                                                                                        enctype="multipart/form-data">
                                                                                        <div
                                                                                            class="row justify-content-around">

                                                                                            <div class="col-lg-7">

                                                                                                <!-- Billing Address f-->
                                                                                                <div id="billing-form">
                                                                                                    <h4 class="checkout-title"
                                                                                                        style="text-align:center;">
                                                                                                        修改商品</h4>

                                                                                                    <div
                                                                                                        class="row justify-content-around">
                                                                                                        <!-- 											<div class="col-md-7"> -->
                                                                                                        <!-- 											<label>商品類別<font style=color:red>*</font></label>				 -->
                                                                                                        <!-- 											<select id="findType" style="width:130px" name="prodTypeCode"> -->
                                                                                                        <!-- 											<option value="0">請選擇商品類別</option> -->
                                                                                                        <%-- <c:forEach
                                                                                                            items="${selectAllType}"
                                                                                                            var="prodTypeVO">
                                                                                                            --%>
                                                                                                            <%-- <option
                                                                                                                value="${prodTypeVO.prodTypeCode}">
                                                                                                                ${prodTypeVO.prodTypeDesc}
                                                                                                                </option>
                                                                                                                --%>
                                                                                                                <%--
                                                                                                                    </c:forEach>
                                                                                                                    --%>
                                                                                                                    <!-- 											</select> -->
                                                                                                                    <%-- <font
                                                                                                                        color="red">
                                                                                                                        <c:out
                                                                                                                            value="${errorMsgs['prodTypeCode']}" />
                                                                                                                        </font>
                                                                                                                        --%>
                                                                                                                        <!-- 											</div> -->
                                                                                                                        <div
                                                                                                                            class="col-md-7">
                                                                                                                            <label>商品編號*</label>
                                                                                                                            <select
                                                                                                                                id="ProdSel"
                                                                                                                                name="prodNo"
                                                                                                                                class="form-select"
                                                                                                                                aria-label="Default select example">
                                                                                                                                <option
                                                                                                                                    selected>
                                                                                                                                </option>
                                                                                                                            </select>
                                                                                                                            <script>
                                                                                                                                function getProdName() {
                                                                                                                                   
                                                                                                                                    var sel = $("#ProdSel");
                                                                                                                                    axios.post("./getProductName.controller").then(res => {
                                                                                                                                        for (let i = 0; i < res.data.length; i++) {
                                                                                                                                            let no = res.data[i].prodNo
                                                                                                                                            sel.append("<option value=" + no + ">" + no + "</option>");
                                                                                                                                        }
                                                                                                                                    })
                                                                                                                                }
                                                                                                                            </script>

                                                                                                                            <label>商品類別
                                                                                                                                <font
                                                                                                                                    style=color:red>
                                                                                                                                    *
                                                                                                                                </font>
                                                                                                                                </label>
                                                                                                                            <select
                                                                                                                                id="findType1"
                                                                                                                                style="width:130px"
                                                                                                                                name="prodTypeCode">
                                                                                                                                <option
                                                                                                                                    value="0">
                                                                                                                                    請選擇商品類別
                                                                                                                                </option>
                                                                                                                                <option
                                                                                                                                    value="1">
                                                                                                                                    水果
                                                                                                                                </option>
                                                                                                                                <option
                                                                                                                                    value="2">
                                                                                                                                    鮮花
                                                                                                                                </option>
                                                                                                                                <option
                                                                                                                                    value="3">
                                                                                                                                    祭祀用品
                                                                                                                                </option>
                                                                                                                                <option
                                                                                                                                    value="4">
                                                                                                                                    其他
                                                                                                                                </option>
                                                                                                                            </select>
                                                                                                                            <font
                                                                                                                                color="red">
                                                                                                                                <c:out
                                                                                                                                    value="${errorMsgs.prodTypeCode}" />
                                                                                                                            </font>
                                                                                                                        </div>

                                                                                                                        <div
                                                                                                                            class="col-md-7">
                                                                                                                            <label>商品名稱
                                                                                                                                <font
                                                                                                                                    style=color:red>
                                                                                                                                    *
                                                                                                                                </font>
                                                                                                                                </label>
                                                                                                                            <font
                                                                                                                                color="red">
                                                                                                                                <c:out
                                                                                                                                    value="${errorMsgs['prodName']}" />
                                                                                                                            </font>
                                                                                                                            <input
                                                                                                                                type="text"
                                                                                                                                placeholder="請輸入商品名稱"
                                                                                                                                name="prodName"
                                                                                                                                value="${prodName}" />
                                                                                                                        </div>

                                                                                                                        <div
                                                                                                                            class="col-md-7">
                                                                                                                            <label>商品價格
                                                                                                                                <font
                                                                                                                                    style=color:red>
                                                                                                                                    *
                                                                                                                                </font>
                                                                                                                                </label>
                                                                                                                            <font
                                                                                                                                color="red">
                                                                                                                                <c:out
                                                                                                                                    value="${errorMsgs['prodPrice']}" />
                                                                                                                            </font>
                                                                                                                            <input
                                                                                                                                type="number"
                                                                                                                                min="0"
                                                                                                                                placeholder="請輸入商品價格"
                                                                                                                                name="prodPrice"
                                                                                                                                value="${prodPrice}" />
                                                                                                                        </div>

                                                                                                                        <div
                                                                                                                            class="col-md-7">
                                                                                                                            <label>商品說明</label>
                                                                                                                            <input
                                                                                                                                type="text"
                                                                                                                                placeholder="請輸入商品說明內容"
                                                                                                                                name="prodDesc"
                                                                                                                                value="${prodDesc}" />
                                                                                                                        </div>

                                                                                                                        <div
                                                                                                                            class="col-md-7">
                                                                                                                            <label>商品庫存量
                                                                                                                                <font
                                                                                                                                    style=color:red>
                                                                                                                                    *
                                                                                                                                </font>
                                                                                                                                </label>
                                                                                                                            <font
                                                                                                                                color="red">
                                                                                                                                <c:out
                                                                                                                                    value="${errorMsgs['prodStock']}" />
                                                                                                                            </font>
                                                                                                                            <input
                                                                                                                                type="number"
                                                                                                                                min="0"
                                                                                                                                placeholder="請輸入數量"
                                                                                                                                name="prodStock"
                                                                                                                                value="${prodStock}" />
                                                                                                                        </div>
                                                                                                                        <div
                                                                                                                            class="col-md-7">
                                                                                                                            <label>商品圖片-1
                                                                                                                                <font
                                                                                                                                    style=color:red>
                                                                                                                                    *
                                                                                                                                </font>
                                                                                                                                </label>
                                                                                                                            <font
                                                                                                                                color="red">
                                                                                                                                <c:out
                                                                                                                                    value="${errorMsgs['prodImg1']}" />
                                                                                                                            </font>
                                                                                                                            <input
                                                                                                                                type="file"
                                                                                                                                id="p_file1"
                                                                                                                                name="prodImg" />
                                                                                                                            <div
                                                                                                                                id="preview">
                                                                                                                                <span
                                                                                                                                    class="text"></span>
                                                                                                                            </div>
                                                                                                                            <br>
                                                                                                                            <label>商品圖片-2</label>
                                                                                                                            <input
                                                                                                                                type="file"
                                                                                                                                id="p_file12"
                                                                                                                                name="prodImg" />
                                                                                                                            <div
                                                                                                                                id="preview2">
                                                                                                                                <span
                                                                                                                                    class="text"></span>
                                                                                                                            </div>
                                                                                                                            <br>
                                                                                                                            <label>商品圖片-3</label>
                                                                                                                            <input
                                                                                                                                type="file"
                                                                                                                                id="p_file13"
                                                                                                                                name="prodImg" />
                                                                                                                            <div
                                                                                                                                id="preview3">
                                                                                                                                <span
                                                                                                                                    class="text"></span>
                                                                                                                            </div>
                                                                                                                        </div>

                                                                                                                        <div
                                                                                                                            class="col-7">
                                                                                                                            <!--                                             <input type="hidden" name="action" value="insert"> -->
                                                                                                                            <button
                                                                                                                                type="submit"
                                                                                                                                class="register-button mt-0">確認送出</button>
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





                                                        </div>
                                                    </div>








                                                    <!-- Single Tab Content End -->

                                                    <!-- Single Tab Content Start -->
                                                    <div class="tab-pane fade ${classes5} " id="product-insert"
                                                        role="tabpanel">
                                                        <div class="myaccount-content">
                                                            <h3>商品新增</h3>

                                                            <div class="page-wrapper">
                                                                <div class="page-content-wrapper">
                                                                    <!-- Checkout Form s-->
                                                                    <form class="checkout-form" METHOD="post"
                                                                        action="<%=request.getContextPath()%>/front-end/product/ProductInsertServlet.controller"
                                                                        enctype="multipart/form-data">
                                                                        <div class="row justify-content-around">

                                                                            <div class="col-lg-7">

                                                                                <!-- Billing Address f-->
                                                                                <div id="billing-form">
                                                                                    <h4 class="checkout-title"
                                                                                        style="text-align: center;">新增商品
                                                                                    </h4>

                                                                                    <div
                                                                                        class="row justify-content-around">
                                                                                        <!-- 											<div class="col-md-7"> -->
                                                                                        <!-- 											<label>商品類別<font style=color:red>*</font></label>				 -->
                                                                                        <!-- 											<select id="findType" style="width:130px" name="prodTypeCode"> -->
                                                                                        <!-- 											<option value="0">請選擇商品類別</option> -->
                                                                                        <%-- <c:forEach
                                                                                            items="${selectAllType}"
                                                                                            var="prodTypeVO"> --%>
                                                                                            <%-- <option
                                                                                                value="${prodTypeVO.prodTypeCode}">
                                                                                                ${prodTypeVO.prodTypeDesc}
                                                                                                </option> --%>
                                                                                                <%-- </c:forEach> --%>
                                                                                                    <!-- 											</select> -->
                                                                                                    <%-- <font
                                                                                                        color="red">
                                                                                                        <c:out
                                                                                                            value="${errorMsgs['prodTypeCode']}" />
                                                                                                        </font> --%>
                                                                                                        <!-- 											</div> -->
                                                                                                        <div
                                                                                                            class="col-md-7">
                                                                                                            <label>商品類別
                                                                                                                <font
                                                                                                                    style="color: red">
                                                                                                                    *
                                                                                                                </font>
                                                                                                                </label>
                                                                                                            <select
                                                                                                                id="findType"
                                                                                                                style="width: 130px"
                                                                                                                name="prodTypeCode">
                                                                                                                <option
                                                                                                                    value="0">
                                                                                                                    請選擇商品類別
                                                                                                                </option>
                                                                                                                <option
                                                                                                                    value="1">
                                                                                                                    水果
                                                                                                                </option>
                                                                                                                <option
                                                                                                                    value="2">
                                                                                                                    鮮花
                                                                                                                </option>
                                                                                                                <option
                                                                                                                    value="3">
                                                                                                                    祭祀用品
                                                                                                                </option>
                                                                                                                <option
                                                                                                                    value="4">
                                                                                                                    其他
                                                                                                                </option>
                                                                                                            </select>
                                                                                                            <font
                                                                                                                color="red">
                                                                                                                <c:out
                                                                                                                    value="${errorMsgs.prodTypeCode}" />
                                                                                                            </font>
                                                                                                        </div>

                                                                                                        <div
                                                                                                            class="col-md-7">
                                                                                                            <label>商品名稱
                                                                                                                <font
                                                                                                                    style="color: red">
                                                                                                                    *
                                                                                                                </font>
                                                                                                                </label>
                                                                                                            <font
                                                                                                                color="red">
                                                                                                                <c:out
                                                                                                                    value="${errorMsgs['prodName']}" />
                                                                                                            </font>
                                                                                                            <input
                                                                                                                type="text"
                                                                                                                placeholder="請輸入商品名稱"
                                                                                                                name="prodName"
                                                                                                                value="${prodName}" />
                                                                                                        </div>

                                                                                                        <div
                                                                                                            class="col-md-7">
                                                                                                            <label>商品價格
                                                                                                                <font
                                                                                                                    style="color: red">
                                                                                                                    *
                                                                                                                </font>
                                                                                                                </label>
                                                                                                            <font
                                                                                                                color="red">
                                                                                                                <c:out
                                                                                                                    value="${errorMsgs['prodPrice']}" />
                                                                                                            </font>
                                                                                                            <input
                                                                                                                type="number"
                                                                                                                min="0"
                                                                                                                placeholder="請輸入商品價格"
                                                                                                                name="prodPrice"
                                                                                                                value="${prodPrice}" />
                                                                                                        </div>

                                                                                                        <div
                                                                                                            class="col-md-7">
                                                                                                            <label>商品說明</label>
                                                                                                            <input
                                                                                                                type="text"
                                                                                                                placeholder="請輸入商品說明內容"
                                                                                                                name="prodDesc"
                                                                                                                value="${prodDesc}" />
                                                                                                        </div>

                                                                                                        <div
                                                                                                            class="col-md-7">
                                                                                                            <label>商品庫存量
                                                                                                                <font
                                                                                                                    style="color: red">
                                                                                                                    *
                                                                                                                </font>
                                                                                                                </label>
                                                                                                            <font
                                                                                                                color="red">
                                                                                                                <c:out
                                                                                                                    value="${errorMsgs['prodStock']}" />
                                                                                                            </font>
                                                                                                            <input
                                                                                                                type="number"
                                                                                                                min="0"
                                                                                                                placeholder="請輸入數量"
                                                                                                                name="prodStock"
                                                                                                                value="${prodStock}" />
                                                                                                        </div>
                                                                                                        <div
                                                                                                            class="col-md-7">
                                                                                                            <label>商品圖片-1
                                                                                                                <font
                                                                                                                    style="color: red">
                                                                                                                    *
                                                                                                                </font>
                                                                                                                </label>
                                                                                                            <font
                                                                                                                color="red">
                                                                                                                <c:out
                                                                                                                    value="${errorMsgs['prodImg1']}" />
                                                                                                            </font>
                                                                                                            <input
                                                                                                                type="file"
                                                                                                                id="p_file"
                                                                                                                name="prodImg" />
                                                                                                            <div
                                                                                                                id="preview">
                                                                                                                <span
                                                                                                                    class="text"></span>
                                                                                                            </div>
                                                                                                            <br>
                                                                                                            <label>商品圖片-2</label>
                                                                                                            <input
                                                                                                                type="file"
                                                                                                                id="p_file2"
                                                                                                                name="prodImg" />
                                                                                                            <div
                                                                                                                id="preview2">
                                                                                                                <span
                                                                                                                    class="text"></span>
                                                                                                            </div>
                                                                                                            <br>
                                                                                                            <label>商品圖片-3</label>
                                                                                                            <input
                                                                                                                type="file"
                                                                                                                id="p_file3"
                                                                                                                name="prodImg" />
                                                                                                            <div
                                                                                                                id="preview3">
                                                                                                                <span
                                                                                                                    class="text"></span>
                                                                                                            </div>
                                                                                                        </div>

                                                                                                        <div
                                                                                                            class="col-7">
                                                                                                            <!--                                             <input type="hidden" name="action" value="insert"> -->
                                                                                                            <button
                                                                                                                type="submit"
                                                                                                                class="register-button mt-0">確認送出</button>
                                                                                                        </div>

                                                                                    </div>

                                                                                </div>

                                                                            </div>

                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- Single Tab Content End -->




                                                    <!-- Single Tab Content Start -->


                                                    <!-- Single Tab Content End -->




                                                    <!-- Single Tab Content Start -->
                                                    <div class="tab-pane fade ${classes6}" id="account-info"
                                                        role="tabpanel">


                                                        <div class="myaccount-content">
                                                            <h3>帳戶資訊</h3>

                                                            <div class="account-details-form">
                                                                <div class="row">
                                                                    <form
                                                                        action="<%=request.getContextPath()%>/secure/editProfile.controller"
                                                                        method="POST">
                                                                        <h2>${EditPersonalProfileSucceed}</h2>

                                                                        <div class="col-lg-6 col-12">
                                                                            公司名稱 <input id="compName" placeholder="公司名稱"
                                                                                name="compName" value="${compName}"
                                                                                type="text" disabled> <span
                                                                                style="color: red;">${errors.compName}</span>
                                                                            <br>
                                                                        </div>

                                                                        <div class="col-lg-6 col-12">
                                                                            公司負責人 <input id="chargePerson"
                                                                                placeholder="公司負責人" name="chargePerson"
                                                                                value="${chargePerson}" type="text"
                                                                                disabled> <span
                                                                                style="color: red;">${errors.chargePerson}</span>
                                                                        </div>

                                                                        <div class="col-12">
                                                                            電子郵件 <input id="email" placeholder="電子郵件"
                                                                                name="email" value="${email}"
                                                                                type="email" disabled> <span
                                                                                style="color: red;">${errors.email}</span>
                                                                        </div>

                                                                        <div class="col-12">
                                                                            公司地址 <input id="address" placeholder="公司地址"
                                                                                name="address" value="${compAddress}"
                                                                                type="text" disabled>
                                                                        </div>

                                                                        <div class="col-12">
                                                                            公司電話 <input id="compPhone"
                                                                                placeholder="公司電話" name="compPhone"
                                                                                value="${compPhone}" type="text"
                                                                                disabled>
                                                                        </div>

                                                                        <div class="col-12">
                                                                            公司統編 <input id="compAccount"
                                                                                placeholder="公司統編" name="compAccount"
                                                                                value="${compAccount}" type="text"
                                                                                disabled>
                                                                        </div>

                                                                        <button type="button" id="changePersonalProfile"
                                                                            class="save-change-btn">變更資料</button>
                                                                        <button type="submit" id="compAccountSubmit"
                                                                            class="save-change-btn">送出</button>
                                                                    </form>
                                                                    <form
                                                                        action="<%=request.getContextPath()%>/secure/changePass.controller"
                                                                        method="post">
                                                                        <div class="col-12 mb-2">
                                                                            <h4>密碼變更</h4>
                                                                            <span
                                                                                style="color: red;">${changePasswordSucceed}</span>
                                                                        </div>

                                                                        <div class="col-12">
                                                                            <input id="oldPass" placeholder="目前密碼"
                                                                                name="oldPass" type="password"> <span
                                                                                style="color: red;">${errors.oldPass}</span>
                                                                        </div>

                                                                        <div class="col-lg-6 col-12">
                                                                            <input id="newPass" placeholder="新密碼"
                                                                                name="newPass" type="password"> <span
                                                                                style="color: red;">${errors.newPass}</span>
                                                                        </div>

                                                                        <div class="col-lg-6 col-12">
                                                                            <input id="confirm" placeholder="確認密碼"
                                                                                name="confirm" type="password"> <span
                                                                                style="color: red;">${errors.samePass}</span>
                                                                        </div>

                                                                        <div class="col-12">
                                                                            <button class="save-change-btn">送出</button>
                                                                        </div>

                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Single Tab Content End -->

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
                                                                <li><a href="#"><i class="fa fa-google-plus"></i></a>
                                                                </li>
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
                        <a href="javascript:void(0)" class="offcanvas-menu-close" id="offcanvas-menu-close-trigger"> <i
                                class="ion-android-close"></i>
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
                                                <li><a
                                                        href="<%=request.getContextPath()%>/front-end/booking/booking.jsp">預約祭祀</a>
                                                </li>
                                                <li><a href="menu-item-has-children">線上祭祀</a></li>
                                            </ul>
                                        </li>

                                        <li class="menu-item-has-children"><a href="#">客服中心</a>
                                            <ul class="sub-menu">
                                                <li><a
                                                        href="<%=request.getContextPath()%>/front-end/service/contact.jsp">聯絡我們</a>
                                                </li>
                                                <li><a
                                                        href="<%=request.getContextPath()%>/front-end/service/about.jsp">關於我們</a>
                                                </li>
                                            </ul>
                                        </li>

                                        <li><a href="<%=request.getContextPath()%>/front-end/service/faq.jsp">常見問題</a>
                                        </li>
                                    </ul>
                                </nav>

                                <div class="offcanvas-settings">
                                    <nav class="offcanvas-navigation">
                                        <ul>
                                            <li class="menu-item-has-children"><a href="#">會員登入 </a>
                                                <ul class="sub-menu">
                                                    <li><a
                                                            href="<%=request.getContextPath()%>/front-end/memberData/login-register-member.jsp">註冊/登入</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="menu-item-has-children"><a href="#">廠商登入 </a>
                                                <ul class="sub-menu">
                                                    <li><a
                                                            href="<%=request.getContextPath()%>/front-end/compData/comp-login-register.jsp">註冊/登入</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>

                                <div class="offcanvas-widget-area">
                                    <!--Off Canvas Widget Social Start-->
                                    <div class="off-canvas-widget-social">
                                        <a href="#" title="Facebook"><i class="fa fa-facebook"></i></a> <a href="#"
                                            title="Twitter"><i class="fa fa-twitter"></i></a> <a href="#"
                                            title="LinkedIn"><i class="fa fa-linkedin"></i></a> <a href="#"
                                            title="Youtube"><i class="fa fa-youtube-play"></i></a>
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
                        <a href="javascript:void(0)" class="close-search-overlay" id="close-search-overlay"> <i
                                class="ion-ios-close-empty"></i>
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

                    <div class="modal fade quick-view-modal-container" id="quick-view-modal-container" tabindex="-1"
                        role="dialog" aria-hidden="true">
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
                                                            Brands <a href="shop-left-sidebar.jsp">Dolor</a>
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
                                                            necessitatibus pariatur, quae fuga similique optio
                                                            laboriosam assumenda voluptatum aperiam.</p>

                                                        <div class="product-actions product-actions--quick-view">
                                                            <div class="quantity-selection">
                                                                <label>Qty</label> <input type="number" value="1"
                                                                    min="1">
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
                    <!-- <div id="scroll-top">
        <span>線上客服</span><i class="ion-chevron-right"></i><i class="ion-chevron-right"></i>
    </div> -->
                    <div class="container">
                        <div class="chatbox">
                            <div class="chatbox__support">
                                <div class="chatbox__header">
                                    <div class="chatbox__image--header">
                                        <!-- <img src="./images/image.png" alt="image"> -->
                                        <img src="https://github.com/mdo.png" alt="image" width="50" height="50"
                                            class="rounded-circle me-2">
                                    </div>
                                    <div class="chatbox__content--header">
                                        <h4 class="chatbox__heading--header">小天使</h4>
                                        <p class="chatbox__description--header">有話快說，有屁快放，小天使很忙的</p>
                                    </div>
                                </div>
                                <div class="chatbox__messages">
                                    <div>
                                        <!-- 小天使對話框 -->
                                        <div class="messages__item messages__item--visitor">嗨</div>
                                        <!-- 客戶對話框 -->
                                        <div class="messages__item messages__item--operator">嗨</div>
                                        <!-- 等待條 -->
                                        <div class="messages__item messages__item--typing">
                                            <span class="messages__dot"></span> <span class="messages__dot"></span>
                                            <span class="messages__dot"></span>
                                        </div>
                                    </div>
                                </div>
                                <!-- 輸入對話框 -->
                                <div class="chatbox__footer">
                                    <textarea name="con_message" id="con_message" placeholder="請輸入訊息"
                                        onkeydown="if (event.keyCode == 13) sendMessage();"></textarea>
                                    <button class="chatbox__send--footer">傳送</button>
                                </div>
                            </div>
                            <div class="chatbox__button">
                                <button>button</button>
                            </div>
                        </div>
                    </div>
                    <script src="<%=request.getContextPath()%>/assets/js/Chat.js"></script>
                    <script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
                    <!-- end of scroll to top -->
                    <!--=============================================
    =            JS files        =
    =============================================-->

                    <!-- Vendor JS -->
                    <script src="<%=request.getContextPath()%>/assets/js/vendors.js"></script>

                    <!-- Active JS -->
                    <script src="<%=request.getContextPath()%>/assets/js/active.js"></script>

                    <script src="<%=request.getContextPath()%>/assets/js/company.js"></script>

                    <script>
                        //  ---------- 圖片1 ----------//
                        (function ($) {
                            "use strict";
                            $('#scroll-top').fadeIn();
                            var preview_el = document.getElementById("preview");
                            var p_file_el = document.getElementById("p_file");

                            var preview_img = function (file) {

                                var reader = new FileReader();
                                reader.readAsDataURL(file);
                                reader
                                    .addEventListener(
                                        "load",
                                        function () {
                                            let img_str = '<img src="' + reader.result + '" class="preview_img">';
                                            preview_el.innerHTML = img_str;
                                        });
                            };

                            p_file_el.addEventListener("change", function (e) {
                                if (this.files.length > 0) {
                                    preview_img(this.files[0]);
                                } else {
                                    preview_el.innerHTML = '<span class="text"></span>';
                                }
                            });

                            //  ---------- 圖片2 ----------//	
                            var preview_e2 = document.getElementById("preview2");
                            var p_file_e2 = document.getElementById("p_file2");

                            var preview_img2 = function (file) {

                                var reader = new FileReader();
                                reader.readAsDataURL(file);
                                reader
                                    .addEventListener(
                                        "load",
                                        function () {
                                            let img_str = '<img src="' + reader.result + '" class="preview_img2">';
                                            preview_e2.innerHTML = img_str;
                                        });
                            };

                            p_file_e2.addEventListener("change", function (e) {
                                if (this.files.length > 0) {
                                    preview_img2(this.files[0]);
                                } else {
                                    preview_e2.innerHTML = '<span class="text"></span>';
                                }
                            });

                            //  ---------- 圖片3 ----------//
                            var preview_e3 = document.getElementById("preview3");
                            var p_file_e3 = document.getElementById("p_file3");

                            var preview_img3 = function (file) {

                                var reader = new FileReader();
                                reader.readAsDataURL(file);
                                reader
                                    .addEventListener(
                                        "load",
                                        function () {
                                            let img_str = '<img src="' + reader.result + '" class="preview_img3">';
                                            preview_e3.innerHTML = img_str;
                                        });
                            };

                            p_file_e3.addEventListener("change", function (e) {
                                if (this.files.length > 0) {
                                    preview_img3(this.files[0]);
                                } else {
                                    preview_e3.innerHTML = '<span class="text"></span>';
                                }
                            });
                        })(jQuery);
                    </script>


                    <!--=====  End of JS files ======-->
            </body>

            </html>