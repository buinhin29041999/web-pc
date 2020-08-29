<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!-- NAVIGATION -->
<div id="navigation">
    <!-- container -->
    <div class="container">
        <div id="responsive-nav">
            <!-- category nav -->
            <div class="category-nav show-on-click">
                <span class="category-header">Danh mục <i class="fas fa-bars"></i></span>
                <ul class="category-list">
                    <li class="dropdown side-dropdown"><a class="dropdown-toggle"
                                                          data-toggle="dropdown" aria-expanded="true">Laptop<i
                            class="fa fa-angle-right"></i></a>
                        <div class="custom-menu">

                            <div class="row">
                                <div class="col-md-4">
                                    <ul class="list-links">
                                        <li>
                                            <h3 class="list-links-title">Loại laptop</h3>
                                        </li>
                                        <li><a href="#">Tên nhà sản xuất</a></li>

                                    </ul>
                                    <hr class="hidden-md hidden-lg">
                                </div>

                            </div>
                            <div class="row hidden-sm hidden-xs">
                                <div class="col-md-12">
                                    <hr>
                                    <a class="banner banner-1" href="#"> <img
                                            src='<c:url value="/resources/banner/laptop.jpg"/>'
                                            alt="">
                                        <div class="banner-caption text-center">
                                            <h2 class="white-color">Sản phẩm mới</h2>
                                            <h3 class="white-color font-weak">Khuyến mãi đặc biệt</h3>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="dropdown side-dropdown"><a class="dropdown-toggle"
                                                          data-toggle="dropdown" aria-expanded="true">Máy tính để bàn <i
                            class="fa fa-angle-right"></i></a>
                        <div class="custom-menu">
                            <div class="row">
                                <div class="col-md-4">
                                    <ul class="list-links">
                                        <li>
                                            <h3 class="list-links-title">Categories</h3>
                                        </li>
                                        <li><a href="#">Women’s Clothing</a></li>
                                        <li><a href="#">Men’s Clothing</a></li>
                                        <li><a href="#">Phones & Accessories</a></li>
                                        <li><a href="#">Jewelry & Watches</a></li>
                                        <li><a href="#">Bags & Shoes</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-4 hidden-sm hidden-xs">
                                    <a class="banner banner-2" href="#"> <img
                                            src="<c:url value="/resources/banner/desktop.jpg"/>"
                                            alt="">
                                        <div class="banner-caption">
                                            <h3 class="white-color">
                                                NEW<br>COLLECTION
                                            </h3>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li class="dropdown side-dropdown"><a class="dropdown-toggle"
                                                          data-toggle="dropdown" aria-expanded="true">Linh kiện - Phụ
                        kiện <i class="fa fa-angle-right"></i>
                    </a>
                        <div class="custom-menu">
                            <div class="row">
                                <div class="col-md-4">
                                    <ul class="list-links">
                                        <li>
                                            <h3 class="list-links-title">Linh kiện</h3>
                                        </li>
                                        <c:forEach var="item" items="${linhkien.listResult}">
                                            <li><a href="#">${item.name}</a></li>
                                        </c:forEach>

                                    </ul>
                                </div>

                                <div class="col-md-4">
                                    <ul class="list-links">
                                        <li>
                                            <h3 class="list-links-title">Phụ kiện</h3>
                                        </li>
                                        <c:forEach var="item" items="${phukien.listResult}">
                                            <li><a href="#">${item.name}</a></li>
                                        </c:forEach>

                                    </ul>
                                </div>

                                <div class="col-md-4 hidden-sm hidden-xs">
                                    <a class="banner banner-2" href="#"> <img
                                            src="<c:url value="/resources/banner/cpu.jpg"/>"
                                            alt="">
                                        <div class="banner-caption">
                                            <h3 class="white-color">
                                                NEW<br>COLLECTION
                                            </h3>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>

                    <li><a href='<c:url value="/product?categoryId=0"/>'>Xem tất cả</a></li>
                </ul>
            </div>
            <!-- /category nav -->

            <!-- menu nav -->
            <div class="menu-nav">
                <!-- <span class="menu-header">Trang chủ <i class="fa fa-bars"></i></span> -->
                <ul class="menu-list">
                    <li><a href="<c:url value='/trang-chu'/>"><i
                            class="fas fa-home"></i> Trang chủ</a></li>
                    <li><a href="<c:url value="/checkout"/>">Nhà sản xuất</a></li>
                    <li class="dropdown mega-dropdown full-width"><a
                            class="dropdown-toggle" data-toggle="dropdown"
                            aria-expanded="true">Men <i class="fa fa-caret-down"></i></a>
                        <div class="custom-menu">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="hidden-sm hidden-xs">
                                        <a class="banner banner-1" href="#"> <img
                                                src="./img/banner06.jpg" alt="">
                                            <div class="banner-caption text-center">
                                                <h3 class="white-color text-uppercase">Women’s</h3>
                                            </div>
                                        </a>
                                        <hr>
                                    </div>
                                    <ul class="list-links">
                                        <li>
                                            <h3 class="list-links-title">Categories</h3>
                                        </li>
                                        <li><a href="#">Women’s Clothing</a></li>
                                        <li><a href="#">Men’s Clothing</a></li>
                                        <li><a href="#">Phones & Accessories</a></li>
                                        <li><a href="#">Jewelry & Watches</a></li>
                                        <li><a href="#">Bags & Shoes</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-3">
                                    <div class="hidden-sm hidden-xs">
                                        <a class="banner banner-1" href="#"> <img
                                                src="./img/banner07.jpg" alt="">
                                            <div class="banner-caption text-center">
                                                <h3 class="white-color text-uppercase">Men’s</h3>
                                            </div>
                                        </a>
                                    </div>
                                    <hr>
                                    <ul class="list-links">
                                        <li>
                                            <h3 class="list-links-title">Categories</h3>
                                        </li>
                                        <li><a href="#">Women’s Clothing</a></li>
                                        <li><a href="#">Men’s Clothing</a></li>
                                        <li><a href="#">Phones & Accessories</a></li>
                                        <li><a href="#">Jewelry & Watches</a></li>
                                        <li><a href="#">Bags & Shoes</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-3">
                                    <div class="hidden-sm hidden-xs">
                                        <a class="banner banner-1" href="#"> <img
                                                src="./img/banner08.jpg" alt="">
                                            <div class="banner-caption text-center">
                                                <h3 class="white-color text-uppercase">Accessories</h3>
                                            </div>
                                        </a>
                                    </div>
                                    <hr>
                                    <ul class="list-links">
                                        <li>
                                            <h3 class="list-links-title">Categories</h3>
                                        </li>
                                        <li><a href="#">Women’s Clothing</a></li>
                                        <li><a href="#">Men’s Clothing</a></li>
                                        <li><a href="#">Phones & Accessories</a></li>
                                        <li><a href="#">Jewelry & Watches</a></li>
                                        <li><a href="#">Bags & Shoes</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-3">
                                    <div class="hidden-sm hidden-xs">
                                        <a class="banner banner-1" href="#"> <img
                                                src="./img/banner09.jpg" alt="">
                                            <div class="banner-caption text-center">
                                                <h3 class="white-color text-uppercase">Bags</h3>
                                            </div>
                                        </a>
                                    </div>
                                    <hr>
                                    <ul class="list-links">
                                        <li>
                                            <h3 class="list-links-title">Categories</h3>
                                        </li>
                                        <li><a href="#">Women’s Clothing</a></li>
                                        <li><a href="#">Men’s Clothing</a></li>
                                        <li><a href="#">Phones & Accessories</a></li>
                                        <li><a href="#">Jewelry & Watches</a></li>
                                        <li><a href="#">Bags & Shoes</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li><a href='<c:url value="/product_detail"/>'>Khuyến mãi</a></li>
                    <li><a href='<c:url value="/product"/>'>Liên hệ</a></li>
                </ul>
            </div>
            <!-- menu nav -->
        </div>
    </div>
    <!-- /container -->
</div>
<!-- /NAVIGATION -->