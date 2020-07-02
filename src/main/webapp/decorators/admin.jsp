<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title>Trang chủ</dec:title></title>
<!-- Custom fonts for this template-->

<link
	href="<c:url value='/library/admin/vendor/fontawesome-free/css/all.min.css'/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value='/library/admin/vendor/bootstrap/js/bootstrap.css'/>"
	rel="stylesheet">
<!-- Page level plugin CSS-->

<link
	href="<c:url value='/library/admin/vendor/datatables/dataTables.bootstrap4.css'/>"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->

<link href="<c:url value='/library/admin/css/sb-admin.css'/>"
	rel="stylesheet" type="text/css">
	<link href="<c:url value='/library/admin/css/modifyItem.css'/>"
	rel="stylesheet" type="text/css">
</head>
<body id="page-top">
	<%@ include file="/common/admin/header.jsp"%>

	<dec:body />


	<!-- Bootstrap core JavaScript-->
	<script
		src="<c:url value='/library/admin/vendor/jquery/jquery.min.js'/>"></script>

	<script
		src="<c:url value='/library/admin/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

	<!-- for pagination -->
	<script
		src="<c:url value='/library/admin/vendor/bootstrap/js/bootstrap.min.js'/>"></script>
	<!-- Core plugin JavaScript-->

	<script
		src="<c:url value='/library/admin/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
	<!-- Page level plugin JavaScript-->

	<script
		src="<c:url value='/library/admin/vendor/chart.js/Chart.min.js'/>"></script>
	<script
		src="<c:url value='/library/admin/vendor/datatables/jquery.dataTables.js'/>"></script>
	<script
		src="<c:url value='/library/admin/vendor/datatables/dataTables.bootstrap4.js'/>"></script>
	<!-- Custom scripts for all pages-->

	<script src="<c:url value='/library/admin/js/sb-admin.min.js'/>"></script>
	<!-- CKeditor -->
	<script
		src="<c:url value='ckeditor/ckeditor.js'/>"></script>
</body>
</html>