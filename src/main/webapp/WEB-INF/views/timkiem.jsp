<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Tìm kiếm</title>
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
						<li><a
							href="<c:if test="${not empty homePage}"> ${homePage} </c:if>
							<c:if test="${empty homePage}"> home.spms</c:if>">Trang
								chủ</a></li>
						<li><a href="#">Tin tức - thông báo</a>
							<ul>
								<li><a href="#">Hoạt động</a></li>
								<li><a href="#">Tin KH trong nước</a></li>
								<li><a href="#">Tin KH quốc tế</a></li>
								<li><a href="#">Thông báo</a></li>
							</ul></li>
						<li><a>Đơn vị</a>
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
						<li><a
							href="<c:if test="${not empty search}"> ${search} </c:if>
							<c:if test="${empty search}"> guest/search.spms</c:if>">Tìm
								kiếm</a></li>
						<li><a
							href="<c:if test="${not empty info}"> ${info} </c:if>
							<c:if test="${empty info}"> guest/info.spms</c:if>">Giới
								thiệu</a></li>
						<li><a
							href="<c:if test="${not empty contact}"> ${contact} </c:if>
							<c:if test="${empty contact}"> guest/contact.spms</c:if>">Liên
								hệ</a></li>
					</ul>
				</div>
				<!--End header-row-1-->
			</div>
			<!-- end nav_menu -->
		</div>
		<!--End wrap_header -->

		<div id="wrap_main">

			<div class="title_home">
				<h2>Tìm kiếm</h2>
			</div>
			<br /> <br />
			<div class="find_box">


				<form action="#" method="POST" class="find_form">

					<table>
						<tr style="">
							<td style="width: 150px"><label>Tên cán bộ : </label></td>
							<td><input type="text" name="tenCanBo"
								placeholder="tên cán bộ" width="400px" /></td>
						</tr>
						<tr>
							<td><br /></td>
							<td></td>
						</tr>
						<tr>
							<td><label>Viện : </label></td>
							<td><select name="vien" id="find_vien">
									<c:forEach items="${donviquanly}" var="donviquanly">
										<option value="${donviquanly.ten}" id="normal_vien">${donviquanly.ten}</option>
									</c:forEach>
							</select> <!--End select --></td>
						</tr>

						<tr>
							<td><br /></td>
							<td></td>
						</tr>
						<tr>
							<td><label>Phòng ban : </label></td>
							<td><select name="phongban">
									<option value="0" selected>Phòng ban</option>
									<option value="1">Phòng ban 1</option>
									<option value="2">Phòng ban 2</option>
									<option value="3">Phòng ban 3</option>
									<option value="4">Phòng ban 4</option>
									<option value="5">Phòng ban 5</option>
							</select> <!--End select --></td>
						</tr>
						<tr>
							<td><br /></td>
							<td></td>
						</tr>

						<tr>
							<td><label>Phân loại cán bộ : </label></td>
							<td><select name="vien">
									<option value="0" selected>Cán bộ thường</option>
									<option value="1">Cán bộ nghiên cứu</option>
									<option value="2">Cán bộ 1</option>
									<option value="3">Cán bộ 2</option>
									<option value="4">Cán bộ 3</option>
									<option value="5">Cán bộ 4</option>
							</select> <!--End select --></td>
						</tr>
						<tr>
							<td><br /></td>
							<td></td>
						</tr>




						<tr>
							<td></td>
							<td><input value="Tìm kiếm" class="button" type="submit"
								name="find" /></td>

						</tr>
					</table>
				</form>
			</div>
			<div class="result_find">
				<div class="title_home">
					<h2>Kết quả Tìm kiếm</h2>
				</div>

				<div class="list_data">
					<div class="title_table">
						<a> Danh sách cán bộ </a>
					</div>
					<table cellspacing="0" cellpadding="0" width="100%">
						<tr>
							<td>
								<table cellspacing="0" cellpadding="1" style="width: 715px">
									<tr class="tieu_de">
										<td style="width: 5%">STT</td>
										<td style="width: 20%">Họ và tên</td>
										<td style="width: 15%">Phòng ban</td>
										<td style="width: 10%">Chức vụ</td>
										<td style="width: 15%">SĐT</td>
										<td style="width: 15%">Email</td>
										<td style="width: 10%">Thông tin</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<div class="description">
									<table cellspacing="0" cellpadding="1" style="width: 715px">
										<tr class="row_1">
											<td style="width: 5%">1</td>
											<td style="width: 20%">Phạm Minh Đạt</td>
											<td style="width: 15%">Viện toán học</td>
											<td style="width: 10%">Trưởng viện</td>
											<td style="width: 15%">012346789</td>
											<td style="width: 15%">abc@gamil.com</td>
											<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_1">
											<td style="width: 5%">1</td>
											<td style="width: 20%">Phạm Minh Đạt</td>
											<td style="width: 15%">Viện toán học</td>
											<td style="width: 10%">Trưởng viện</td>
											<td style="width: 15%">012346789</td>
											<td style="width: 15%">abc@gamil.com</td>
											<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_1">
											<td style="width: 5%">1</td>
											<td style="width: 20%">Phạm Minh Đạt</td>
											<td style="width: 15%">Viện toán học</td>
											<td style="width: 10%">Trưởng viện</td>
											<td style="width: 15%">012346789</td>
											<td style="width: 15%">abc@gamil.com</td>
											<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_1">
											<td style="width: 5%">1</td>
											<td style="width: 20%">Phạm Minh Đạt</td>
											<td style="width: 15%">Viện toán học</td>
											<td style="width: 10%">Trưởng viện</td>
											<td style="width: 15%">012346789</td>
											<td style="width: 15%">abc@gamil.com</td>
											<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_1">
											<td style="width: 5%">1</td>
											<td style="width: 20%">Phạm Minh Đạt</td>
											<td style="width: 15%">Viện toán học</td>
											<td style="width: 10%">Trưởng viện</td>
											<td style="width: 15%">012346789</td>
											<td style="width: 15%">abc@gamil.com</td>
											<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_1">
											<td style="width: 5%">1</td>
											<td style="width: 20%">Phạm Minh Đạt</td>
											<td style="width: 15%">Viện toán học</td>
											<td style="width: 10%">Trưởng viện</td>
											<td style="width: 15%">012346789</td>
											<td style="width: 15%">abc@gamil.com</td>
											<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_1">
											<td style="width: 5%">1</td>
											<td style="width: 20%">Phạm Minh Đạt</td>
											<td style="width: 15%">Viện toán học</td>
											<td style="width: 10%">Trưởng viện</td>
											<td style="width: 15%">012346789</td>
											<td style="width: 15%">abc@gamil.com</td>
											<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem chi tiết</a></td>
										</tr>

									</table>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<!--End list_data-->

			</div>






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
