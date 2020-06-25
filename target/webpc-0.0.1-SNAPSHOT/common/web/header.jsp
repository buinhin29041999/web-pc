<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="<c:url value='/trang-chu'/>"><i class="fas fa-home"></i> Trang
			chủ</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="<c:url value='/trang-chu'/>"><i class="fab fa-product-hunt"></i> Sản phẩm<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Liên hệ</a></li>
				<c:if test="${not empty USERMODEL }">
					<li class="nav-item"><a class="nav-link" href="#">Chào mừng, ${USERMODEL.fullName}</a></li>
					
					<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#logoutModal"><i class="fas fa-sign-out-alt"></i> Thoát</a></li>
					
				</c:if>
				<c:if test="${empty USERMODEL }">
					<li class="nav-item"><a class="nav-link" href="<c:url value='/dang-nhap?action=login'/>"><i class="fas fa-sign-in-alt"></i> Đăng nhập</a></li>
				</c:if>

			</ul>
		</div>
	</div>
</nav>
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Thông báo!</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Bạn có muốn đăng xuất?</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy</button>
					<a class="btn btn-primary" href='<c:url value="/dang-nhap?action=logout"/>'>Đăng xuất</a>
				</div>
			</div>
		</div>
	</div>