<%@page import="edu.hust.k54.persistence.Phongban"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.List"%>
<%@page import="edu.hust.k54.persistence.Donviquanly"%>
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
									<li><a href="/k54/guest/donviquanly/gioithieuchung.spms?iddonviquanly=${donviquanly.iddonviquanly}">${donviquanly.ten}</a>
										<ul>
											<li><a href="/k54/guest/donviquanly/gioithieuchung.spms?iddonviquanly=${donviquanly.iddonviquanly}">Giới thiệu chung</a></li>
											<li><a href="/k54/guest/donviquanly/danhsachcanbo.spms?iddonviquanly=${donviquanly.iddonviquanly}">Danh mục cán bộ</a></li>
											<li><a href="/k54/guest/donviquanly/danhsachphongban.spms?iddonviquanly=${donviquanly.iddonviquanly}">Các phòng ban</a> 
											<li><a href="/k54/guest/donviquanly/nghiencuu.spms?iddonviquanly=${donviquanly.iddonviquanly}">Các nghiên cứu</a></li>
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
				<h2>Tìm kiếm</h2>
			</div>
			<br /> <br />
			<div class="find_box">
				<form name="selectSearch" action="search.spms" method="POST"
					class="find_form">
					<table>
						<tr style="">
							<td style="width: 150px"><label>Tên cán bộ : </label></td>
							<td><input type="text" name="tenCanBo"
								placeholder="Tên cán bộ" width="400px" /></td>
						</tr>
						<tr>
							<td><br /></td>
							<td></td>
						</tr>
						<tr>
							<td><label>Viện : </label></td>
							<td><select name="vien" id="find_vien"
								onchange="chageDonViState()">
									<option value="0" selected>Tất cả</option>
									<c:forEach items="${donviquanly}" var="donviquanly">
										<option value="${donviquanly.iddonviquanly}" id="normal_vien">${donviquanly.ten}</option>
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
									<option value="0" selected>Tất cả</option>
							</select> <!--End select --></td>
						</tr>
						<tr>
							<td><br /></td>
							<td></td>
						</tr>

						<tr>
							<td><label>Phân loại cán bộ : </label></td>
							<td><select name="loaicanbo">
									<option value="0" selected>Tất cả</option>
									<option value="0">Cán bộ thường</option>
									<option value="1">Cán bộ nghiên cứu</option>
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
					<%
						int count = 1;
					%>
					<table cellspacing="0" cellpadding="0" width="100%">
						<tr>
							<td>
								<table cellspacing="0" cellpadding="1" style="width: 715px">
									<tr class="tieu_de">
										<td style="width: 5%">STT</td>
										<td style="width: 20%">Họ và tên</td>
										<td style="width: 15%">Đơn vị</td>
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
										<c:if test="${not empty result}">
											<c:forEach items="${result}" var="canbo">
												<tr class="row_1">
													<td style="width: 5%"><%=count++%></td>
													<td style="width: 20%">${canbo.hoten}</td>
													<td style="width: 15%">${canbo.phongban.donviquanly.ten}</td>
													<td style="width: 15%">${canbo.phongban.ten}</td>
													<td style="width: 10%">${canbo.chucvu.ten}</td>
													<td style="width: 15%">${canbo.sodienthoai}</td>
													<c:forEach items="${canbo.taikhoandangnhaps}"
														var="taikhoan">
														<td style="width: 15%">${taikhoan.email}</td>
													</c:forEach>
													<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
												</tr>
											</c:forEach>
										</c:if>
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


	<script type="text/javascript">
	function chageDonViState() {
		removePBOption();
		<%String dsPhongBan = new String();
		List listDonviquanly = (List) request.getAttribute("donviquanly");
		if (listDonviquanly != null) {
			for(int i = 0; i < listDonviquanly.size(); i++){
				Donviquanly donviquanly = (Donviquanly)listDonviquanly.get(i);
				Set<Phongban> phongban = donviquanly.getPhongbans();
				for(Phongban pb: phongban){
					dsPhongBan += (i+2) + "@" + pb.getIdphongban() + "@" + pb.getTen() +"|";	
				}
			}
			
		}%>
		var dir = ("<%=dsPhongBan%>");
			var allType = dir.split("|");
			var i;
			var count = 0;
			document.selectSearch.phongban.options[count] = new Option(
					"Tất cả", "0");
			var selectDir = document.getElementById("find_vien");
			var dirIndex = selectDir.selectedIndex + 1;
			for (i = 0; i < eval(allType).length; i++) {
				var dirType = eval(allType)[i].split("@");
				if (eval(dirType)[0] == dirIndex) {
					document.selectSearch.phongban.options[count++] = new Option(
							eval(dirType)[2], eval(dirType)[1]);
				}
			}
		}

		function removePBOption() {
			var i;
			for (i = 0; i < document.selectSearch.phongban.options.length; i++) {
				document.selectSearch.phongban.remove(i);
			}
		}
	</script>
</body>
</html>
