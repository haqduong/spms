<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/resources/css/stype.css"/>">
<script type="text/javascript"
	src="<c:url value = "/resources/js/jquery.js"/>"></script>
</head>
<body>
	<div id="wrapper">
		<div id="wrap_header"></div>
		<!--End wrap_header-->
		<div id="wrap_main">
			<div id="wrap_left">
				<div class="menu_left">
					<ul>
						<li><a href="#">Sơ yếu lý lịch</a></li>
						<li><a href="#">Tài khoản đăng nhập</a></li>
						<li><a href="#">Phòng ban</a></li>
						<li><a href="#">Cấp ủy</a></li>
						<li><a href="#">Chức vụ</a></li>
						<li><a href="#">Danh hiệu</a></li>

						<li><a href="#">Học hàm</a></li>
						<li><a href="#">Diến biến học hàm</a></li>
						<li><a href="#">Học vị</a></li>
						<li><a href="#">Diễn biến học vị</a></li>
						<li><a href="#">Ngạch lương</a></li>
						<li><a href="#">Hệ số lương</a></li>
						<li><a href="#">Diễn biến lương</a></li>
						<li><a href="#">Phụ cấp</a></li>
						<li><a href="#">Diễn biến phụ cấp</a></li>
						<li><a href="#">Đơn vị quản lý</a></li>
						<li><a href="#">Giáo dục phổ thông</a></li>
						<li><a href="#">Khen thưởng</a></li>
						<li><a href="#">Khối đơn vị quản lý</a></li>
						<li><a href="#">Kỷ luật</a></li>
						<li><a href="#">Lý lịch khoa học</a></li>
						<li><a href="#">Mức kỉ luật</a></li>
						<li><a href="#">Nhật ký hệ thống</a></li>
						<li><a href="#">Quá trình đi nước ngoài</a></li>
						<li><a href="#">Quá trình nghiên cứu</a></li>
						<li><a href="#">Sách xuất bản</a></li>
						<li><a href="#">Quốc gia</a></li>
						<li><a href="#">Dân tộc</a></li>
						<li><a href="#">Tôn giáo</a></li>
						<li><a href="#">Xuất thân</a></li>
					</ul>
				</div>
			</div>
			<!--End wrap_left-->
			<div id="wrap_center">
				<div class="list_data">
					<div class="title_table">
						<a> Danh sách cán bộ </a>
					</div>
					<table cellspacing="0" cellpadding="0" width="100%">
						<tr>
							<td>
								<table cellspacing="0" cellpadding="1" style="width: 782px">
									<tr class="tieu_de">
										<td style="width: 5%">STT</td>
										<td style="width: 20%">Họ và tên</td>
										<td style="width: 15%">Phòng ban</td>
										<td style="width: 10%">Chức vụ</td>
										<td style="width: 15%">SĐT</td>
										<td style="width: 15%">Email</td>
										<td style="width: 5%"></td>
										<td style="width: 5%"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<div class="description">
									<table cellspacing="0" cellpadding="1" style="width: 782px">
										<tr class="row_1">
											<td style="width: 5%">1</td>
											<td style="width: 20%">Phạm Minh Đạt</td>
											<td style="width: 15%">Viện toán học</td>
											<td style="width: 10%">Trưởng viện</td>
											<td style="width: 15%">012346789</td>
											<td style="width: 15%">abc@gamil.com</td>
											<td style="width: 5%"><a href="#">Xem</a></td>
											<td style="width: 5%"><a href="#">Xóa</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem</a></td>
											<td><a href="#">Xóa</a></td>
										</tr>
										<tr class="row_1">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem</a></td>
											<td><a href="#">Xóa</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem</a></td>
											<td><a href="#">Xóa</a></td>
										</tr>
										<tr class="row_1">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem</a></td>
											<td><a href="#">Xóa</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem</a></td>
											<td><a href="#">Xóa</a></td>
										</tr>
										<tr class="row_1">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem</a></td>
											<td><a href="#">Xóa</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem</a></td>
											<td><a href="#">Xóa</a></td>
										</tr>
										<tr class="row_1">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem</a></td>
											<td><a href="#">Xóa</a></td>
										</tr>
										<tr class="row_2">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem</a></td>
											<td><a href="#">Xóa</a></td>
										</tr>
										<tr class="row_1">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem</a></td>
											<td><a href="#">Xóa</a></td>
										</tr>
										<tr class="row_1">
											<td>1</td>
											<td>Phạm Minh Đạt</td>
											<td>Viện toán học</td>
											<td>Trưởng viện</td>
											<td>012346789</td>
											<td>abc@gamil.com</td>
											<td><a href="#">Xem</a></td>
											<td><a href="#">Xóa</a></td>
										</tr>

									</table>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<!--End list_data-->
				<div class="detail_data">
					<div class="title_table">
						<a> Thông tin chi tiết </a>
					</div>
					<div class="title_tab">
						<ul>
							<li class="active" title="#conTab_1"><a>Sơ yếu lý lịch</a></li>
							<li title="#conTab_2"><a>Diễn biến lương</a></li>
							<li title="#conTab_3"><a>Quá trình công tác</a></li>
							<li title="#conTab_4"><a>Linh tinh</a></li>
							<li title="#conTab_5"><a>Sóng cuốn</a></li>
						</ul>
					</div>
					<!--End tile_tab-->
					<div class="content_tab">
						<div id="conTab_1" class="conTab">
							<form name="edit_staff" action="#" method="POST">
								<table border="0" bgcolor="#fff" align="center" id="info"
									style="width: 100%">
									<tr>
										<td class="list">Họ và tên</td>
										<td class="list_ret" width="70%"><input type="text"
											name="user_name" size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Đơn vị quản lý</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Phòng ban</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Số hiệu công chức</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>

									<tr>
										<td class="list">Giới tính</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Số chứng minh thư nhân dân</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Tên thường dùng khác</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Ngày tháng năm sinh</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Nơi sinh</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Quê quán</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Nơi ở hiện nay</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Gia đình xuất thân</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Dân tộc</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Tôn giáo</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Ngày vào Đảng dự bị</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Ngày vào Đảng chính thức</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Năm tốt nghiệp</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Năm tốt nghiệp</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Chuyên ngành tốt nghiệp ĐH/CĐ</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Năm tốt nghiệp</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Học vị</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Học hàm</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Hệ số lương</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Cấp ủy Đảng</td>
										<td class="list_ret"><input type="text" name="user_name"
											size="60" height="25" /></td>
									</tr>
									<tr>
										<td class="list">Danh hiệu được Nhà nước phong</td>
										<td class="list_ret"><input type="text" name="user_name"
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
														<td class="list_ret"><input type="text"
															name="user_name" size="60" height="25" /></td>
													</tr>

												</tbody>
											</table>
										</td>
									</tr>
								</table>

								<br /> <br />


							</form>
						</div>
						<!--end #conTab_1-->
						<div id="conTab_2" class="conTab">
							<a>conTab_1</a>
						</div>
						<!--end #conTab_2-->
						<div id="conTab_3" class="conTab">
							<a>conTab_3</a>
						</div>
						<!--end #conTab_3-->
						<div id="conTab_4" class="conTab">
							<a>conTab_4</a>
						</div>
						<!--end #conTab_4-->
						<div id="conTab_5" class="conTab">
							<a>conTab_5</a>
						</div>
						<!--end #conTab_5-->
					</div>
					<!--End descrip_tab-->

					<script type="text/javascript">
                            
                            $(document).ready(function(){
                                $(".conTab").hide(); // Ẩn toàn bộ nội dung của tab
                                $("#conTab_1").show(); // Mặc định sẽ hiển thị tab1
                                
                                $(".title_tab ul li").click(function(){ //Khai báo sự kiện khi click vào một tab nào đó
                                    
                                    var activeTab = $(this).attr("title");
                                    $(".title_tab ul li").removeClass("active"); 
                                    $(this).addClass("active"); 
                                    $(".conTab").hide(); 
                                    $(activeTab).fadeIn(); 
                                });
                            });
                            
                            
                        </script>
					<!--end scrip -->


				</div>
				<!--End detail_data-->
			</div>
			<!--End wrap_center-->
			<div class="clear"></div>
		</div>
		<!--End wrap_main -->
		<div class="clear"></div>
		<div id="wrap_footer"></div>
		<!--End wrap_footer-->
	</div>
	<!--End wrapper-->
</body>
</html>
