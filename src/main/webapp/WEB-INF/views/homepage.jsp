<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Home page</title>
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


						<li><a
							href="<c:if test="${not empty homePage}"> ${homePage} </c:if>
							<c:if test="${empty homePage}"> home.spms</c:if>">Trang
								chủ</a></li>
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
				<h2>Thông tin nổi bật</h2>
			</div>
			<div id="thongtinnoibat">
				<div id="noibat_left">
					<ul>
						<li><b>Hội thảo khoa học quốc tế “Tiến hóa kiến tạo và
								địa động lực Biển Đông”</b></li>
						<li><a style="color: #8d8a8a; font-size: 11px;">12/12/2012
								17:22</a></li>
						<li><img src="../images/news/biendong2.jpg" width="400"
							height="200" /></li>
						<li><br /> <a>Ngày 23 và sáng ngày 24/11/2012, tại Đồ
								Sơn, TP. Hải Phòng đã diễn ra Hội thảo khoa học quốc tế đề tài
								KC.09.02/11-15 với chủ đề “Tiến hóa kiến tạo và địa động lực
								Biển Đông” do Viện Địa chất và Địa vật lý biển tổ chức. Tới dự
								hội thảo có đại diện lãnh đạo Bộ Khoa học và Công nghệ, Văn
								phòng Chương trình Biển, Tổng cục Hội địa chất Việt Nam, Tạp chí
								KH-CN Biển và Tạp chí các khoa học về Trái đất, Viện Dầu khí
								Việt Nam, Sở Ngoại vụ TP. Hải Phòng, trường Đại học Khoa học và
								Tự nhiên Thái Nguyên; các nhà khoa học đến từ Viện Hàn lâm khoa
								học Liên bang Nga, Viện Địa chất và Địa vật lý biển và các đơn
								vị có cùng chuyên ngành trong và ngoài Viện Khoa học và Công
								nghệ Việt Nam.</a></li>
						<li style="text-align: right"><a class="more"
							style="color: #09ef3d; font-style: italic;">Xem chi tiết</a></li>
					</ul>

				</div>
				<!--End #noibat_left -->
				<div id="noibat_right">
					<ul>
						<li>
							<div class="sub_left">
								<img src="../images/news/new_1.jpg" width="100" height="100" />
							</div>
							<div class="sub_right">
								<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy điện
									Sông Tranh 2</b>
								<p>
									<a style="color: #8d8a8a">03-12-2012 15:56</a>
								</p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="sub_left">
								<img src="../images/news/new_2.jpg" width="100" height="100" />
							</div>
							<div class="sub_right">
								<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy điện
									Sông Tranh 2</b>
								<p>
									<a style="color: #8d8a8a">03-12-2012 15:56</a>
								</p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="sub_left">
								<img src="../images/news/new_1.jpg" width="100" height="100" />
							</div>
							<div class="sub_right">
								<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy điện
									Sông Tranh 2</b>
								<p>
									<a style="color: #8d8a8a">03-12-2012 15:56</a>
								</p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="sub_left">
								<img src="../images/news/new_2.jpg" width="100" height="100" />
							</div>
							<div class="sub_right">
								<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy điện
									Sông Tranh 2</b>
								<p>
									<a style="color: #8d8a8a">03-12-2012 15:56</a>
								</p>
							</div>
							<div class="clear"></div>
						</li>
						<li>
							<div class="sub_left">
								<img src="../images/news/new_1.jpg" width="100" height="100" />
							</div>
							<div class="sub_right">
								<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy điện
									Sông Tranh 2</b>
								<p>
									<a style="color: #8d8a8a">03-12-2012 15:56</a>
								</p>

							</div>
							<div class="clear"></div>
						</li>
					</ul>
				</div>
				<!--End #noibat_right -->
				<div class="clear"></div>
			</div>
			<!--End thongtinnoibat-->
			<div class="sub_thongtin">
				<div class="title_tb">
					<a>HOẠT ĐỘNG CHUNG CỦA VIỆN KHOA HỌC VÀ CÔNG NGHỆ VIỆT NAM</a>
				</div>
				<table style="width: 100%">
					<tr>
						<td style="width: 50%">
							<ul>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_1.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_2.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_2.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_1.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>

							</ul>

						</td>
						<td></td>
					</tr>
				</table>


				<div class="title_tb">
					<a>TIN KHOA HỌC - CÔNG NGHỆ QUỐC TẾ</a>
				</div>
				<table style="width: 100%">
					<tr>
						<td style="width: 50%">
							<ul>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_1.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_2.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_1.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_2.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>

							</ul>

						</td>
						<td></td>
					</tr>
				</table>

				<div class="title_tb">
					<a>TIN KHOA HỌC - CÔNG NGHỆ TRONG NƯỚC</a>
				</div>
				<table style="width: 100%">
					<tr>
						<td style="width: 50%">
							<ul>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_1.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_2.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_2.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_1.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>

							</ul>

						</td>
						<td></td>
					</tr>
				</table>

				<div class="title_tb">
					<a>THÔNG BÁO</a>
				</div>
				<table style="width: 100%">
					<tr>
						<td style="width: 50%">
							<ul>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_1.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_2.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_1.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>
								<li>
									<div class="sub_left">
										<img src="../images/news/new_2.jpg" width="100" height="100" />
									</div>
									<div class="sub_right">
										<b>Kết quả khảo sát động đất tháng 9/2012 khu vực thủy
											điện Sông Tranh 2</b>
										<p>
											<a style="color: #8d8a8a">03-12-2012 15:56</a>
										</p>
										<p>Một nhóm chuyên gia về kỹ thuật nano tại LAAS1 đã phát
											triển một hệ thống có thể giám sát sự hao mòn và hỏng hóc của
											cánh quạt máy...</p>
									</div>
									<div class="clear"></div>
								</li>

							</ul>

						</td>
						<td></td>
					</tr>
				</table>
			</div>
			<!--End sub_thongtin -->
		</div>
		<!--End wrap_main-->
		<div id="wrap_right">
			<div class="box_right">
				<div class="title_box">
					<a>Đăng nhập</a>
				</div>
				<!--title_box-->
				<div class="content_box">
					<div class="loginpopup" style="">
						<form action="#" method="POST">
							<label>Tài khoản : </label> <input type="text" name="user_name"
								placeholder="Tài khoản" /> <label>Mật khẩu : </label> <input
								type="password" name="user_password" placeholder="Mật khẩu" /> <input
								value="Đăng nhập" class="button" type="submit" name="login" />
						</form>
					</div>
				</div>
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
