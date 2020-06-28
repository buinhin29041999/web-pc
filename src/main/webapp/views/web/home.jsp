<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
</head>

<body>
	<div class="col-lg-9">

		<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img class="d-block img-fluid" src="<c:url value='/resources/image_slide/pc_image_slide3.jpg'/>"
						alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="<c:url value='/resources/image_slide/pc_image_slide4.jpg'/>"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="<c:url value='/resources/image_slide/pc_image_slide5.jpg'/>"
						alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">
				<h2>Product <span class="badge badge-secondary"><i class="fas fa-infinity"></i></span></h2>
			</div>
		</div>

		<div class="row">
			<c:forEach var="item" items="${model.listResult}">
				<div class="col-lg-4 col-md-6 mb-4">
					<div class="card h-100">
						<a href="<c:url value='/item?spId=${item.id}'/>"><img class="card-img-top"
								src="<c:url value='/resources/pc_image/${item.thumbnail}'/>"></a>
						<div class="card-body">
							<h4 class="card-title">
								<a href="<c:url value='/item?spId=${item.id}'/>">${item.name}</a>
							</h4>
							<h5>${item.donGia}đ</h5>
						</div>
						<div class="card-footer">
							<small class="text-muted">&#9733; &#9733; &#9733;
								&#9733; &#9734;</small>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>


	</div>
	<!-- /.col-lg-9 -->

</body>

</html>