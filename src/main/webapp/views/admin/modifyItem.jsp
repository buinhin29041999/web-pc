<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-product" />
<c:url var="ItemUrl" value="/admin-item" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Modify Item</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script></script>
</head>

<body>
	<div id="content-wrapper">

		<div class="container-md">
			<div class="row">
				<div class="col-md-12 text-center">
					<h2>
						Modify Item <span class="badge badge-secondary"><i
							class="fas fa-desktop"></i></span>
					</h2>
				</div>
			</div>

			<form id="formSub" enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-4">
						<img src="https://placehold.it/240x240" id="img-upload"
							class="img-thumbnail"
							style="margin-top: 80px; margin-left: 50px; width: 100%">
					</div>
					<div class="col-md-8">
						<div class="row mt30">
							<label class="col-sm-3 control-label text-right">Name</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="name" name="name"
									value="${model.name}" />
							</div>
						</div>
						
						<div class="row mt30">
							<label class="col-sm-3 control-label text-right">Image</label>
							<div class="col-sm-9">
								<div class="form-group">
									<label>Upload Image</label>
									<div class="input-group">
										<span class="input-group-btn"> <span
											class="btn btn-default btn-file"> Browse… <input
												type="file" id="thumbnail" name="thumbnail" accept="image/*">
										</span>
										</span>
									</div>
								</div>

							</div>
						</div>

						<div class="row mt30">
							<label class="col-sm-3 control-label text-right">Short
								Description</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="shortDescription"
									name="shortDescription" value="${model.shortDescription}" />
							</div>
						</div>
						<div class="row mt30">
							<label class="col-sm-3 control-label text-right">Cost</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="price" name="price"
									value="${model.price}" />
							</div>
						</div>
						<div class="row mt30">
							<label class="col-sm-3 control-label text-right">Amount</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="amount"
									name="amount" value="${model.amount}" />
							</div>
						</div>
						<div class="row mt30">
							<label class="col-sm-3 control-label text-right">Type</label>
							<div class="col-sm-9">
								<select name="categoryId" id="categoryId">
									<c:if test="${empty model.categoryId}">
										<option value="">Chọn loại sản phẩm</option>
										<c:forEach var="item" items="${categories}">
											<option value="${item.id}">${item.name}</option>
										</c:forEach>
									</c:if>
									<c:if test="${not empty model.categoryId}">
										<option value="">Chọn loại sản phẩm</option>
										<c:forEach var="item" items="${categories}">
											<option value="${item.id}"
												<c:if test="${item.id==model.categoryId}">
                                            selected="selected"
                                        </c:if>>${item.name}</option>
										</c:forEach>
									</c:if>
								</select>
							</div>
						</div>
						<div class="row mt30">
							<label class="col-sm-3 control-label text-right">Brand</label>
							<div class="col-sm-9">
								<select name="brandId" id="brandId">
									<c:if test="${empty model.brandId}">
										<option value="">Chọn loại sản phẩm</option>
										<c:forEach var="item" items="${suppliers}">
											<option value="${item.id}">${item.name}</option>
										</c:forEach>
									</c:if>
									<c:if test="${not empty model.brandId}">
										<option value="">Chọn loại sản phẩm</option>
										<c:forEach var="item" items="${suppliers}">
											<option value="${item.id}"
												<c:if test="${item.id==model.brandId}">
                                            selected="selected"
                                        </c:if>>${item.name}</option>
										</c:forEach>
									</c:if>
								</select>
							</div>
						</div>
					</div>

				</div>
				<div class="row align-items-center" style="margin-top: 50px;">
					<label for="inputImage" class="col-md-4 text-right">Detail</label>
					<div class="col-md-8">
						<textarea class="form-control" cols="" rows="20" id="content"
							name="content">${model.content}</textarea>
					</div>
				</div>
				<div class="row" style="margin-top: 50px;">
					<div class="col-sm-6">
						<div class="row">
							<div class="col-md-9"></div>
							<div class="col-md-3">
								<c:if test="${not empty model.id}">
									<a href='' class="btn btn-primary" type="button" id="btnAccept"
										data-toggle="modal" data-target="#exampleModal"><i
										class="fas fa-check-circle"></i> Cập nhật</a>
								</c:if>
								<c:if test="${empty model.id}">
									<a href='' class="btn btn-primary" type="button" id="btnAccept"
										data-toggle="modal" data-target="#exampleModal"><i
										class="fas fa-check-circle"></i> Thêm mới</a>
								</c:if>
							</div>

						</div>
					</div>
					<div class="col-sm-6">
						<a href='' class="btn btn-primary" type="button" id="btnCancel"><i
							class="fas fa-ban"></i> Hủy bỏ</a>
					</div>
				</div>
				<input type="hidden" value="${model.id}" id="id" name="id" />
			</form>
		</div>
	</div>

	<script>
		$('#btnAccept').click(function(e) {			
			e.preventDefault();
			var data = {};
			var x = $("form").serializeArray();
			$.each(x, function(i, v) {
				data["" + v.name + ""] = v.value;
			});
			var id = $('#id').val();
			var cost = $('#price').val();
			var num = $('#amount').val();
			var selected_cateId = document.getElementById("categoryId").value;
			var selected_sup = document.getElementById("brandId").value;
			if (cost == "") {
				alert("Cost will default is 0");
			}
			if (num == "") {
				alert("Amount will default is 0");
			}
			if (!isNaN(cost) && !isNaN(num)) {
				if (selected_cateId != "" && selected_sup != "") {
					if (id == "") {
						addSP(data);
					} else {
						updateSP(data);
					}
				} else {
					alert("Type and supplier must be selected!");
				}
			} else {
				alert("Cost and Amount must be a number!");
			}

		});

		function addSP(data) {
			$.ajax({
				url : '${APIurl}',
				type : 'POST',
				contentType : 'application/json',
				dataType : 'json',
				data : JSON.stringify(data),
				success : function(result) {
					alert("Thêm thành công!");
					window.location.href = "${ItemUrl}?type=list";
				},
				error : function(error) {
					alert("Có lỗi xảy ra!");
					console.log(error);
				}
			});
		}

		function updateSP(data) {
			$.ajax({
				url : '${APIurl}',
				type : 'PUT',
				contentType : 'application/json',
				dataType : 'json',
				data : JSON.stringify(data),
				success : function(result) {
					alert("Thêm thành công!");
					window.location.href = "${ItemUrl}?type=list";
				},
				error : function(error) {
					console.log(error);
					alert("Có lỗi xảy ra!");
				}
			});
		}
	</script>
</body>

</html>