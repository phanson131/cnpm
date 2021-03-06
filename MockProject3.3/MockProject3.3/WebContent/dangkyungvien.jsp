<%@page import="common.StringProcess"%>
<%@page import="model.bean.DichVu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Starter</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet" href="components/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<!-- <link rel="stylesheet" href="components/Ionicons/css/ionicons.min.css"> -->
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.css">

<link rel="stylesheet" href="dist/css/skin-blue.css">
<link rel="stylesheet" type="text/css"
	href="components/bootstrap-rating.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<style type="text/css">
form{
	width: 80%;
	margin: 0 auto;
	margin-top: 25px;
}
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini sidebar-collapse">
	<div class="wrapper">
		<%@include file="header2.jsp"%>
		<div class="content-wrapper">
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-primary">
							<div class="box-header with-border">
								<h3 class="box-title">Thông tin đăng ký cộng tác viên</h3>
							</div>
							<form role="form" action="">
								<!-- form start -->
								<!-- <div class="box-body"> -->
								<div class="form-group">
									<label for="name">Họ và tên</label> <input type="text"
										name="name" class="form-control" id="name"
										placeholder="Họ và tên">
								</div>
								<div class="form-group">
									<label for="phone">Số điện thoại</label> <input type="text"
										name="phone" class="form-control" id="phone"
										placeholder="Số điện thoại">
									<span class="error"><%=StringProcess.getVaildString((String)request.getAttribute("thongBao"))%></span>
								</div>
								<div class="form-group">
									<label for="age">Năm sinh</label> <input type="text" name="age"
										class="form-control" id="age" placeholder="Tuổi">
								</div>
								<div class="form-group">
									<label for="address">Địa chỉ</label> <input type="text"
										name="address" class="form-control" id="address"
										placeholder="Địa chỉ">
								</div>
								<label>Chuyên môn</label>
								<div class="form-group">
									<select class="form-control select2" name="maDichVu"
											style="width: 80%; display: inline-block;">
											<option value="">-- Chọn chuyên môn --</option>
											<%
												ArrayList<DichVu> listDV = (ArrayList<DichVu>) request.getAttribute("listDV");
												for (DichVu dv : listDV) {
											%>
											<option value="<%=dv.getMaDichVu()%>"><%=dv.getTenDichVu()%></option>
											<%
												}
											%>
										</select>
								</div>
								<div class="box-footer">
									<button type="submit" name="submit" value="submit" class="btn btn-primary">Thêm mới</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
		</div>
		<%@include file="footer.jsp"%>
	</div>
	<script src="components/jQuery/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="components/bootstrap/js/bootstrap.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.js"></script>
</body>
</html>