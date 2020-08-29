<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!-- HEADER -->
<header>
    <!-- top Header -->
    <div id="top-header">
        <div class="container fixed-top">
            <div class="pull-left">
                <span>Chào mừng tới E-shop! <i class="fas fa-heart"></i></span>
            </div>
            <div class="pull-right">
                <ul class="header-top-links">
                    <li><a href="#">Cửa hàng</a></li>
                    <li><a href="#">Tin tức</a></li>
                    <li><a href="#">Hỏi đáp</a></li>
                    <li class="dropdown default-dropdown"><a
                            class="dropdown-toggle" data-toggle="dropdown"
                            aria-expanded="true">ENG <i class="fa fa-caret-down"></i></a>
                        <ul class="custom-menu">
                            <li><a href="#">English (ENG)</a></li>
                            <li><a href="#">Russian (Ru)</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- /top Header -->

    <!-- header -->
    <div id="header">
        <div class="container">
            <div class="pull-left">
                <!-- Logo -->
                <div class="header-logo">
                    <a class="logo" href="<c:url value='/trang-chu'/>"> <img
                            src="<c:url value="/resources/logo/logo.png"/>" alt="">
                    </a>
                </div>
                <!-- /Logo -->

                <!-- Search -->
                <div class="header-search">
                    <form id="formSub" action="<c:url value="/product"/>" method="get">
                        <input class="input search-input" type="text" placeholder="Điền từ khóa cần tìm" id="name"
                               name="name">
                        <select class="input search-categories" id="cbSearch">
                            <option value="0">Tất cả</option>
                            <c:forEach var="item" items="${categories.listResult}">
                                <option value="${item.id }">${item.name }</option>
                            </c:forEach>
                        </select>
                        <input type="hidden" value="" id="categoryId" name="categoryId"/>
                        <button class="search-btn" type="submit" form="formSub"
                                id="searchBtn">
                            <i class="fa fa-search"></i>
                        </button>
                    </form>

                </div>
                <!-- /Search -->
            </div>
            <div class="pull-right">
                <ul class="header-btns">
                    <!-- Account -->
                    <c:if test="${not empty USERMODEL}">
                        <li class="header-account dropdown default-dropdown">
                            <div class="dropdown-toggle" role="button" data-toggle="dropdown"
                                 aria-expanded="true">
                                <div class="header-btns-icon">
                                    <i class="fas fa-user"></i>
                                </div>
                                <strong class="text-uppercase">Chào mừng
                                        ${USERMODEL.fullName} <i class="fa fa-caret-down"></i>
                                </strong>
                            </div>
                            <a href='<c:url value="/dang-nhap?action=logout"/>'>Thoát</a>
                            <ul class="custom-menu">
                                <li><a href="#"><i class="fas fa-user"></i> Tài khoản
                                    của tôi</a></li>
                                <li><a href="#"><i class="far fa-heart"></i></i> Mục yêu
                                    thích</a></li>
                                <li><a href="#"><i class="fas fa-exchange-alt"></i></i>
                                    Giao hàng</a></li>
                                <li><a href="#"><i class="fa fa-check"></i> Thanh toán</a></li>
                            </ul>
                        </li>
                    </c:if>
                    <c:if test="${empty USERMODEL }">
                        <li class="nav-item"><a class="nav-link"
                                                href="<c:url value='/dang-nhap?action=login'/>"><i
                                class="fas fa-sign-in-alt"></i> Đăng nhập</a></li>
                    </c:if>

                    <!-- /Account -->

                    <!-- Cart -->
                    <c:if test="${empty USERMODEL}">

                    </c:if>
                    <c:if test="${not empty USERMODEL}">
                        <li class="header-cart dropdown default-dropdown"><a
                                class="dropdown-toggle" data-toggle="dropdown"
                                aria-expanded="true">
                            <div class="header-btns-icon">
                                <i class="fas fa-shopping-cart"></i> <span class="qty">3</span>
                            </div>
                            <strong class="text-uppercase">Giỏ hàng</strong> <br> <span>35.20$</span>
                        </a>
                            <div class="custom-menu">
                                <div id="shopping-cart">
                                    <div class="shopping-cart-list">
                                        <div class="product product-widget">
                                            <div class="product-thumb">
                                                <img src="./img/thumb-product01.jpg" alt="">
                                            </div>
                                            <div class="product-body">
                                                <div class="product-price">
                                                    $32.50 <span class="qty">x3</span>
                                                </div>
                                                <div class="product-name">
                                                    <a href="#">Product Name Goes Here</a>
                                                </div>
                                            </div>
                                            <button class="cancel-btn">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="shopping-cart-btns">
                                        <button class="main-btn">Xem giỏ</button>
                                        <button class="primary-btn">
                                            Thanh toán<i class="fa fa-arrow-circle-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </c:if>

                    <!-- /Cart -->

                    <!-- Mobile nav toggle-->
                    <li class="nav-toggle">
                        <button class="nav-toggle-btn main-btn icon-btn">
                            <i class="fa fa-bars"></i>
                        </button>
                    </li>
                    <!-- / Mobile nav toggle -->
                </ul>
            </div>
        </div>
        <!-- header -->
    </div>
    <!-- container -->
</header>
<!-- /HEADER -->

<script type="text/javascript">

    $(document).ready(function () {
        $("#searchBtn").click(function (e) {
            /* $("#formSub").submit(); */
            if ($('#name').val() == "") {
                alert("Hãy điền từ khóa cần tìm!");
                e.preventDefault();
            }

            var e = document.getElementById("cbSearch");
            var strUser = e.options[e.selectedIndex].value;
            $('#categoryId').val(strUser);
        });
    });

</script>