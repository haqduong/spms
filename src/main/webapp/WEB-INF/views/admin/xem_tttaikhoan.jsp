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
					<a>Tài khoản cán bộ</a>
				</div>
				<div class="list_data">
					<table class="boloc" cellspacing="0" cellpadding="1"
						style="width: 700px">
						<tr>
							<td style="width: 20%;"><label>Username</label></td>
							<td>${taikhoan.username}</td>
						</tr>
						<tr>
							<td><label>Email</label></td>
							<td>${taikhoan.email}</td>
						</tr>
						<tr>
							<td><label>Phân quyền</label></td>
							<td><c:if test="${taikhoan.permission == 1}">Cán bộ</c:if> <c:if
									test="${taikhoan.permission == 2}">Quản lý phòng ban</c:if> <c:if
									test="${taikhoan.permission == 3}">Quản lý đơn vị</c:if> <c:if
									test="${taikhoan.permission == 4}">Quản trị hệ thống</c:if></td>
						</tr>
						<tr>
							<td class="title" colspan=2 align="center">Thông tin cá nhân</td>
						</tr>
						<tr>
							<td class="list">Họ và tên</td>
							<td class="list_ret" width="70%">${taikhoan.soyeulylich.hoten
								}</td>
						</tr>
						<tr>
							<td class="list">Đơn vị quản lý</td>
							<td class="list_ret">${taikhoan.soyeulylich.donviquanly.ten
								}</td>
						</tr>
						<tr>
							<td class="list">Phòng ban</td>
							<td class="list_ret">${taikhoan.soyeulylich.phongban.ten }</td>
						</tr>
						<tr>
							<td class="list">Học vị</td>
							<td class="list_ret">${taikhoan.soyeulylich.hocvi.ten }</td>
						</tr>
						<tr>
							<td class="list">Chức vụ</td>
							<td class="list_ret">${taikhoan.soyeulylich.chucvu.ten }</td>
						</tr>
						<tr>
							<td class="list">Học hàm</td>
							<td class="list_ret">${taikhoan.soyeulylich.hocham.ten }</td>
						</tr>
						<tr>
							<td class="list">Cấp ủy</td>
							<td class="list_ret">${taikhoan.soyeulylich.capuy.ten }</td>
						</tr>
						<tr>
							<td class="list">Giáo dục phổ thông</td>
							<td class="list_ret">${taikhoan.soyeulylich.giaoducphothong.ten
								}</td>
						</tr>
						<tr>
							<td class="list">Danh hiệu</td>
							<td class="list_ret">${taikhoan.soyeulylich.danhhieu.ten }</td>
						</tr>
						<tr>
							<td class="list">Xuất thân</td>
							<td class="list_ret">${taikhoan.soyeulylich.xuatthan.ten }</td>
						</tr>
						<tr>
							<td class="list">Quốc gia</td>
							<td class="list_ret">${taikhoan.soyeulylich.quocgia.ten }</td>
						</tr>
						<tr>
							<td class="list">Loại cán bộ</td>
							<td class="list_ret"><c:if
									test="${taikhoan.soyeulylich.loaiCb == 1}">Cán bộ nghiên cứu</c:if>
								<c:if test="${taikhoan.soyeulylich.loaiCb == 0}">Cán bộ thường</c:if>
							</td>
						</tr>
						<tr>
							<td class="list">Số hiệu công chức</td>
							<td class="list_ret">${taikhoan.soyeulylich.sohieucongchuc}</td>
						</tr>
						<tr>
							<td class="list">Số chứng minh nhân dân</td>
							<td class="list_ret">${taikhoan.soyeulylich.chungminhnhandan}</td>
						</tr>
						<tr>
							<td class="list">Giới tính</td>
							<td class="list_ret">${taikhoan.soyeulylich.gioitinh}</td>
						</tr>
						<tr>
							<td class="list">Tên thường dùng khác</td>
							<td class="list_ret">${taikhoan.soyeulylich.tenthuongdung}</td>
						</tr>
						<tr>
							<td class="list">Ngày tháng năm sinh</td>
							<td class="list_ret">${taikhoan.soyeulylich.ngaysinh}</td>
						</tr>
						<tr>
							<td class="list">Nơi sinh</td>
							<td class="list_ret">${taikhoan.soyeulylich.noisinh}</td>
						</tr>
						<tr>
							<td class="list">Quê quán</td>
							<td class="list_ret">${taikhoan.soyeulylich.quequan}</td>
						</tr>
						<tr>
							<td class="list">Nơi ở hiện nay</td>
							<td class="list_ret">${taikhoan.soyeulylich.noiohiennay}</td>
						</tr>
						<tr>
							<td class="list">Số điện thoại</td>
							<td class="list_ret">${taikhoan.soyeulylich.sodienthoai}</td>
						</tr>
						<tr>
							<td class="list">Ngày vào đảng chính thức</td>
							<td class="list_ret">${taikhoan.soyeulylich.ngayvaodangchinhthuc}</td>
						</tr>
						<tr>
							<td class="list">Ngày cập nhật</td>
							<td class="list_ret">${taikhoan.soyeulylich.ngaycapnhat}</td>
						</tr>
						<tr>
							<td class="list">Dân tộc</td>
							<td class="list_ret">${taikhoan.soyeulylich.dantoc.ten}</td>
						</tr>
						<tr>
							<td class="list">Tôn giáo</td>
							<td class="list_ret">${taikhoan.soyeulylich.tongiao.ten}</td>
						</tr>
						<tr>
							<td class="list">Sức khỏe</td>
							<td class="list_ret">${taikhoan.soyeulylich.suckhoe}</td>
						</tr>
						<tr>
							<td class="list">Ngôn ngữ biết</td>
							<td class="list_ret">${taikhoan.soyeulylich.ngonngubiet}</td>
						</tr>
					</table>



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
