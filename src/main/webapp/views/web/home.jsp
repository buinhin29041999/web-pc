<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<html>

<head>

	<meta charset="UTF-8">



</head>

<body>
			<div class="col-md-9">	
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