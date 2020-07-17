<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><dec:title>Trang chủ</dec:title></title>

<!-- Google font -->
	<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<!-- Bootstrap -->
	<link href="<c:url value='/library/web/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">
	
<!-- Slick -->
	<link type="text/css" rel="stylesheet" href="<c:url value='/library/web/css/slick.css'/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value='/library/web/css/slick-theme.css'/>" />

<!-- nouislider -->
	<link type="text/css" rel="stylesheet" href="<c:url value='/library/web/css/nouislider.min.css'/>" />

<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="<c:url value='/library/web/css/all.css'/>">

<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="<c:url value='/library/web/css/style.css'/>" />

<!-- Pagination -->
	<script src='<c:url value='/library/paging/jquery.twbsPagination.js'/>'	type="text/javascript"></script>

<!-- Jquery -->
<script src="<c:url value='/library/web/js/jquery.min.js'/>"></script>
</head>
<body>
	<%@ include file="/common/web/header.jsp"%>
	<dec:body/>
	<%@ include file="/common/web/footer.jsp"%>
<!-- jQuery Plugins -->
	<script src="<c:url value='/library/web/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/library/web/js/slick.min.js'/>"></script>
	<script src="<c:url value='/library/web/js/nouislider.min.js'/>"></script>
	<script src="<c:url value='/library/web/js/jquery.zoom.min.js'/>"></script>
	<script src="<c:url value='/library/web/js/main.js'/>"></script>

</body>
</html>