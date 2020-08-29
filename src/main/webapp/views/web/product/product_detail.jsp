<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết sản phẩm</title>
</head>
<body>
<!-- BREADCRUMB -->
<div id="breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Trang chủ</a></li>
            <li><a href="#">Danh mục</a></li>
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
            <!--  Product Details -->
            <div class="product product-details clearfix">
                <div class="col-md-6">
                    <div id="product-main-view">
                        <div class="product-view">
                            <img src="<c:url value="/resources/image_slide/main-product01.jpg"/>" alt="">
                        </div>
                        <div class="product-view">
                            <img src="<c:url value="/resources/image_slide/main-product02.jpg"/>" alt="">
                        </div>
                        <div class="product-view">
                            <img src="<c:url value="/resources/image_slide/main-product03.jpg"/>" alt="">
                        </div>
                        <div class="product-view">
                            <img src="<c:url value="/resources/image_slide/main-product04.jpg"/>" alt="">
                        </div>
                    </div>
                    <div id="product-view">
                        <div class="product-view">
                            <img src="<c:url value="/resources/image_slide/main-product01.jpg"/>" alt="">
                        </div>
                        <div class="product-view">
                            <img src="<c:url value="/resources/image_slide/main-product02.jpg"/>" alt="">
                        </div>
                        <div class="product-view">
                            <img src="<c:url value="/resources/image_slide/main-product03.jpg"/>" alt="">
                        </div>
                        <div class="product-view">
                            <img src="<c:url value="/resources/image_slide/main-product04.jpg"/>" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="product-body">
                        <div class="product-label">
                            <span class="sale">-20%</span>
                        </div>
                        <h2 class="product-name">Product Name Goes Here</h2>
                        <h3 class="product-price">$32.50
                            <del class="product-old-price">$45.00</del>
                        </h3>
                        <div>
                            <div class="product-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o empty"></i>
                            </div>
                            <a href="#">3 đánh giá / Thêm đánh giá</a>
                        </div>
                        <p><strong>Tình trạng:</strong> Còn hàng</p>
                        <p><strong>Nhà sản xuất:</strong> E-SHOP</p>
                        <p>Mô tả ngắn</p>
                        <div class="product-btns">
                            <div class="qty-input">
                                <span class="text-uppercase">Số lượng: </span>
                                <input class="input" type="number">
                            </div>
                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Thêm hàng
                            </button>
                            <div class="pull-right">
                                <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                <button class="main-btn icon-btn"><i class="fas fa-exchange-alt"></i></button>
                                <button class="main-btn icon-btn"><i class="fa fa-share-alt"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="product-tab">
                        <ul class="tab-nav">
                            <li class="active"><a data-toggle="tab" href="#tab1">Chi tiết sản phẩm</a></li>
                            <li><a data-toggle="tab" href="#tab2">Đánh giá (3)</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="tab1" class="tab-pane fade in active">
                                <p>Nội dung chi tiết sản phẩm</p>
                            </div>
                            <div id="tab2" class="tab-pane fade in">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="product-reviews">

                                            <div class="single-review">
                                                <div class="review-heading">
                                                    <div><a href="#"><i class="fa fa-user-o"></i> John</a></div>
                                                    <div><a href="#"><i class="fa fa-clock-o"></i> 27 DEC 2017 / 8:0 PM</a>
                                                    </div>
                                                    <div class="review-rating pull-right">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o empty"></i>
                                                    </div>
                                                </div>
                                                <div class="review-body">
                                                    <p>Nội dung bình luận</p>
                                                </div>
                                            </div>

                                            <ul class="reviews-pages">
                                                <li class="active">1</li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">3</a></li>
                                                <li><a href="#"><i class="fa fa-caret-right"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 class="text-uppercase">Đánh giá của bạn</h4>
                                        <p>Địa chỉ email của bạn sẽ được bảo mật</p>
                                        <form class="review-form">
                                            <div class="form-group">
                                                <input class="input" type="text" placeholder="Tên bạn"/>
                                            </div>
                                            <div class="form-group">
                                                <input class="input" type="email" placeholder="Địa chỉ email"/>
                                            </div>
                                            <div class="form-group">
                                                <textarea class="input" placeholder="Bình luận của bạn"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-rating">
                                                    <strong class="text-uppercase">Đánh giá: </strong>
                                                    <div class="stars">
                                                        <input type="radio" id="star5" name="rating" value="5"/><label
                                                            for="star5"><i class="fa fa-star"></i></label>
                                                        <input type="radio" id="star4" name="rating" value="4"/><label
                                                            for="star4"><i class="fa fa-star"></i></label>
                                                        <input type="radio" id="star3" name="rating" value="3"/><label
                                                            for="star3"><i class="fa fa-star"></i></label>
                                                        <input type="radio" id="star2" name="rating" value="2"/><label
                                                            for="star2"><i class="fa fa-star"></i></label>
                                                        <input type="radio" id="star1" name="rating" value="1"/><label
                                                            for="star1"><i class="fa fa-star"></i></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <button class="primary-btn">Gửi đánh giá</button>
                                        </form>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /Product Details -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /section -->

<!-- section -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- section title -->
            <div class="col-md-12">
                <div class="section-title">
                    <h2 class="title">Được xem nhiều</h2>
                </div>
            </div>
            <!-- section title -->

            <!-- Product Single -->
            <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="product product-single">
                    <div class="product-thumb">
                        <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Chi tiết</button>
                        <img src='<c:url value="/resources/image_slide/product04.jpg"/>' alt="">
                    </div>
                    <div class="product-body">
                        <h3 class="product-price">$32.50</h3>
                        <div class="product-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o empty"></i>
                        </div>
                        <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                        <div class="product-btns">
                            <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                            <button class="main-btn icon-btn"><i class="fas fa-exchange-alt"></i></button>
                            <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Thêm hàng
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Product Single -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /section -->
</body>
</html>