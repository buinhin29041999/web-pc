<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp"%>
  <div class="col-md-3">
<h1 class="my-4">Linh kiện máy tính</h1>
				<div class="list-group">
					<a href="<c:url value='/trang-chu'/>" class="list-group-item active"><i class="fas fa-desktop"></i> Sản phẩm
						mới nhẩt</a>						
					<c:forEach var="item" items="${categories.listResult}">
						<a href="<c:url value='/web-sanpham?cateId=${item.id}&page=1&maxPageItem=6&sortName=name&sortBy=desc'/>" class="list-group-item cate">${item.name}</a>										
					</c:forEach></div>
	</div>