<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url var="APIDeleteUrl" value="/admin-item" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Quản lý sản phẩm</title>
</head>

<body>
	<div id="content-wrapper">

		<div class="container-fluid">

			<!-- DataTables Example -->
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table"></i> Danh sách sản phẩm &nbsp;&nbsp;&nbsp;
					<a href='<c:url value="/admin-item?type=edit"/>'
						class="btn btn-primary" type="button" data-toggle="tooltip"
						title="Thêm sản phẩm"><i class="fas fa-plus-circle"></i></a> <a
						href='' class="btn btn-primary" type="button"
						data-toggle="tooltip" title="Xóa sản phẩm" id="btnDelete"><i
						class="fas fa-trash-alt"></i></a>
				</div>

				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th><input type="checkbox" id="checkAll"></th>
									<th>Name</th>
									<th>Description</th>
									<th>Detail</th>
									<th>Cost</th>
									<th>Amount</th>
									<th>Type</th>
									<th>Supplier</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${model.listResult}">
									<tr
										style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;">
										<td><input type="checkbox" id="checkbox_${item.id}"
											value="${item.id}"></td>
										<td>${item.name}</td>
										<td>${item.shortDescription}</td>
										<td>${item.context}</td>
										<td>${item.donGia}</td>
										<td>${item.soLuong}</td>
										<td>${item.categoryId}</td>
										<td>${item.nhaCungCapId}</td>
										<td><c:url var="modify" value="/admin-item">
												<c:param name="type" value="edit" />
												<c:param name="id" value="${item.id}" />
											</c:url> <a href="${modify}" class="btn btn-primary" role="button"
											data-toggle="tooltip" title="Sửa"><i
												class="fas fa-wrench"></i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="card-footer small text-muted">Updated yesterday at
					11:59 AM</div>
			</div>

		</div>
		<!-- /.container-fluid -->

	</div>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Bạn có muốn đăng xuất?</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary"
						href='<c:url value="/dang-nhap?action=login"/>'>Logout</a>
				</div>
			</div>
		</div>
	</div>
	<script>
		$("#btnDelete").click(
				function() {
					var data = {};
					var ids = $('tbody input[type=checkbox]:checked').map(function() {
								return $(this).val();
							}).get();
					data['ids'] = ids;
					deleteSP(data);
				});

		function deleteSP(data) {
			$.ajax({
				url : '${APIurl}',
				type : 'DELETE',
				contentType : 'application/json',
				data : JSON.stringify(data),
				success : function(result) {
					window.location.href = "${APIDeleteUrl}?type=list";
				},
				error : function(error) {
					console.log(error);
				}
			});
		}
	</script>
</body>

</html>