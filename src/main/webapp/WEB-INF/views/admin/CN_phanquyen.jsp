<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Chức vụ</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css"
	href="<c:url value = "/resources/css/admin.css"/>">
<script type="text/javascript"
	src="<c:url value = "/resources/js/jquery.js"/>"></script>

</head>
<body>
	<div id="wrap_header">
		<div id="banner_header">
			<img src="<c:url value = "/resources/images/banner/logonew.png"/>" />
		</div>
		<!--End banner_header -->
	</div>
	<!--End wrap_header-->
	<div id="wrapper">
		<div id="wrap_main">
			<div id="wrap_left">
				<div class="menu_left">
					<ul>
						<li><a href="/k54/admin/logsystem.spms">Nhật ký hệ thống</a></li>
						<li><a>Cập nhật danh mục</a>
							<ul>
								<li><a href="/k54/admin/updatesalary.spms">Ngạch lương</a></li>
								<li><a href="/k54/admin/updatechucvu.spms">Chức vụ</a></li>
								<li><a href="/k54/admin/updatehocham.spms">Học hàm</a></li>
								<li><a href="/k54/admin/updatehocvi.spms">Học vị</a></li>
							</ul></li>
						<li><a href="/k54/admin/phanquyen.spms">Phân quyền</a></li>
						<li><a href="/k54/admin/taotaikhoan.spms">Tạo tài khoản</a></li>
						<li><a href="/k54/admin/duyettaikhoan.spms">Duyệt tài
								khoản khách</a></li>
					</ul>
				</div>
			</div>
			<!--End wrap_left-->
			<div id="wrap_center">
				<div class="title_home">
					<a>Phân quyền</a>
				</div>
				<div class="list_data">
					<form name="edit_phanquyen"
						action="/k54/admin/phanquyen.spms?manager=capnhat&iduser=${phanquyen.iduser}"
						method="POST">
						<table class="boloc" cellspacing="0" cellpadding="1"
							style="width: 700px">
							<tr>
								<td style="width: 20%;"><label>Username</label></td>
								<td>${phanquyen.username }</td>
							</tr>
							<tr>
								<td style="width: 20%;"><label>Họ tên</label></td>
								<td>${phanquyen.soyeulylich.hoten }</td>
							</tr>
							<tr>
								<td style="width: 20%;"><label>Đơn vị</label></td>
								<td>${phanquyen.soyeulylich.donviquanly.ten }</td>
							</tr>
							<tr>
								<td style="width: 20%;"><label>Phòng ban</label></td>
								<td>${phanquyen.soyeulylich.phongban.ten }</td>
							</tr>

							<tr>
								<td><label>Email</label></td>
								<td>${phanquyen.email }</td>
							</tr>
							<tr>
								<td><label>Phân quyền</label></td>
								<td><select name="permission">
										<c:if test="${phanquyen.permission == 0 }">
											<option value="0" selected>Khách</option>
											<option value="1">Cán bộ</option>
											<option value="2">Quản lý phòng ban</option>
											<option value="3">Quản lý viện</option>
											<option value="4">Quản trị hệ thống</option>
										</c:if>
										<c:if test="${phanquyen.permission == 1 }">
											<option value="0">Khách</option>
											<option value="1" selected>Cán bộ</option>
											<option value="2">Quản lý phòng ban</option>
											<option value="3">Quản lý viện</option>
											<option value="4">Quản trị hệ thống</option>
										</c:if>
										<c:if test="${phanquyen.permission == 2 }">
											<option value="0">Khách</option>
											<option value="1">Cán bộ</option>
											<option value="2" selected>Quản lý phòng ban</option>
											<option value="3">Quản lý viện</option>
											<option value="4">Quản trị hệ thống</option>
										</c:if>
										<c:if test="${phanquyen.permission == 3 }">
											<option value="0">Khách</option>
											<option value="1">Cán bộ</option>
											<option value="2">Quản lý phòng ban</option>
											<option value="3" selected>Quản lý viện</option>
											<option value="4">Quản trị hệ thống</option>
										</c:if>
										<c:if test="${phanquyen.permission == 4 }">
											<option value="0">Khách</option>
											<option value="1">Cán bộ</option>
											<option value="2">Quản lý phòng ban</option>
											<option value="3">Quản lý viện</option>
											<option value="4" selected>Quản trị hệ thống</option>
										</c:if>
										<c:if test="${phanquyen.permission == 5 }">
											<option value="0" selected>Khách</option>
											<option value="1">Cán bộ</option>
											<option value="2">Quản lý phòng ban</option>
											<option value="3">Quản lý viện</option>
											<option value="4">Quản trị hệ thống</option>
										</c:if>

								</select></td>
							</tr>
						</table>

						<div style="text-align: center; margin-top: 20px;">
							<input type="submit" class="button" value="Cập nhật" />
						</div>


					</form>

				</div>
				<!--End list_data-->

			</div>
			<!--End wrap_center-->
			<div class="clear"></div>
		</div>
		<!--End wrap_main -->
		<div class="clear"></div>
	</div>
	<!--End wrapper-->
	<div id="wrap_footer">
		<div id="wrap_footer_sub">
			<ul>
				<li>Bản quyền thuộc về Viện Khoa học và Công nghệ Việt Nam.</li>
				<li>Địa chỉ: 18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội. Email:
					thongtin@vast.vn</li>
				<li>Khi phát hành lại thông tin trên Website, cần ghi rõ nguồn:
					"Viện Khoa học và Công nghệ Việt Nam".</li>
			</ul>
		</div>
	</div>
	<!--End wrap_footer-->
</body>
</html>
