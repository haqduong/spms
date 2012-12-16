<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sửa thông tin cá nhân</title>
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
							<c:if test="${empty homePage}">/k54/home.spms</c:if>">Trang
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
								<c:forEach items="${donviquanly}" var="donviquanly">
									<li><a
										href="/k54/guest/donviquanly/gioithieuchung.spms?iddonviquanly=${donviquanly.iddonviquanly}">${donviquanly.ten}</a>
										<ul>
											<li><a
												href="/k54/guest/donviquanly/gioithieuchung.spms?iddonviquanly=${donviquanly.iddonviquanly}">Giới
													thiệu chung</a></li>
											<li><a
												href="/k54/guest/donviquanly/danhsachcanbo.spms?iddonviquanly=${donviquanly.iddonviquanly}">Danh
													mục cán bộ</a></li>
											<li><a
												href="/k54/guest/donviquanly/danhsachphongban.spms?iddonviquanly=${donviquanly.iddonviquanly}">Các
													phòng ban</a>
											<li><a
												href="/k54/guest/donviquanly/nghiencuu.spms?iddonviquanly=${donviquanly.iddonviquanly}">Các
													nghiên cứu</a></li>
										</ul></li>
								</c:forEach>

							</ul></li>
						<li></li>

						<li><a
							href="<c:if test="${not empty search}"> ${search} </c:if>
							<c:if test="${empty search}"> /k54/guest/search.spms</c:if>">Tìm
								kiếm</a></li>
						<li><a
							href="<c:if test="${not empty info}"> ${info} </c:if>
							<c:if test="${empty info}"> /k54/guest/info.spms</c:if>">Giới
								thiệu</a></li>
						<li><a
							href="<c:if test="${not empty contact}"> ${contact} </c:if>
							<c:if test="${empty contact}"> /k54/guest/contact.spms</c:if>">Liên
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
				<h2>Thông tin sơ yếu lý lịch</h2>
			</div>
			<div class="images">
				<img src="../images/public/mainh.jpg" width="100" height="150" /> <input
					name="duongdananh" type="text"
					placeholder="Chỗ này là đường dẫn ảnh" />
				<p>
					<input type="button" value="Upload" class="button" />
				</p>
			</div>
			<!--End images-->
			<div class="clear"></div>
			<div class="infomation_staff">
				<form name="edit_staff" action="#" method="POST">

					<table border="0" bgcolor="#fff" align="center" id="info"
						style="width: 100%">
						<tr>
							<td class="title" colspan=2 align="center" height="50">Thông
								tin cá nhân</td>
						</tr>
						<tr>
							<td class="list">Họ và tên</td>
							<td class="list_ret" width="70%"><input type="text"
								name="name" size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Đơn vị quản lý</td>
							<td class="list_ret"><select name="donviquanly">
									<option value="0">Viện toán học</option>
									<option value="1">Viện sfsfc</option>
									<option value="2">Viện sfsfion</option>
									<option value="3">Viện afsfaftoán học</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Phòng ban</td>
							<td class="list_ret"><select name="donviquanly">
									<option value="0">phòng 1</option>
									<option value="1">phòng 2</option>
									<option value="2">fasfaf</option>
									<option value="3">Viện afsfaftoán học</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Học vị</td>
							<td class="list_ret"><select name="hocvi">
									<option value="0">học vị 1</option>
									<option value="1">học vị 2</option>
									<option value="2">học vị 3</option>
									<option value="3">Học vị 4</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Chức vụ</td>
							<td class="list_ret"><select name="chucvu">
									<option value="0">học vị 1</option>
									<option value="1">học vị 2</option>
									<option value="2">học vị 3</option>
									<option value="3">Học vị 4</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Học hàm</td>
							<td class="list_ret"><select name="hocham">
									<option value="0">học vị 1</option>
									<option value="1">học vị 2</option>
									<option value="2">học vị 3</option>
									<option value="3">Học vị 4</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Cấp ủy</td>
							<td class="list_ret"><select name="hocvi">
									<option value="0">học vị 1</option>
									<option value="1">học vị 2</option>
									<option value="2">học vị 3</option>
									<option value="3">Học vị 4</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Giáo dục phổ thông</td>
							<td class="list_ret"><select name="giaoducphothong">
									<option value="0">học vị 1</option>
									<option value="1">học vị 2</option>
									<option value="2">học vị 3</option>
									<option value="3">Học vị 4</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Danh hiệu</td>
							<td class="list_ret"><select name="đanhhieu">
									<option value="0">học vị 1</option>
									<option value="1">học vị 2</option>
									<option value="2">học vị 3</option>
									<option value="3">Học vị 4</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Xuất thân</td>
							<td class="list_ret"><select name="xuatthan">
									<option value="0">học vị 1</option>
									<option value="1">học vị 2</option>
									<option value="2">học vị 3</option>
									<option value="3">Học vị 4</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Quốc gia</td>
							<td class="list_ret"><select name="quocgia">
									<option value="0">học vị 1</option>
									<option value="1">học vị 2</option>
									<option value="2">học vị 3</option>
									<option value="3">Học vị 4</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Loại cán bộ</td>
							<td class="list_ret"><select name="loaicanbo">
									<option value="0">Cán bộ thường</option>
									<option value="1">Cán bộ nghiên cứu</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Số hiệu công chức</td>
							<td class="list_ret"><input type="text"
								name="sohieucongchuc" size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Số chứng minh nhân dân</td>
							<td class="list_ret"><input type="number"
								name="chungminhnhandan" size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Giới tính</td>
							<td class="list_ret"><select name="gioitinh">
									<option value="0">Nam</option>
									<option value="1">Nữ</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Tên thường dùng khác</td>
							<td class="list_ret"><input type="text" name="tenthuongdung"
								size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Ngày tháng năm sinh</td>
							<td class="list_ret"><input type="date" name="ngaysinh"
								size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Nơi sinh</td>
							<td class="list_ret"><input type="text" name="noisinh"
								size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Quê quán</td>
							<td class="list_ret"><input type="text" name="quequan"
								size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Nơi ở hiện nay</td>
							<td class="list_ret"><input type="text" name="noiohiennay"
								size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Số điện thoại</td>
							<td class="list_ret"><input type="tel" name="sodienthoai"
								size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Ngày vào đảng chính thức</td>
							<td class="list_ret"><input type="date"
								name="ngayvaodangchinhthuc" size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Ngày cập nhật</td>
							<td class="list_ret"><input type="date" name="ngaycapnhat"
								size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Dân tộc</td>
							<td class="list_ret"><select name="dantoc">
									<option value="0">Kinh</option>
									<option value="1">Mường</option>
									<option value="2">Dao</option>
									<option value="3">Mán</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Tôn giáo</td>
							<td class="list_ret"><select name="tongiao">
									<option value="0">Kinh</option>
									<option value="1">Mường</option>
									<option value="2">Dao</option>
									<option value="3">Mán</option>
							</select></td>
						</tr>
						<tr>
							<td class="list">Sức khỏe</td>
							<td class="list_ret"><input type="text" name="suckhoe"
								size="60" height="25" /></td>
						</tr>
						<tr>
							<td class="list">Ngôn ngữ biết</td>
							<td class="list_ret"><input type="text" name="ngonngubiet"
								size="60" height="25" /></td>
						</tr>

					</table>
					<br /> <br />

					<table border="0" bgcolor="#fff" align="center" id="info">
						<tr>
							<td class="title" colspan=2 align="center" height="50">Sách
								xuất bản</td>
						</tr>
						<tr>
							<td colspan="2" align="">
								<table>
									<thead>
										<tr>
											<th>Tên sách</th>
											<th>Năm xuất bản</th>
										</tr>
									</thead>

									<tbody>

										<tr>
											<td class="list"><input type="text" name="user_name"
												height="25" /></td>
											<td class="list_ret"><input type="text" name="user_name"
												size="60" height="25" /></td>
										</tr>

									</tbody>
								</table>
							</td>
						</tr>
					</table>

					<table border="0" bgcolor="#fff" align="center" id="info"
						style="width: 100%">
						<tr>
							<td class="title" colspan=2 align="center" height="50">Lý
								lịch khoa học ??????</td>
						</tr>
						<tr>
							<td class="list">Họ và tên</td>
							<td class="list_ret" width="70%"><input type="text"
								name="name" size="60" height="25" /></td>
						</tr>


					</table>

					<br /> <br />
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
				<c:if test="${user.permission == 1}">
					<div class="box_right">
						<div class="title_box">
							<a>Cập nhật</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/staff/capnhat/thongtincanhan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật thông tin cá nhân</a></li>
									<li><a href="/k54/staff/capnhat/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật lý lịch khoa học</a></li>
									<li><a href="/k54/staff/capnhat/taikhoan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập nhật tài khoản</a></li>
								</ul>
							</div>
							<!--End accordion -->
						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
					<div class="box_right">
						<div class="title_box">
							<a>Thông tin cá nhân</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/staff/thongtin/soyeulylich.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Sơ yếu lý lịch</a></li>
									<li><a href="/k54/staff/thongtin/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Lý lịch khoa học</a></li>
									<li><a href="/k54/staff/thongtin/quatrinhcongtac.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Quá trình công tác</a></li>
									<li><a href="/k54/staff/thongtin/dienbienluong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Diễn biến lương</a></li>
									<li><a href="/k54/staff/thongtin/khenthuong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Khen thưởng</a></li>
									<li><a href="/k54/staff/thongtin/kyluat.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Kỷ luật</a></li>
								</ul>
							</div>
							<!--End accordion -->

						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
				</c:if>

				<c:if test="${user.permission == 2}">
					<div class="box_right">
						<div class="title_box">
							<a>Chức năng quản lý</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/manager/quanly/phongban.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản lý phòng ban</a></li>
									<li><a href="/k54/manager/quanly/hosocanbo.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản lý hồ sơ cán bộ</a></li>
									<li><a href="/k54/manager/quanly/khenthuong.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản lý khen thưởng</a></li>
									<li><a href="/k54/manager/quanly/kyluat.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản lý kỷ luật</a></li>
									<li><a href="/k54/manager/quanly/baocao.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Báo cáo</a></li>
									<li><a href="/k54/manager/quanly/thongke.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Thống kê</a></li>
								</ul>
							</div>
							<!--End accordion -->
						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
					<div class="box_right">
						<div class="title_box">
							<a>Thông tin cá nhân</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/manager/thongtin/soyeulylich.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Sơ yếu lý lịch</a></li>
									<li><a href="/k54/manager/thongtin/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Lý lịch khoa học</a></li>
									<li><a href="/k54/manager/thongtin/quatrinhcongtac.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Quá trình công tác</a></li>
									<li><a href="/k54/manager/thongtin/dienbienluong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Diễn biến lương</a></li>
									<li><a href="/k54/manager/thongtin/khenthuong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Khen thưởng</a></li>
									<li><a href="/k54/manager/thongtin/kyluat.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Kỷ luật</a></li>
								</ul>
							</div>
							<!--End accordion -->

						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
				</c:if>



				<c:if test="${user.permission == 3}">
					<div class="box_right">
						<div class="title_box">
							<a>Chức năng quản lý</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/superManager/quanly/donvi.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Quản lý đơn vị</a></li>
									<li><a href="/superManager/quanly/phongban.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Quản lý phòng ban</a></li>
									<li><a href="/superManager/quanly/thongtincanbo.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Quản lý thông tin cán bộ</a></li>
									<li><a href="/superManager/quanly/baocao.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Báo cáo</a></li>
									<li><a href="/superManager/quanly/thongke.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Thống kê</a></li>
								</ul>
							</div>
							<!--End accordion -->
						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
					<div class="box_right">
						<div class="title_box">
							<a>Thông tin cá nhân</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a href="/k54/superManager/thongtin/soyeulylich.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Sơ yếu lý lịch</a></li>
									<li><a href="/k54/superManager/thongtin/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Lý lịch khoa học</a></li>
									<li><a href="/k54/superManager/thongtin/quatrinhcongtac.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Quá trình công tác</a></li>
									<li><a href="/k54/superManager/thongtin/dienbienluong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Diễn biến lương</a></li>
									<li><a href="/k54/superManager/thongtin/khenthuong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Khen thưởng</a></li>
									<li><a href="/k54/superManager/thongtin/kyluat.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Kỷ luật</a></li>
								</ul>
							</div>
							<!--End accordion -->

						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->
				</c:if>
			</c:if>
		</div>
		<!--End wrap_right-->
		<div class="clear"></div>
		<div id="wrap_footer"></div>
		<!--End wrap_footer-->
	</div>
	<!--End wrapper -->
</body>
</html>
