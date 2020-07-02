<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body>

	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="sidebar navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="index.html"> <i class="fas fa-desktop"></i> <span>Sản
						phẩm</span>
				</a></li>
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
						class="fas fa-fw fa-folder"></i> <span>Pages</span>
				</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Login Screens:</h6>
					<a class="dropdown-item" href="login.html">Login</a> <a class="dropdown-item"
						href="register.html">Register</a> <a class="dropdown-item" href="forgot-password.html">Forgot
						Password</a>
					<div class="dropdown-divider"></div>
					<h6 class="dropdown-header">Other Pages:</h6>
					<a class="dropdown-item" href="404.html">404 Page</a> <a class="dropdown-item"
						href="blank.html">Blank Page</a>
				</div>
			</li>
			<li class="nav-item"><a class="nav-link" href="charts.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
				</a></li>
			<li class="nav-item"><a class="nav-link" href='<c:url value='/admin-sanpham-list'/>'> <i
					class="fas fa-fw fa-table"></i> <span>Sản phẩm</span>
				</a></li>
		</ul>

		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- DataTables Example -->
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table"></i> Danh sách sản phẩm
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>Name</th>
										<th>Description</th>
										<th>Detail</th>
										<th>Cost</th>
										<th>Amount</th>
										<th>Type</th>
										<th>Supplier</th>
										<th>Create date</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${model.listResult}">
										<tr
											style="overflow: hidden; font-family: Arial, Helvetica, sans-serif;font-size: 12px;text-align: justify;">
											<td>${item.name}</td>
											<td>${item.shortDescription}</td>
											<td>${item.context}</td>
											<td>${item.donGia}</td>
											<td>${item.soLuong}</td>
											<td>${item.categoryId}</td>
											<td>${item.nhaCungCapId}</td>
											<td><a href='<c:url value="/admin-modifyItem"/>' class="btn btn-primary"
													role="button">Modify</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="card-footer small text-muted">Updated yesterday
						at 11:59 AM</div>
				</div>

			</div>
			<!-- /.container-fluid -->

			<!-- Sticky Footer -->
			<footer class="sticky-footer">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright © Your Website 2019</span>
					</div>
				</div>
			</footer>

		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Bạn có muốn đăng xuất?</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href='<c:url value="/dang-nhap?action=login"/>'>Logout</a>
				</div>
			</div>
		</div>
	</div>



</body>

</html>