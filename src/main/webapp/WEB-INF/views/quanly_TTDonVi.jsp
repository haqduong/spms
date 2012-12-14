<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Quản lý thông tin đơn vị</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/resources/css/stype.css"/>">
<script type="text/javascript"
	src="<c:url value = "/resources/js/jquery.js"/>"></script>
</head>
<body>
	<div id="wrapper">

		<div id="wrap_header">
			<div id="banner_header">
				<h1 class="stitle_web">Viện khoa học và công nghệ Việt Nam</h1>
			</div>
			<!--End banner_header -->
			<div id="nav_menu">
				<div class="header-row-1">
					<ul>
						<li><a href="#">Trang chủ</a></li>
						<li><a href="#">Tin tức - thông báo</a>
							<ul>
								<li><a href="#">Hoạt động</a></li>
								<li><a href="#">Tin KH trong nước</a></li>
								<li><a href="#">Tin KH quốc tế</a></li>
								<li><a href="#">Thông báo</a></li>
							</ul></li>
						<li><a href="#">Đơn vị</a>
							<ul>
								<li><a href="#">Viện toán học</a>
									<ul>
										<li><a href="#">Giới thiệu chung</a></li>
										<li><a href="#">Danh mục cán bộ</a></li>
										<li><a href="#">Các phòng ban</a></li>
										<li><a href="#">Các nghiên cứu</a></li>
										<li><a href="#">Công trình Khoa học</a></li>
									</ul></li>
								<li><a href="#">Viện CNTT</a>
									<ul>
										<li><a href="#">Giới thiệu chung</a></li>
										<li><a href="#">Danh mục cán bộ</a></li>
										<li><a href="#">Các phòng ban</a></li>
										<li><a href="#">Các nghiên cứu</a></li>
										<li><a href="#">Công trình Khoa học</a></li>
									</ul></li>
								<li><a href="#">Viện hóa học</a>
									<ul>
										<li><a href="#">Giới thiệu chung</a></li>
										<li><a href="#">Danh mục cán bộ</a></li>
										<li><a href="#">Các phòng ban</a></li>
										<li><a href="#">Các nghiên cứu</a></li>
										<li><a href="#">Công trình Khoa học</a></li>
									</ul></li>
								<li><a href="#">Viện CN sinh học</a>
									<ul>
										<li><a href="#">Giới thiệu chung</a></li>
										<li><a href="#">Danh mục cán bộ</a></li>
										<li><a href="#">Các phòng ban</a></li>
										<li><a href="#">Các nghiên cứu</a></li>
										<li><a href="#">Công trình Khoa học</a></li>
									</ul></li>
								<li><a href="#">Viện hải dương học</a>
									<ul>
										<li><a href="#">Giới thiệu chung</a></li>
										<li><a href="#">Danh mục cán bộ</a></li>
										<li><a href="#">Các phòng ban</a></li>
										<li><a href="#">Các nghiên cứu</a></li>
										<li><a href="#">Công trình Khoa học</a></li>
									</ul></li>
								<li><a href="#">Viện công nghệ vũ trụ</a>
									<ul>
										<li><a href="#">Giới thiệu chung</a></li>
										<li><a href="#">Danh mục cán bộ</a></li>
										<li><a href="#">Các phòng ban</a></li>
										<li><a href="#">Các nghiên cứu</a></li>
										<li><a href="#">Công trình Khoa học</a></li>
									</ul></li>
							</ul></li>
						<li></li>
						<li><a href="#">Tìm kiếm</a></li>
						<li><a href="#">Giới thiệu</a></li>
						<li><a href="#">Liên hệ</a></li>
					</ul>
				</div>
				<!--End header-row-1-->
			</div>
			<!-- end nav_menu -->
		</div>
		<!--End wrap_header -->

		<div id="wrap_main">
			<div class="title_home">
				<h2>Quản lý thông tin đơn vị</h2>
			</div>
			<div class="clear"></div>
			<div class="infomation_staff">
				<form name="edit_staff" action="#" method="POST">

					<table border="0" bgcolor="#fff" align="center" id="info"
						style="width: 100%">
						<tr>
							<td class="list">Tên đơn vị</td>
							<td class="list_ret" width="70%"><input type="text"
								name="user_name" size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Nhiệm vụ</td>
							<td class="list_ret"><textarea name="nhiemvu"></textarea></td>
						</tr>
						<tr>
							<td class="list">Chức năng</td>
							<td class="list_ret"><textarea name="chucnang"></textarea></td>
						</tr>
						<tr>
							<td class="list">Hoạt động thường xuyên</td>
							<td class="list_ret"><textarea name="hoatdongthuongxuyen"></textarea>
							</td>
						</tr>

						<tr>
							<td class="list">Thành tựu</td>
							<td class="list_ret"><textarea name="thanhtuu"></textarea></td>
						</tr>
						<tr>
							<td class="list">Thông tin khác</td>
							<td class="list_ret"><textarea name="thongtinkhac"></textarea>
							</td>
						</tr>
						<tr>
							<td class="list">Địa chỉ trụ sở</td>
							<td class="list_ret"><input name="diachitruso" type="text" /></td>
						</tr>
						<tr>
							<td class="list">Điện thoại</td>
							<td class="list_ret"><input name="diachitruso" type="tel" /></td>
						</tr>
						<tr>
							<td class="list">Email</td>
							<td class="list_ret"><input name="email" type="email" /></td>
						</tr>
						<tr>
							<td class="list">Fax</td>
							<td class="list_ret"><input name="fax" type="text" /></td>
						</tr>
						<tr>
							<td class="list">Thư điện tử</td>
							<td class="list_ret"><input name="thudientu" type="email" /></td>
						</tr>
						<tr>
							<td class="list">Avatar</td>
							<td class="list_ret"><img width="96" height="50"
								src="../images/public/vientoanhoc.jpg" /> <br /> <input
								type="button" name="upload" value="upload" /></td>
						</tr>
					</table>
					<div style="text-align: center; margin-top: 20px;">
						<input type="submit" class="button" value="Cập nhật" />
					</div>
				</form>
			</div>
			<!--End infomation -->

		</div>
		<!--End wrap_main-->







		<div id="wrap_right">
			<div class="box_right">
				<c:if test="${not empty user}">
					<div class="title_ok">
						<a>Xin chào:${user.username}</a>
					</div>
					<div class="content_box">
						<div class="loginpopup" style="">
							<form action="/k54/logout.spms" method="POST">
								<input value="Đăng xuất" class="button" type="submit"
									name="logout" />
							</form>
						</div>
					</div>
				</c:if>

				<c:if test="${empty user}">
					<div class="title_box">
						<a>Đăng nhập</a>
					</div>
					<!--title_box-->
					<div class="content_box">
						<div class="loginpopup" style="">
							<form action="/k54/login.spms" method="POST">
								<label>Tài khoản : </label> <input type="text" name="user_name"
									placeholder="Tài khoản" /> <label>Mật khẩu : </label> <input
									type="password" name="user_password" placeholder="Mật khẩu" />
								<input value="Đăng nhập" class="button" type="submit"
									name="login" />
							</form>
							<label> ${loginFalse} </label>
						</div>
					</div>
				</c:if>
				<!--end content_box-->
			</div>
			<!--box_right-->
			<c:if test="${not empty user}">

				<div class="box_right">
					<div class="title_box">
						<a>Chức năng quản lý</a>
					</div>
					<!--title_box-->
					<div class="content_box">
						<div id="accordion">
							<ul>
								<li><a href="#">Quản lý cán bộ</a></li>
								<li><a href="#">Quản lý cán bộ</a></li>
								<li><a href="#">Quản lý cán bộ</a></li>
								<li><a href="#">Quản lý cán bộ</a></li>
								<li><a href="#">Quản lý cán bộ</a></li>
								<li><a href="#">Quản lý cán bộ</a></li>
							</ul>
						</div>
						<!--End accordion -->

					</div>
					<!--end content_box-->
				</div>
				<!--box_right-->
			</c:if>

			<div class="box_right">
				<div class="title_box">
					<a>Thông tin</a>
				</div>
				<!--title_box-->
				<div class="content_box"></div>
				<!--end content_box-->
			</div>
			<!--box_right-->
		</div>
		<!--End wrap_right-->
		<div class="clear"></div>
		<div id="wrap_footer"></div>
		<!--End wrap_footer-->
	</div>
	<!--End wrapper -->
</body>
</html>
