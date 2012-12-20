<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<div id="wrap_header">
		<div id="banner_header">
			<div class="stitle_web">
				<img src="<c:url value = "/resources/images/banner/logonew.png"/>" />
			</div>
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

	<div id="wrapper">


		<div id="wrap_main">
			<div class="title_home">
				<h2>Quản lý thông tin đơn vị - ${donvi.ten}</h2>
			</div>
			<div class="clear"></div>
			<img width="96" height="50"
				src="<c:url value="${donvi.duongdananh}"/>" />
			<c:if test="${not empty error}">
			${error }
			</c:if>
			<form:form action="/k54/upload.spms" method="POST"
				commandName="fileUploadForm" enctype="multipart/form-data">

				<form:errors path="*" cssClass="errorblock" element="div" />

				<input type="file" name="file" />
				<input type="hidden" name="type" value="supermanager">
				<input type="submit" value="superManagerUpload" />
				<span><form:errors path="file" cssClass="error" /></span>

			</form:form>
			<div class="infomation_staff">
				<form name="edit_staff" action="#" method="POST">

					<table border="0" bgcolor="#fff" align="center" id="info"
						style="width: 100%">
						<tr>
							<td class="list">Tên đơn vị</td>
							<td class="list_ret" width="70%"><input type="text"
								name="tendonvi" id="tendonvi" size="60" height="25"
								value="${donvi.ten}" />(*)</td>
						</tr>
						<tr>
							<td class="list">Nhiệm vụ</td>
							<td class="list_ret"><textarea id="nhiemvu" name="nhiemvu">${donvi.nhiemvu}</textarea></td>
						</tr>
						<tr>
							<td class="list">Chức năng</td>
							<td class="list_ret"><textarea id="chucnang" name="chucnang">${donvi.chucnang}</textarea></td>
						</tr>
						<tr>
							<td class="list">Hoạt động thường xuyên</td>
							<td class="list_ret"><textarea id="hoatdongthuongquyen"
									name="hoatdongthuongxuyen">${donvi.hoatdongthuongxuyen}</textarea>
							</td>
						</tr>

						<tr>
							<td class="list">Thành tựu</td>
							<td class="list_ret"><textarea id="thanhtuu" name="thanhtuu">${donvi.thanhtuu}</textarea></td>
						</tr>
						<tr>
							<td class="list">Thông tin khác</td>
							<td class="list_ret"><textarea id="thongtinkhac"
									name="thongtinkhac">${donvi.thongtinkhac}</textarea></td>
						</tr>
						<tr>
							<td class="list">Địa chỉ trụ sở</td>
							<td class="list_ret"><input id="diachitruso"
								name="diachitruso" type="text" value="${donvi.diachitruso}" />(*)</td>
						</tr>
						<tr>
							<td class="list">Điện thoại</td>
							<td class="list_ret"><input onkeydown="checkPhone()"
								id="dienthoai" name="dienthoai" type="tel"
								value="${donvi.dienthoai}" />(*)</td>
						</tr>
						<tr>
							<td class="list">Email</td>
							<td class="list_ret"><input id="email" name="email"
								type="email" value="${donvi.email}" />(*)</td>
						</tr>
						<tr>
							<td class="list">Fax</td>
							<td class="list_ret"><input onkeydown="checkFax()" id="fax"
								name="fax" type="text" value="${donvi.fax}" />(*)</td>
						</tr>
					</table>
					<h3>${result}</h3>
					<div style="text-align: center; margin-top: 20px;">
						<input onclick="checkSubmit()" class="button" name="update"
							value="Cập nhật" />
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
									<li><a
										href="/k54/staff/capnhat/thongtincanhan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập
											nhật thông tin cá nhân</a></li>
									<li><a
										href="/k54/staff/capnhat/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập
											nhật lý lịch khoa học</a></li>
									<li><a
										href="/k54/staff/capnhat/taikhoan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập
											nhật tài khoản</a></li>
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
									<li><a
										href="/k54/staff/thongtin/soyeulylich.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Sơ
											yếu lý lịch</a></li>
									<li><a
										href="/k54/staff/thongtin/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Lý
											lịch khoa học</a></li>
									<li><a
										href="/k54/staff/thongtin/dienbienluong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Diễn
											biến lương</a></li>
									<li><a
										href="/k54/staff/thongtin/khenthuong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Khen
											thưởng</a></li>
									<li><a
										href="/k54/staff/thongtin/kyluat.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Kỷ
											luật</a></li>
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
									<li><a
										href="/k54/manager/quanly/phongban.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản
											lý phòng ban</a></li>
									<li><a
										href="/k54/manager/quanly/hosocanbo.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản
											lý hồ sơ cán bộ</a></li>
									<li><a
										href="/k54/manager/quanly/khenthuong.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản
											lý khen thưởng</a></li>
									<li><a
										href="/k54/manager/quanly/kyluat.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Quản
											lý kỷ luật</a></li>
									<li><a
										href="/k54/manager/quanly/baocao.spms?idphongban=${user.soyeulylich.phongban.idphongban}">Báo
											cáo</a></li>
								</ul>
							</div>
							<!--End accordion -->
						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->

					<div class="box_right">
						<div class="title_box">
							<a>Cập nhật</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a
										href="/k54/staff/capnhat/thongtincanhan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập
											nhật thông tin cá nhân</a></li>
									<li><a
										href="/k54/staff/capnhat/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập
											nhật lý lịch khoa học</a></li>
									<li><a
										href="/k54/staff/capnhat/taikhoan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập
											nhật tài khoản</a></li>
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
									<li><a
										href="/k54/manager/thongtin/soyeulylich.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Sơ
											yếu lý lịch</a></li>
									<li><a
										href="/k54/manager/thongtin/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Lý
											lịch khoa học</a></li>
									<li><a
										href="/k54/manager/thongtin/dienbienluong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Diễn
											biến lương</a></li>
									<li><a
										href="/k54/manager/thongtin/khenthuong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Khen
											thưởng</a></li>
									<li><a
										href="/k54/manager/thongtin/kyluat.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Kỷ
											luật</a></li>
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
									<li><a
										href="/k54/superManager/quanly/donvi.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Quản
											lý đơn vị</a></li>
									<li><a
										href="/k54/superManager/quanly/phongban.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Quản
											lý phòng ban</a></li>
									<li><a
										href="/k54/superManager/quanly/thongtincanbo.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Quản
											lý thông tin cán bộ</a></li>
									<li><a
										href="/k54/superManager/quanly/baocao.spms?iddonvi=${user.soyeulylich.donviquanly.iddonviquanly}">Báo
											cáo</a></li>
								</ul>
							</div>
							<!--End accordion -->
						</div>
						<!--end content_box-->
					</div>
					<!--box_right-->

					<div class="box_right">
						<div class="title_box">
							<a>Cập nhật</a>
						</div>
						<!--title_box-->
						<div class="content_box">
							<div id="accordion">
								<ul>
									<li><a
										href="/k54/staff/capnhat/thongtincanhan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập
											nhật thông tin cá nhân</a></li>
									<li><a
										href="/k54/staff/capnhat/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập
											nhật lý lịch khoa học</a></li>
									<li><a
										href="/k54/staff/capnhat/taikhoan.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Cập
											nhật tài khoản</a></li>
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
									<li><a
										href="/k54/superManager/thongtin/soyeulylich.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Sơ
											yếu lý lịch</a></li>
									<li><a
										href="/k54/superManager/thongtin/lylichkhoahoc.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Lý
											lịch khoa học</a></li>
									<li><a
										href="/k54/superManager/thongtin/dienbienluong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Diễn
											biến lương</a></li>
									<li><a
										href="/k54/superManager/thongtin/khenthuong.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Khen
											thưởng</a></li>
									<li><a
										href="/k54/superManager/thongtin/kyluat.spms?idcanbo=${user.soyeulylich.idsoyeulylich}">Kỷ
											luật</a></li>
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
		<div id="wrap_footer">
			<div id="wrap_footer_sub">
				<ul>
					<li>Bản quyền thuộc về Viện Khoa học và Công nghệ Việt Nam.</li>
					<li>Địa chỉ: 18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội. Email:
						thongtin@vast.vn</li>
					<li>Khi phát hành lại thông tin trên Website, cần ghi rõ
						nguồn: "Viện Khoa học và Công nghệ Việt Nam".</li>
				</ul>
			</div>
		</div>
		<!--End wrap_footer-->
	</div>
	<!--End wrapper -->

	<script type="text/javascript">
			function checkPhone() {
				var digits = "0123456789.)(+";
				var sohieucongchuc = document.getElementById("dienthoai").value;
				for ( var i = 0; i < sohieucongchuc.length; i++) {
					temp = sohieucongchuc.substring(i, i + 1);
					if (digits.indexOf(temp) == -1) {
						alert("Số điện thoại không hợp lệ, số điện thoại chỉ bao gồm chữ số hoặc mã vùng, mã quốc gia (+84)..");
						document.getElementById("dienthoai").value = "";
					}
				}
			}

			function checkSubmit() {
				var tendonvi = document.getElementById("tendonvi").value;
				var diachitruso = document.getElementById("diachitruso").value;
				var dienthoai = document.getElementById("dienthoai").value;
				var email = document.getElementById("email").value;
				var fax = document.getElementById("fax").value;
				if (tendonvi == "" || dienthoai == "" || email == ""
						|| diachitruso == "" || fax == "") {
					alert("Không được để trống các mục bắt buộc (*), xin kiểm tra lại");
				} else {
					document.forms["edit_staff"].submit();
				}
			}

			function checkFax() {
				var digits = "0123456789.)(+";
				var sohieucongchuc = document.getElementById("fax").value;
				for ( var i = 0; i < sohieucongchuc.length; i++) {
					temp = sohieucongchuc.substring(i, i + 1);
					if (digits.indexOf(temp) == -1) {
						alert("Số fax không hợp lệ, số fax chỉ bao gồm chữ số hoặc mã vùng, mã quốc gia (+84)..");
						document.getElementById("fax").value = "";
					}
				}
			}
		</script>

</body>
</html>