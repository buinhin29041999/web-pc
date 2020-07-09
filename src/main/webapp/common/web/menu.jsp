<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp"%>
  <div class="col-md-3">
<h1 class="my-4">Linh kiện máy tính</h1>
				<div class="list-group">
					<a href="<c:url value='/trang-chu'/>" class="list-group-item active"><i class="fas fa-desktop"></i> Sản phẩm
						mới nhẩt</a>
												
					<c:forEach var="item" items="${categories.listResult}">
						<c:url var="linkToProduct" value="/web-sanpham">
							<c:param name="cateId" value="${item.id}"/>
							<c:param name="page" value="1"/>
							<c:param name="maxPageItem" value="6"/>
							<c:param name="sortName" value="name"/>
							<c:param name="sortBy" value="desc"/>
						</c:url>
						<a href="${linkToProduct}" class="list-group-item cate">${item.name}</a>										
					</c:forEach></div>
	</div>