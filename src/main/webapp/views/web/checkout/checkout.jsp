<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thanh toán</title>
</head>
<body>
<!-- BREADCRUMB -->
<div id="breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Trang chủ</a></li>
            <li class="active">Thanh toán</li>
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
            <form id="checkout-form" class="clearfix">
                <div class="col-md-6">
                    <div class="billing-details">
                        <p>Đã có tài khoản ? <a href="#"><b>Đăng nhập</b></a></p>
                        <div class="section-title">
                            <h3 class="title">Chi tiết hóa đơn</h3>
                        </div>
                        <div class="form-group">
                            <input class="input" type="text" name="first-name" placeholder="Họ đệm">
                        </div>
                        <div class="form-group">
                            <input class="input" type="text" name="last-name" placeholder="Tên">
                        </div>
                        <div class="form-group">
                            <input class="input" type="email" name="email" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <input class="input" type="text" name="address" placeholder="Địa chỉ">
                        </div>
                        <div class="form-group">
                            <input class="input" type="tel" name="tel" placeholder="Số điện thoại">
                        </div>
                        <div class="form-group">
                            <div class="input-checkbox">
                                <input type="checkbox" id="register">
                                <label class="font-weak" for="register">Tạo tài khoản</label>
                                <div class="caption">
                                    <p>Tên đăng nhập.
                                    <p>
                                        <input class="input" type="text" name="" placeholder="Tên tài khoản">
                                    <p>Mật khẩu.
                                    <p>
                                        <input class="input" type="password" name="password"
                                               placeholder="Nhập mật khẩu">
                                    <p>Nhập lại mật khẩu.
                                    <p>
                                        <input class="input" type="password" name="password"
                                               placeholder="Nhập lại mật khẩu">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="shiping-methods">
                        <div class="section-title">
                            <h4 class="title">Phương thức vẫn chuyển</h4>
                        </div>
                        <div class="input-checkbox">
                            <input type="radio" name="shipping" id="shipping-1" checked>
                            <label for="shipping-1">Vận chuyển miễn phí - $0.00</label>
                            <div class="caption">
                                <p>Giá 0đ
                                <p>
                            </div>
                        </div>
                        <div class="input-checkbox">
                            <input type="radio" name="shipping" id="shipping-2">
                            <label for="shipping-2">Tiêu chuẩn - $4.00</label>
                            <div class="caption">
                                <p>Giá tiêu chuẩn
                                <p>
                            </div>
                        </div>
                    </div>

                    <div class="payments-methods">
                        <div class="section-title">
                            <h4 class="title">Phương thức thanh toán</h4>
                        </div>
                        <div class="input-checkbox">
                            <input type="radio" name="payments" id="payments-1" checked>
                            <label for="payments-1">Thanh toán qua ngân hàng</label>
                            <div class="caption">
                                <p>Thanh toán qua ngân hàngggggggggg
                                <p>
                            </div>
                        </div>
                        <div class="input-checkbox">
                            <input type="radio" name="payments" id="payments-2">
                            <label for="payments-2">Thanh toán khi nhận hàng</label>
                            <div class="caption">
                                <p>Thanh toán bằng tiền mặt trả khi giao hàng
                                <p>
                            </div>
                        </div>
                        <div class="input-checkbox">
                            <input type="radio" name="payments" id="payments-3">
                            <label for="payments-3">Thanh toán bằng ví điện tử</label>
                            <div class="caption">
                                <p>Thanh toán bằng ví điện tử
                                <p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="order-summary clearfix">
                        <div class="section-title">
                            <h3 class="title">Các sản phẩm đã đặt</h3>
                        </div>
                        <table class="shopping-cart-table table">
                            <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th></th>
                                <th class="text-center">Giá</th>
                                <th class="text-center">Số lượng</th>
                                <th class="text-center">Tổng giá</th>
                                <th class="text-right"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="thumb"><img src="./img/thumb-product01.jpg" alt=""></td>
                                <td class="details">
                                    <a href="#">Product Name Goes Here</a>
                                    <ul>
                                        <li><span>Size: XL</span></li>
                                        <li><span>Color: Camelot</span></li>
                                    </ul>
                                </td>
                                <td class="price text-center"><strong>$32.50</strong><br>
                                    <del class="font-weak"><small>$40.00</small></del>
                                </td>
                                <td class="qty text-center"><input class="input" type="number" value="1"></td>
                                <td class="total text-center"><strong class="primary-color">$32.50</strong></td>
                                <td class="text-right">
                                    <button class="main-btn icon-btn"><i class="fas fa-times"></i></button>
                                </td>
                            </tr>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th class="empty" colspan="3"></th>
                                <th>Tổng giá</th>
                                <th colspan="2" class="sub-total">$97.50</th>
                            </tr>
                            <tr>
                                <th class="empty" colspan="3"></th>
                                <th>Vận chuyển</th>
                                <td colspan="2">Free Shipping</td>
                            </tr>
                            <tr>
                                <th class="empty" colspan="3"></th>
                                <th>Tổng số</th>
                                <th colspan="2" class="total">$97.50</th>
                            </tr>
                            </tfoot>
                        </table>
                        <div class="pull-right">
                            <button class="primary-btn">Đặt hàng</button>
                        </div>
                    </div>

                </div>
            </form>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /section -->
</body>
</html>