<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/library/web/css/font.css'/>" rel="stylesheet"
	rel="stylesheet" type="text/css">
<title>Login</title>
</head>
<body>
	<div class="d-flex justify-content-center h-100">
		<div class="card" style="height: 400px;">
			<div class="card-header">
				<h3>Login</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span> <span><i
						class="fab fa-google-plus-square"></i></span> <span><i
						class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body"><c:if test="${not empty message }"><div class="alert alert-${alert}">${message}</div>
			</c:if>
				<div class="alert alert-${alert}">${message}</div>

				<form action="<c:url value='/dang-nhap'/>" id="formLogin"
					method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control"
							placeholder="Tên đăng nhập" id="userName" name="userName">

					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control" placeholder="Mật khẩu"
							id="passWord" name="passWord">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Remember account
					</div>
					<div class="form-group">
						<input type="submit" value="Login"
							class="btn float-right login_btn">
					</div>
					<input type="hidden" value="login" name="action" />
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Are you haven't any account? <a href="#">Sign up</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Forget password</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>