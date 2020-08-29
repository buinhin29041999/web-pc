<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách sản phẩm</title>
</head>
<body>
<!-- BREADCRUMB -->
<div id="breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Trang chủ</a></li>
            <li class="active">Sản phẩm</li>
        </ul>
    </div>
</div>
<!-- /BREADCRUMB -->
<!-- section -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- ASIDE -->
            <div id="aside" class="col-md-3">
                <!-- aside widget -->
                <div class="aside">
                    <h3 class="aside-title">Lựa chọn theo: </h3>

                    <ul class="filter-list">
                        <li><span class="text-uppercase">Nhà sản xuất:</span></li>
                        <li><a href="#">Dell</a></li>
                        <li><a href="#">Asus</a></li>
                    </ul>

                    <ul class="filter-list">
                        <li><span class="text-uppercase">Giá:</span></li>
                        <li><a href="#">Thấp nhất: $20.00</a></li>
                        <li><a href="#">Cao nhất: $120.00</a></li>
                    </ul>

                    <button class="primary-btn">Xóa tất cả</button>
                </div>
                <!-- /aside widget -->

                <!-- aside widget -->
                <div class="aside">
                    <h3 class="aside-title">Chọn giá</h3>
                    <div id="price-slider"></div>
                </div>
                <!-- aside widget -->

                <!-- aside widget -->
                <div class="aside">
                    <h3 class="aside-title">Chọn nhà sản xuất</h3>
                    <ul class="list-links">
                        <li><a href="#">Nike</a></li>
                        <li><a href="#">Adidas</a></li>
                        <li><a href="#">Polo</a></li>
                        <li><a href="#">Lacost</a></li>
                    </ul>
                </div>
                <!-- /aside widget -->

                <!-- aside widget -->
                <div class="aside">
                    <h3 class="aside-title">Top Rated Product</h3>
                    <!-- widget product -->
                    <div class="product product-widget">
                        <div class="product-thumb">
                            <img src="./img/thumb-product01.jpg" alt="">
                        </div>
                        <div class="product-body">
                            <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                            <h3 class="product-price">$32.50
                                <del class="product-old-price">$45.00</del>
                            </h3>
                            <div class="product-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o empty"></i>
                            </div>
                        </div>
                    </div>
                    <!-- /widget product -->

                    <!-- widget product -->
                    <div class="product product-widget">
                        <div class="product-thumb">
                            <img src="./img/thumb-product01.jpg" alt="">
                        </div>
                        <div class="product-body">
                            <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                            <h3 class="product-price">$32.50</h3>
                            <div class="product-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o empty"></i>
                            </div>
                        </div>
                    </div>
                    <!-- /widget product -->
                </div>
                <!-- /aside widget -->
            </div>
            <!-- /ASIDE -->

            <!-- MAIN -->
            <div id="main" class="col-md-9">
                <!-- store top filter -->
                <div class="store-filter clearfix">
                    <div class="pull-left">
                        <div class="sort-filter">
                            <span class="text-uppercase">Sắp xếp:</span>
                            <select class="input">
                                <option value="0">Tên</option>
                                <option value="0">Giá tiền</option>
                                <option value="0">Lượt thích</option>
                            </select>
                            <a href="#" class="main-btn icon-btn"><i class="fa fa-arrow-down"></i></a>
                        </div>
                    </div>
                    <div class="pull-right">
                        <div class="page-filter">
                            <span class="text-uppercase">Hiển thị:</span>
                            <select class="input">
                                <option value="0">10</option>
                                <option value="1">20</option>
                                <option value="2">30</option>
                            </select>
                        </div>
                        <ul class="store-pages">
                            <li><span class="text-uppercase">Trang:</span></li>
                            <li class="active">1</li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#"><i class="fa fa-caret-right"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- /store top filter -->

                <!-- STORE -->
                <div id="store">
                    <!-- row -->
                    <div class="row">
                        <c:forEach var="item" items="${model.listResult}">
                            <!-- Product Single -->
                            <div class="col-md-4 col-sm-6 col-xs-6">
                                <div class="product product-single">
                                    <div class="product-thumb">
                                        <div class="product-label">
                                            <span>Mới</span>
                                            <span class="sale">-20%</span>
                                        </div>
                                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Chi tiết
                                        </button>
                                        <img src='<c:url value="/resources/image_slide/product01.jpg"/>' alt="">
                                    </div>
                                    <div class="product-body">
                                        <h3 class="product-price">${item.price}
                                            <del class="product-old-price">$45.00</del>
                                        </h3>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o empty"></i>
                                        </div>
                                        <h2 class="product-name"><a href="#">${item.name}</a></h2>
                                        <div class="product-btns">
                                            <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                            <button class="main-btn icon-btn"><i class="fas fa-exchange-alt"></i>
                                            </button>
                                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i>
                                                Thêm hàng
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /Product Single -->
                        </c:forEach>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /STORE -->
            </div>
            <!-- /MAIN -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /section -->
</body>
</html>