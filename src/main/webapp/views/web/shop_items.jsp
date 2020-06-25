<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản phẩm</title>
</head>
<body>
	<!-- Page Content -->
	<div class="col-lg-9">
			<c:forEach var="item" items="${model.listResult}">
			
				<div class="card mt-4">
					<img class="card-img-top img-fluid"
						src="<c:url value='/resources/item_img/dell_optiplex.jpg'/>" alt="">
					<div class="card-body">
						<h3 class="card-title">${item.name}</h3>
						<h4>${item.donGia}đ</h4>
						<p class="card-text">
							${item.context}
							</p>						
						<span class="text-warning">&#9733; &#9733; &#9733; &#9733;
							&#9734;</span> 4.0 sao
					</div>
				</div>
				<!-- /.card -->

				<div class="card card-outline-secondary my-4">
					<div class="card-header">Đánh giá sản phẩm</div>
					<div class="card-body">
						<p>cấu hình cao giá cả hợp lý.</p>
						<small class="text-muted">Posted by Vương on 3/1/20</small>
						<hr>
						<p>giao hàng nhanh.</p>
						<small class="text-muted">Posted by Phương on 3/1/20</small>
						<hr>
						<p>chất lượng tốt, ổn định, bền đẹp.</p>
						<small class="text-muted">Posted by Anonymous on 3/1/20</small>
						<hr>
						<a href="#" class="btn btn-success">Để lại đánh giá</a>
					</div>
				</div>
				<!-- /.card -->

		

</c:forEach>
	</div>
			<!-- /.col-lg-9 -->
</body>
</html>