<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Modify Item</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

            <div class="container-md">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2>Modify Item <span class="badge badge-secondary"><i class="fas fa-desktop"></i></span></h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">

                    </div>
                    <div class="col-md-8">
                        <div class="row mt30">
                            <div class="col-md-3">
                                <label class="control-label no-padding-right">Name</label>
                            </div>
                            <div class="col-md-9">
                                <input type="text" class="form-control" id="name" name="name" value="" />
                            </div>
                        </div>
                        <div class="row mt30">
                            <label class="col-sm-3 control-label no-padding-right">Image</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="thumbnail" name="thumnail" value="" />
                            </div>
                        </div>
                        <div class="row mt30">
                            <label class="col-sm-3 control-label no-padding-right">Short Description</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="shortDescription" name="shortDescription"
                                    value="" />
                            </div>
                        </div>
                        <div class="row mt30">
                            <label class="col-sm-3 control-label no-padding-right">Cost</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="donGia" name="donGia" value="" />
                            </div>
                        </div>
                        <div class="row mt30">
                            <label class="col-sm-3 control-label no-padding-right">Amount</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="soLuong" name="soLuong" value="" />
                            </div>
                        </div>
                        <div class="row mt30">
                            <label class="col-sm-3 control-label no-padding-right">Type</label>
                            <div class="col-sm-9">
                                <select name="categoryId" id="categoryId">
                                    <option value="volvo">Volvo</option>
                                    <option value="saab">Saab</option>
                                    <option value="mercedes">Mercedes</option>
                                    <option value="audi">Audi</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mt30">
                            <label class="col-sm-3 control-label text-right">Supplier</label>
                            <div class="col-sm-9">
                                <select name="nhaCungCapId" id="nhaCungCapId">
                                    <option value="volvo">Volvo</option>
                                    <option value="saab">Saab</option>
                                    <option value="mercedes">Mercedes</option>
                                    <option value="audi">Audi</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row align-items-center mt30">
                            <label for="inputImage" class="col-md-3 col-form-label text-right">Detail</label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="context" cols="60" rows="10" id="context">
                                </textarea>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        var editor = '';
        $(document).ready(function () {
            editor = CKEDITOR.replace('context');
        });
    </script>
</body>

</html>