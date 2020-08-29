<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>

<!-- FOOTER -->
<footer id="footer" class="section section-grey">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- footer widget -->
            <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="footer">
                    <!-- footer logo -->
                    <div class="footer-logo">
                        <a class="logo" href="#">
                            <img src="<c:url value="/resources/logo/logo.png"/>" alt="">
                        </a>
                    </div>
                    <!-- /footer logo -->

                    <p>Tốt nhất trong lĩnh vực cung cấp máy tính và linh kiện máy tính</p>

                    <!-- footer social -->
                    <ul class="footer-social">
                        <li><a href="https://www.facebook.com/phuong.hoangngoc.792197"><i class="fab fa-facebook-f"></i></a>
                        </li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fab fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fab fa-pinterest"></i></a></li>
                    </ul>
                    <!-- /footer social -->
                </div>
            </div>
            <!-- /footer widget -->
            <c:if test="${not empty USERMODEL}">
                <!-- footer widget -->
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-header">Tài khoản</h3>
                        <ul class="list-linkss">
                            <li><a href="#">Tài khoản của tôi</a></li>
                            <li><a href="#">Sản phẩm yêu thích</a></li>
                            <li><a href="#">So sánh</a></li>
                            <li><a href="#">Thủ tục thanh toán</a></li>
                        </ul>
                    </div>
                </div>
                <!-- /footer widget -->
            </c:if>

            <div class="clearfix visible-sm visible-xs"></div>

            <!-- footer widget -->
            <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="footer">
                    <h3 class="footer-header">Dịch vụ</h3>
                    <ul class="list-linkss">
                        <li><a href="#">Câu hỏi về chúng tôi</a></li>
                        <li><a href="#">Giao hàng và đổi trả</a></li>
                        <li><a href="#">Hướng dẫn giao hàng</a></li>
                        <li><a href="#">Câu hỏi thường gặp</a></li>
                    </ul>
                </div>
            </div>
            <!-- /footer widget -->

            <!-- footer subscribe -->
            <div class="col-md-3 col-sm-6 col-xs-6">
                <div class="footer">
                    <h3 class="footer-header">Giữ kết nối</h3>
                    <p>Nếu bạn quan tâm tới các chương trình khuyến mãi, hãy cho chúng tôi biết thông tin của bạn</p>
                    <form>
                        <div class="form-group">
                            <input class="input" placeholder="Địa chỉ email">
                        </div>
                        <button class="primary-btn">Tham gia</button>
                    </form>
                </div>
            </div>
            <!-- /footer subscribe -->
        </div>
        <!-- /row -->
        <hr>
        <!-- row -->
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center">
                <!-- footer copyright -->
                <div class="footer-copyright">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Hoàn thành &copy;<script>
                    document.write(new Date().getFullYear());
                </script>
                    Cảm ơn bạn đã ghé thăm trang web!</br> <i class="far fa-heart"></i> by Hoàng Phương
                </div>
                <!-- /footer copyright -->
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</footer>
<!-- /FOOTER -->