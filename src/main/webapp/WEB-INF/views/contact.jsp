<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Liên hệ</title>
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
						<li><a
							href="<c:if test="${not empty search}"> ${search} </c:if>
							<c:if test="${empty search}">/guest/search.spms</c:if>">Tìm
								kiếm</a></li>
						<li><a
							href="<c:if test="${not empty info}"> ${info} </c:if>
							<c:if test="${empty info}">/guest/info.spms</c:if>">Giới
								thiệu</a></li>
						<li><a
							href="<c:if test="${not empty contact}"> ${contact} </c:if>
							<c:if test="${empty contact}">/guest/contact.spms</c:if>">Liên
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
				<h2>Liên hệ</h2>
			</div>
			<div class="contact">
				<form name="lienhe" action="#" method="POST">
					<table cellspacing="0" cellpadding="0" width="100%" align="center"
						border="0" id="table51">
						<tbody>
							<tr>
								<td height="73" valign="top">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td><table width="100%" border="0" align="right"
														cellpadding="5" cellspacing="2">
														<tbody>
															<tr>
																<td width="17%" align="right" class="content">Tên
																	quý khách:</td>
																<td width="83%" style="padding: 5px;"><input
																	name="ctl00$ContentPlaceHolder1$name" type="text"
																	id="ctl00_ContentPlaceHolder1_name"
																	style="height: 23px; width: 500px" size="94">
																	(*)</td>
															</tr>
															<tr>
																<td align="right" class="content">Địa chỉ mail:</td>
																<td style="padding: 5px;"><input
																	name="ctl00$ContentPlaceHolder1$email" type="text"
																	id="ctl00_ContentPlaceHolder1_email"
																	style="height: 23px;; width: 500px" size="94">
																	(*)</td>
															</tr>
															<tr>
																<td align="right" class="content">&nbsp;Điện thoại:</td>
																<td style="padding: 5px;"><input
																	name="ctl00$ContentPlaceHolder1$phone" type="text"
																	id="ctl00_ContentPlaceHolder1_phone"
																	style="height: 23px;; width: 500px" size="94">
																	(*)</td>
															</tr>

															<tr>
																<td align="right" class="content">&nbsp;Tiêu đề:</td>
																<td style="padding: 5px;"><input
																	name="ctl00$ContentPlaceHolder1$title" type="text"
																	id="ctl00_ContentPlaceHolder1_title"
																	style="height: 23px;; width: 500px" size="94">
																	(*)</td>
															</tr>
															<tr>
																<td align="right" class="content"><span
																	class="labe_form">Mã bảo vệ:</span></td>
																<td align="left">
																	<table cellpadding="0" cellspacing="0" border="0"
																		width="100%">
																		<tbody>
																			<tr>

																				<td style="padding-left: 6px; width: 100px;"><b>abcdef</b>
																				</td>
																				<td><input name="mabaove" type="text"
																					placeholder="(Mã bảo vệ)" /></td>
																			</tr>
																		</tbody>
																	</table>
																</td>
															</tr>

															<tr>
																<td align="right" class="content">Thông tin nhắn
																	gửi:</td>
																<td style="padding: 3px 0 0 5px; width: 500px"><textarea
																		name="ctl00$ContentPlaceHolder1$txtContent" rows="10"
																		cols="70" id="ctl00_ContentPlaceHolder1_txtContent"></textarea>
																	(*)</td>
															</tr>
															<tr>
																<td colspan="2"></td>
															</tr>
														</tbody>
													</table></td>
											</tr>
											<tr>
												<td>
													<table border="0" cellpadding="3" cellspacing="0"
														width="100%">
														<tbody>
															<tr>
																<td width="86%" align="center"><input
																	class="button" type="submit" name="guidi"
																	value="Gửi đi">
															</tr>
														</tbody>
													</table>

												</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</form>

			</div>
			<!-- End contact -->


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