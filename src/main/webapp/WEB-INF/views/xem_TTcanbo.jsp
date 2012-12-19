<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Thông tin cán bộ</title>
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
				<img style="margin-left: 30px;" src="${canbo.duongdananh}"
					width="100" height="150" />

			</div>
			<!--End images-->


			<div class="contact_us">
				<div>

					<div class="title_info">
						<a>Họ tên:&nbsp&nbsp</a><span style="text-transform: uppercase">${canbo.hoten}</span>
					</div>


					<div class="detail_info">Địa chỉ: ${canbo.noiohiennay}</div>


					<div class="detail_info">Điện thoại: ${canbo.sodienthoai}</div>

					<c:forEach items="${canbo.taikhoandangnhaps}" var="taikhoan">
						<div class="detail_info">Email: ${taikhoan.email}</div>
					</c:forEach>
					<br />

				</div>
				<div>
					<div class="title_info">
						<a>Chức vụ:&nbsp&nbsp</a><span style="text-transform: uppercase;">${canbo.chucvu.ten}</span>
					</div>
				</div>
				<div></div>
			</div>
			<!--End contact_us-->
			<div class="clear"></div>

			<div class="infomation_staff">
				<form>
					<c:if test="${empty user}">
						<!-- guest -->
						<table border="0" bgcolor="#fff" align="center" id="info">
							<tr>
								<td class="title" colspan=2 align="center" height="50">Thông
									tin cá nhân</td>
							</tr>
							<tr>
								<td class="list">Họ và tên</td>
								<td class="list_ret" width="500">${canbo.hoten}</td>
							</tr>
							<tr>
								<td class="list">Đơn vị quản lý</td>
								<td class="list_ret">${canbo.donviquanly.ten}</td>
							</tr>
							<tr>
								<td class="list">Phòng ban</td>
								<td class="list_ret">${canbo.phongban.ten}</td>
							</tr>
							<tr>
								<td class="list">Giới tính</td>
								<td class="list_ret">${canbo.gioitinh}</td>
							</tr>
							<tr>
								<td class="list">Dân tộc</td>
								<td class="list_ret">${canbo.dantoc.ten}</td>
							</tr>
							<tr>
								<td class="list">Tôn giáo</td>
								<td class="list_ret">${canbo.tongiao.ten}</td>
							</tr>
							<tr>
								<td class="list">Ngôn ngữ biết</td>
								<td class="list_ret">${canbo.ngonngubiet}</td>
							</tr>
							<tr>
								<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
								<td class="list_ret">${canbo.tencntn1}</td>
							</tr>
							<tr>
								<td class="list">Năm tốt nghiệp</td>
								<td class="list_ret">${canbo.namtn1}</td>
							</tr>
							<tr>
								<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
								<td class="list_ret">${canbo.tencntn2}</td>
							</tr>
							<tr>
								<td class="list">Năm tốt nghiệp</td>
								<td class="list_ret">${canbo.namtn2}</td>
							</tr>
							<tr>
								<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
								<td class="list_ret">${canbo.tencntn3}</td>
							</tr>
							<tr>
								<td class="list">Năm tốt nghiệp</td>
								<td class="list_ret">${canbo.namtn3}</td>
							</tr>
							<tr>
								<td class="list">Học vị</td>
								<td class="list_ret">${canbo.hocvi.ten}</td>
							</tr>
							<tr>
								<td class="list">Học hàm</td>
								<td class="list_ret">${canbo.hocham.ten}</td>
							</tr>
							<tr>
								<td class="list">Danh hiệu được Nhà nước phong</td>
								<td class="list_ret">${canbo.danhhieu.ten}</td>
							</tr>
						</table>
					</c:if>
					<c:if test="${not empty user}">
						<c:if test="${user.permission == 0}">
							<!-- guest -->
							<table border="0" bgcolor="#fff" align="center" id="info">
								<tr>
									<td class="title" colspan=2 align="center" height="50">Thông
										tin cá nhân</td>
								</tr>
								<tr>
									<td class="list">Họ và tên</td>
									<td class="list_ret" width="500">${canbo.hoten}</td>
								</tr>
								<tr>
									<td class="list">Đơn vị quản lý</td>
									<td class="list_ret">${canbo.donviquanly.ten}</td>
								</tr>
								<tr>
									<td class="list">Phòng ban</td>
									<td class="list_ret">${canbo.phongban.ten}</td>
								</tr>
								<tr>
									<td class="list">Giới tính</td>
									<td class="list_ret">${canbo.gioitinh}</td>
								</tr>
								<tr>
									<td class="list">Dân tộc</td>
									<td class="list_ret">${canbo.dantoc.ten}</td>
								</tr>
								<tr>
									<td class="list">Tôn giáo</td>
									<td class="list_ret">${canbo.tongiao.ten}</td>
								</tr>
								<tr>
									<td class="list">Ngôn ngữ biết</td>
									<td class="list_ret">${canbo.ngonngubiet}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn1}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn1}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn2}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn2}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn3}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn3}</td>
								</tr>
								<tr>
									<td class="list">Học vị</td>
									<td class="list_ret">${canbo.hocvi.ten}</td>
								</tr>
								<tr>
									<td class="list">Học hàm</td>
									<td class="list_ret">${canbo.hocham.ten}</td>
								</tr>
								<tr>
									<td class="list">Danh hiệu được Nhà nước phong</td>
									<td class="list_ret">${canbo.danhhieu.ten}</td>
								</tr>
							</table>
						</c:if>

						<c:if
							test="${user.permission == 1 && user.soyeulylich.idsoyeulylich == canbo.idsoyeulylich}">
							<!-- staff self -->
							<table border="0" bgcolor="#fff" align="center" id="info">
								<tr>
									<td class="title" colspan=2 align="center" height="50">Thông
										tin cá nhân</td>
								</tr>
								<tr>
									<td class="list">Họ và tên</td>
									<td class="list_ret" width="500">${canbo.hoten}</td>
								</tr>
								<tr>
									<td class="list">Đơn vị quản lý</td>
									<td class="list_ret">${canbo.donviquanly.ten}</td>
								</tr>
								<tr>
									<td class="list">Phòng ban</td>
									<td class="list_ret">${canbo.phongban.ten}</td>
								</tr>
								<tr>
									<td class="list">Số hiệu công chức</td>
									<td class="list_ret">${canbo.sohieucongchuc}</td>
								</tr>

								<tr>
									<td class="list">Giới tính</td>
									<td class="list_ret">${canbo.gioitinh}</td>
								</tr>
								<tr>
									<td class="list">Số chứng minh thư nhân dân</td>
									<td class="list_ret">${canbo.chungminhnhandan}</td>
								</tr>
								<tr>
									<td class="list">Tên thường dùng khác</td>
									<td class="list_ret">${canbo.tenthuongdung}</td>
								</tr>
								<tr>
									<td class="list">Ngày tháng năm sinh</td>
									<td class="list_ret">${canbo.ngaysinh}</td>
								</tr>
								<tr>
									<td class="list">Nơi sinh</td>
									<td class="list_ret">${canbo.noisinh}</td>
								</tr>
								<tr>
									<td class="list">Quê quán</td>
									<td class="list_ret">${canbo.quequan}</td>
								</tr>
								<tr>
									<td class="list">Nơi ở hiện nay</td>
									<td class="list_ret">${canbo.noiohiennay}</td>
								</tr>
								<tr>
									<td class="list">Gia đình xuất thân</td>
									<td class="list_ret">${canbo.xuatthan.ten}</td>
								</tr>
								<tr>
									<td class="list">Dân tộc</td>
									<td class="list_ret">${canbo.dantoc.ten}</td>
								</tr>
								<tr>
									<td class="list">Tôn giáo</td>
									<td class="list_ret">${canbo.tongiao.ten}</td>
								</tr>
								<tr>
									<td class="list">Ngày vào Đảng</td>
									<td class="list_ret">${canbo.ngayvaodangchinhthuc}</td>
								</tr>
								<tr>
									<td class="list">Ngôn ngữ biết</td>
									<td class="list_ret">${canbo.ngonngubiet}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn1}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn1}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn2}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn2}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn3}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn3}</td>
								</tr>
								<tr>
									<td class="list">Học vị</td>
									<td class="list_ret">${canbo.hocvi.ten}</td>
								</tr>
								<tr>
									<td class="list">Học hàm</td>
									<td class="list_ret">${canbo.hocham.ten}</td>
								</tr>
								<tr>
									<td class="list">Hệ số lương</td>
									<td class="list_ret">${canbo.hesoluong.heso}</td>
								</tr>
								<tr>
									<td class="list">Cấp ủy Đảng</td>
									<td class="list_ret">${canbo.capuy.ten}</td>
								</tr>
								<tr>
									<td class="list">Danh hiệu được Nhà nước phong</td>
									<td class="list_ret">${canbo.danhhieu.ten}</td>
								</tr>
							</table>
						</c:if>

						<c:if
							test="${user.permission == 1 && user.soyeulylich.idsoyeulylich != canbo.idsoyeulylich}">
							<!-- staff -->
							<table border="0" bgcolor="#fff" align="center" id="info">
								<tr>
									<td class="title" colspan=2 align="center" height="50">Thông
										tin cá nhân</td>
								</tr>
								<tr>
									<td class="list">Họ và tên</td>
									<td class="list_ret" width="500">${canbo.hoten}</td>
								</tr>
								<tr>
									<td class="list">Đơn vị quản lý</td>
									<td class="list_ret">${canbo.donviquanly.ten}</td>
								</tr>
								<tr>
									<td class="list">Phòng ban</td>
									<td class="list_ret">${canbo.phongban.ten}</td>
								</tr>
								<tr>
									<td class="list">Giới tính</td>
									<td class="list_ret">${canbo.gioitinh}</td>
								</tr>
								<tr>
									<td class="list">Dân tộc</td>
									<td class="list_ret">${canbo.dantoc.ten}</td>
								</tr>
								<tr>
									<td class="list">Tôn giáo</td>
									<td class="list_ret">${canbo.tongiao.ten}</td>
								</tr>
								<tr>
									<td class="list">Ngôn ngữ biết</td>
									<td class="list_ret">${canbo.ngonngubiet}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn1}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn1}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn2}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn2}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn3}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn3}</td>
								</tr>
								<tr>
									<td class="list">Học vị</td>
									<td class="list_ret">${canbo.hocvi.ten}</td>
								</tr>
								<tr>
									<td class="list">Học hàm</td>
									<td class="list_ret">${canbo.hocham.ten}</td>
								</tr>
								<tr>
									<td class="list">Danh hiệu được Nhà nước phong</td>
									<td class="list_ret">${canbo.danhhieu.ten}</td>
								</tr>
							</table>
						</c:if>
						<c:if
							test="${user.permission == 2 && user.soyeulylich.phongban.idphongban == canbo.phongban.idphongban}">
							<!-- manager -->
							<table border="0" bgcolor="#fff" align="center" id="info">
								<tr>
									<td class="title" colspan=2 align="center" height="50">Thông
										tin cá nhân</td>
								</tr>
								<tr>
									<td class="list">Họ và tên</td>
									<td class="list_ret" width="500">${canbo.hoten}</td>
								</tr>
								<tr>
									<td class="list">Đơn vị quản lý</td>
									<td class="list_ret">${canbo.donviquanly.ten}</td>
								</tr>
								<tr>
									<td class="list">Phòng ban</td>
									<td class="list_ret">${canbo.phongban.ten}</td>
								</tr>
								<tr>
									<td class="list">Số hiệu công chức</td>
									<td class="list_ret">${canbo.sohieucongchuc}</td>
								</tr>

								<tr>
									<td class="list">Giới tính</td>
									<td class="list_ret">${canbo.gioitinh}</td>
								</tr>
								<tr>
									<td class="list">Số chứng minh thư nhân dân</td>
									<td class="list_ret">${canbo.chungminhnhandan}</td>
								</tr>
								<tr>
									<td class="list">Tên thường dùng khác</td>
									<td class="list_ret">${canbo.tenthuongdung}</td>
								</tr>
								<tr>
									<td class="list">Ngày tháng năm sinh</td>
									<td class="list_ret">${canbo.ngaysinh}</td>
								</tr>
								<tr>
									<td class="list">Nơi sinh</td>
									<td class="list_ret">${canbo.noisinh}</td>
								</tr>
								<tr>
									<td class="list">Quê quán</td>
									<td class="list_ret">${canbo.quequan}</td>
								</tr>
								<tr>
									<td class="list">Nơi ở hiện nay</td>
									<td class="list_ret">${canbo.noiohiennay}</td>
								</tr>
								<tr>
									<td class="list">Gia đình xuất thân</td>
									<td class="list_ret">${canbo.xuatthan.ten}</td>
								</tr>
								<tr>
									<td class="list">Dân tộc</td>
									<td class="list_ret">${canbo.dantoc.ten}</td>
								</tr>
								<tr>
									<td class="list">Tôn giáo</td>
									<td class="list_ret">${canbo.tongiao.ten}</td>
								</tr>
								<tr>
									<td class="list">Ngày vào Đảng</td>
									<td class="list_ret">${canbo.ngayvaodangchinhthuc}</td>
								</tr>
								<tr>
									<td class="list">Ngôn ngữ biết</td>
									<td class="list_ret">${canbo.ngonngubiet}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn1}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn1}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn2}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn2}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn3}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn3}</td>
								</tr>
								<tr>
									<td class="list">Học vị</td>
									<td class="list_ret">${canbo.hocvi.ten}</td>
								</tr>
								<tr>
									<td class="list">Học hàm</td>
									<td class="list_ret">${canbo.hocham.ten}</td>
								</tr>
								<tr>
									<td class="list">Hệ số lương</td>
									<td class="list_ret">${canbo.hesoluong.heso}</td>
								</tr>
								<tr>
									<td class="list">Cấp ủy Đảng</td>
									<td class="list_ret">${canbo.capuy.ten}</td>
								</tr>
								<tr>
									<td class="list">Danh hiệu được Nhà nước phong</td>
									<td class="list_ret">${canbo.danhhieu.ten}</td>
								</tr>
							</table>
						</c:if>

						<c:if
							test="${user.permission == 2 && user.soyeulylich.phongban.idphongban != canbo.phongban.idphongban}">
							<!-- manager -->
							<table border="0" bgcolor="#fff" align="center" id="info">
								<tr>
									<td class="title" colspan=2 align="center" height="50">Thông
										tin cá nhân</td>
								</tr>
								<tr>
									<td class="list">Họ và tên</td>
									<td class="list_ret" width="500">${canbo.hoten}</td>
								</tr>
								<tr>
									<td class="list">Đơn vị quản lý</td>
									<td class="list_ret">${canbo.donviquanly.ten}</td>
								</tr>
								<tr>
									<td class="list">Phòng ban</td>
									<td class="list_ret">${canbo.phongban.ten}</td>
								</tr>
								<tr>
									<td class="list">Giới tính</td>
									<td class="list_ret">${canbo.gioitinh}</td>
								</tr>
								<tr>
									<td class="list">Dân tộc</td>
									<td class="list_ret">${canbo.dantoc.ten}</td>
								</tr>
								<tr>
									<td class="list">Tôn giáo</td>
									<td class="list_ret">${canbo.tongiao.ten}</td>
								</tr>
								<tr>
									<td class="list">Ngôn ngữ biết</td>
									<td class="list_ret">${canbo.ngonngubiet}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn1}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn1}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn2}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn2}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn3}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn3}</td>
								</tr>
								<tr>
									<td class="list">Học vị</td>
									<td class="list_ret">${canbo.hocvi.ten}</td>
								</tr>
								<tr>
									<td class="list">Học hàm</td>
									<td class="list_ret">${canbo.hocham.ten}</td>
								</tr>
								<tr>
									<td class="list">Danh hiệu được Nhà nước phong</td>
									<td class="list_ret">${canbo.danhhieu.ten}</td>
								</tr>
							</table>
						</c:if>
						<c:if
							test="${user.permission == 3 && user.soyeulylich.donviquanly.iddonviquanly == canbo.donviquanly.iddonviquanly}">
							<!-- super manager seeee-->
							<table border="0" bgcolor="#fff" align="center" id="info">
								<tr>
									<td class="title" colspan=2 align="center" height="50">Thông
										tin cá nhân</td>
								</tr>
								<tr>
									<td class="list">Họ và tên</td>
									<td class="list_ret" width="500">${canbo.hoten}</td>
								</tr>
								<tr>
									<td class="list">Đơn vị quản lý</td>
									<td class="list_ret">${canbo.donviquanly.ten}</td>
								</tr>
								<tr>
									<td class="list">Phòng ban</td>
									<td class="list_ret">${canbo.phongban.ten}</td>
								</tr>
								<tr>
									<td class="list">Số hiệu công chức</td>
									<td class="list_ret">${canbo.sohieucongchuc}</td>
								</tr>

								<tr>
									<td class="list">Giới tính</td>
									<td class="list_ret">${canbo.gioitinh}</td>
								</tr>
								<tr>
									<td class="list">Số chứng minh thư nhân dân</td>
									<td class="list_ret">${canbo.chungminhnhandan}</td>
								</tr>
								<tr>
									<td class="list">Tên thường dùng khác</td>
									<td class="list_ret">${canbo.tenthuongdung}</td>
								</tr>
								<tr>
									<td class="list">Ngày tháng năm sinh</td>
									<td class="list_ret">${canbo.ngaysinh}</td>
								</tr>
								<tr>
									<td class="list">Nơi sinh</td>
									<td class="list_ret">${canbo.noisinh}</td>
								</tr>
								<tr>
									<td class="list">Quê quán</td>
									<td class="list_ret">${canbo.quequan}</td>
								</tr>
								<tr>
									<td class="list">Nơi ở hiện nay</td>
									<td class="list_ret">${canbo.noiohiennay}</td>
								</tr>
								<tr>
									<td class="list">Gia đình xuất thân</td>
									<td class="list_ret">${canbo.xuatthan.ten}</td>
								</tr>
								<tr>
									<td class="list">Dân tộc</td>
									<td class="list_ret">${canbo.dantoc.ten}</td>
								</tr>
								<tr>
									<td class="list">Tôn giáo</td>
									<td class="list_ret">${canbo.tongiao.ten}</td>
								</tr>
								<tr>
									<td class="list">Ngày vào Đảng</td>
									<td class="list_ret">${canbo.ngayvaodangchinhthuc}</td>
								</tr>
								<tr>
									<td class="list">Ngôn ngữ biết</td>
									<td class="list_ret">${canbo.ngonngubiet}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn1}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn1}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn2}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn2}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn3}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn3}</td>
								</tr>
								<tr>
									<td class="list">Học vị</td>
									<td class="list_ret">${canbo.hocvi.ten}</td>
								</tr>
								<tr>
									<td class="list">Học hàm</td>
									<td class="list_ret">${canbo.hocham.ten}</td>
								</tr>
								<tr>
									<td class="list">Hệ số lương</td>
									<td class="list_ret">${canbo.hesoluong.heso}</td>
								</tr>
								<tr>
									<td class="list">Cấp ủy Đảng</td>
									<td class="list_ret">${canbo.capuy.ten}</td>
								</tr>
								<tr>
									<td class="list">Danh hiệu được Nhà nước phong</td>
									<td class="list_ret">${canbo.danhhieu.ten}</td>
								</tr>
							</table>
						</c:if>

						<c:if
							test="${user.permission == 3 && user.soyeulylich.donviquanly.iddonviquanly != canbo.donviquanly.iddonviquanly}">
							<!-- super manager seeee-->
							<table border="0" bgcolor="#fff" align="center" id="info">
								<tr>
									<td class="title" colspan=2 align="center" height="50">Thông
										tin cá nhân</td>
								</tr>
								<tr>
									<td class="list">Họ và tên</td>
									<td class="list_ret" width="500">${canbo.hoten}</td>
								</tr>
								<tr>
									<td class="list">Đơn vị quản lý</td>
									<td class="list_ret">${canbo.donviquanly.ten}</td>
								</tr>
								<tr>
									<td class="list">Phòng ban</td>
									<td class="list_ret">${canbo.phongban.ten}</td>
								</tr>
								<tr>
									<td class="list">Giới tính</td>
									<td class="list_ret">${canbo.gioitinh}</td>
								</tr>
								<tr>
									<td class="list">Dân tộc</td>
									<td class="list_ret">${canbo.dantoc.ten}</td>
								</tr>
								<tr>
									<td class="list">Tôn giáo</td>
									<td class="list_ret">${canbo.tongiao.ten}</td>
								</tr>
								<tr>
									<td class="list">Ngôn ngữ biết</td>
									<td class="list_ret">${canbo.ngonngubiet}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn1}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn1}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn2}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn2}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn3}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn3}</td>
								</tr>
								<tr>
									<td class="list">Học vị</td>
									<td class="list_ret">${canbo.hocvi.ten}</td>
								</tr>
								<tr>
									<td class="list">Học hàm</td>
									<td class="list_ret">${canbo.hocham.ten}</td>
								</tr>
								<tr>
									<td class="list">Danh hiệu được Nhà nước phong</td>
									<td class="list_ret">${canbo.danhhieu.ten}</td>
								</tr>
							</table>
						</c:if>

						<c:if test="${user.permission == 4}">
							<!-- admin -->
							<table border="0" bgcolor="#fff" align="center" id="info">
								<tr>
									<td class="title" colspan=2 align="center" height="50">Thông
										tin cá nhân</td>
								</tr>
								<tr>
									<td class="list">Họ và tên</td>
									<td class="list_ret" width="500">${canbo.hoten}</td>
								</tr>
								<tr>
									<td class="list">Đơn vị quản lý</td>
									<td class="list_ret">${canbo.donviquanly.ten}</td>
								</tr>
								<tr>
									<td class="list">Phòng ban</td>
									<td class="list_ret">${canbo.phongban.ten}</td>
								</tr>
								<tr>
									<td class="list">Số hiệu công chức</td>
									<td class="list_ret">${canbo.sohieucongchuc}</td>
								</tr>

								<tr>
									<td class="list">Giới tính</td>
									<td class="list_ret">${canbo.gioitinh}</td>
								</tr>
								<tr>
									<td class="list">Số chứng minh thư nhân dân</td>
									<td class="list_ret">${canbo.chungminhnhandan}</td>
								</tr>
								<tr>
									<td class="list">Tên thường dùng khác</td>
									<td class="list_ret">${canbo.tenthuongdung}</td>
								</tr>
								<tr>
									<td class="list">Ngày tháng năm sinh</td>
									<td class="list_ret">${canbo.ngaysinh}</td>
								</tr>
								<tr>
									<td class="list">Nơi sinh</td>
									<td class="list_ret">${canbo.noisinh}</td>
								</tr>
								<tr>
									<td class="list">Quê quán</td>
									<td class="list_ret">${canbo.quequan}</td>
								</tr>
								<tr>
									<td class="list">Nơi ở hiện nay</td>
									<td class="list_ret">${canbo.noiohiennay}</td>
								</tr>
								<tr>
									<td class="list">Gia đình xuất thân</td>
									<td class="list_ret">${canbo.xuatthan.ten}</td>
								</tr>
								<tr>
									<td class="list">Dân tộc</td>
									<td class="list_ret">${canbo.dantoc.ten}</td>
								</tr>
								<tr>
									<td class="list">Tôn giáo</td>
									<td class="list_ret">${canbo.tongiao.ten}</td>
								</tr>
								<tr>
									<td class="list">Ngày vào Đảng</td>
									<td class="list_ret">${canbo.ngayvaodangchinhthuc}</td>
								</tr>
								<tr>
									<td class="list">Ngôn ngữ biết</td>
									<td class="list_ret">${canbo.ngonngubiet}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn1}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn1}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn2}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn2}</td>
								</tr>
								<tr>
									<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
									<td class="list_ret">${canbo.tencntn3}</td>
								</tr>
								<tr>
									<td class="list">Năm tốt nghiệp</td>
									<td class="list_ret">${canbo.namtn3}</td>
								</tr>
								<tr>
									<td class="list">Học vị</td>
									<td class="list_ret">${canbo.hocvi.ten}</td>
								</tr>
								<tr>
									<td class="list">Học hàm</td>
									<td class="list_ret">${canbo.hocham.ten}</td>
								</tr>
								<tr>
									<td class="list">Hệ số lương</td>
									<td class="list_ret">${canbo.hesoluong.heso}</td>
								</tr>
								<tr>
									<td class="list">Cấp ủy Đảng</td>
									<td class="list_ret">${canbo.capuy.ten}</td>
								</tr>
								<tr>
									<td class="list">Danh hiệu được Nhà nước phong</td>
									<td class="list_ret">${canbo.danhhieu.ten}</td>
								</tr>
							</table>
						</c:if>
					</c:if>
					<br /> <br />

					<table border="0" bgcolor="#fff" align="center" id="info">
						<tr>
							<td class="title" colspan=2 align="center" height="50">Sách
								xuất bản</td>
						</tr>
						<tr>
							<td colspan="2" align="">
								<table cellspacing="0" style="width: 715px">
									<tr class="tieu_de">
										<td style="width: 3%">STT</td>
										<td style="width: 40%">Tên sách</td>
										<td style="width: 7%">Năm XB</td>
										<td style="width: 10%">Số trang</td>
										<td style="width: 15%">Thể loại</td>
										<td style="width: 15%">Cơ quan xuất bản</td>
									</tr>
									<%
										int i = 1;
									%>
									<c:forEach items="${canbo.sachxuatbans}" var="sach">
										<tr>
											<td style="width: 3%"><%=i++%></td>
											<td style="width: 40%">${sach.ten}</td>
											<td style="width: 7%">${sach.namxuatban}</td>
											<td style="width: 10%">${sach.sotrang}</td>
											<td style="width: 15%">${sach.theloai}</td>
											<td style="width: 15%">${sach.coquanxuatban}</td>
										</tr>
									</c:forEach>
								</table>
							</td>
						</tr>
					</table>

					<table border="0" bgcolor="#fff" align="center" id="info">
						<tr>
							<td class="title" colspan=2 align="center" height="50">Công
								trình Khoa học</td>
						</tr>
						<tr>
							<td colspan="2" align="">
								<table cellspacing="0" style="width: 715px">
									<tr class="tieu_de">
										<td style="width: 3%">STT</td>
										<td style="width: 40%">Tên đề tài</td>
										<td style="width: 7%">Từ ngày</td>
										<td style="width: 10%">Đến ngày</td>
										<td style="width: 15%">Cơ quan chủ trì</td>
										<td style="width: 15%">Ngày nghiệm thu</td>
									</tr>
									<%
										int j = 1;
									%>
									<c:forEach items="${canbo.quatrinhnghiencuus}" var="nghiencuu">
										<tr>
											<td style="width: 3%"><%=j++%></td>
											<td style="width: 40%">${nghiencuu.tendetai}</td>
											<td style="width: 7%">${nghiencuu.tungay}</td>
											<td style="width: 10%">${nghiencuu.denngay}</td>
											<td style="width: 15%">${nghiencuu.coquanchutri}</td>
											<td style="width: 15%">${nghiencuu.ngaynhiemthu}</td>
										</tr>
									</c:forEach>
								</table>
							</td>
						</tr>
					</table>

					<br /> <br />


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
							type="password" name="user_password" placeholder="Mật khẩu" /> <input
							value="Đăng nhập" class="button" type="submit" name="login" />
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
		<div id="wrap_footer"></div>
		<!--End wrap_footer-->
	</div>
	<!--End wrapper -->
</body>
</html>

