<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title>Trang chủ</dec:title></title>
<!-- Bootstrap core CSS -->
<script src="<c:url value='/library/web/vendor/jquery/jquery.min.js'/>"></script>
<link
	href="<c:url value='/library/web/vendor/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value='/library/web/css/all.css'/>"
	rel="stylesheet" type="text/css">
<script src='<c:url value='/library/paging/jquery.twbsPagination.js'/>'
	type="text/javascript"></script>
<!-- Custom styles for trang chu  -->

<link href="<c:url value='/library/web/css/shop-homepage.css'/>"
	rel="stylesheet" type="text/css">

<!-- Custom style cho cac trang item -->
<link href="<c:url value='/library/web/css/shop-item.css'/>"
	rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="/common/web/header.jsp"%>
<div class="container">
		<div class="row">
	<%@ include file="/common/web/menu.jsp"%>
	
	<dec:body />
	
</div></div>
	<%@ include file="/common/web/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->


	<script src="<c:url value='/library/web/vendor/jquery/jq.js'/>"></script>

	<script
		src="<c:url value='/library/web/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script
		src="<c:url value='/library/web/vendor/bootstrap/js/bootstrap.min.js'/>"></script>

</body>
</html>