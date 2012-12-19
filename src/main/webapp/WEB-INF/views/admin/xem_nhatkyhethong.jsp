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
	<div id="wrapper">
		<div id="wrap_header"></div>
		<!--End wrap_header-->
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
					<a>Nhật ký hệ thống</a>
				</div>
				<div class="list_data">
					<div class="title_table">
						<a> Bộ lọc </a>
					</div>
					<form name="boloc" action="#" method="POST">
						<table class="boloc" cellspacing="0" cellpadding="1"
							style="width: 600px">
							<tr>
								<td><label>Username</label></td>
								<td><input name="username" size="20" type="text" /></td>
							</tr>
							<tr>
								<td><label>Địa chỉ IP</label></td>
								<td><input name="addrip" size="20" type="text" /></td>
							</tr>
							<tr>
								<td><label>Thời gian</label></td>
								<td><input name="start_date" type="date" /> Đến <input
									name="end_date" type="date" /></td>
							</tr>
						</table>
						<div style="text-align: center; margin-top: 20px;">
							<input type="submit" class="button" value="Xem" />
						</div>

					</form>
					<br />
					<table cellspacing="0" cellpadding="0" width="100%">
						<tr>
							<td>
								<table cellspacing="0" cellpadding="1" style="width: 782px">
									<tr class="tieu_de">
										<td style="width: 5%">STT</td>
										<td style="width: 15%">Username</td>
										<td style="width: 15%">Thời gian</td>
										<td style="width: 15%">Địa chỉ IP</td>
										<td style="">Mô tả</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<div class="description">
									<table cellspacing="0" cellpadding="1" style="width: 782px">
									<%int count =0;  %>
										<c:forEach items="${nhatkyhethong}" var="nhatky">
										
											<tr>
												<td style="width: 5%"><%=++count%></td>
												<td style="width: 15%; font-weight: bold;"><a href="/k54/admin/logsystem.spms?iduser=${nhatky.taikhoandangnhap.iduser}">${nhatky.taikhoandangnhap.username}</a></td>
												<td style="width: 15%">${nhatky.thoigiantruycapgannhat}</td>
												<td style="width: 15%">${nhatky.diachiip}</td>
												<td style="">${nhatky.mota }</td>
											</tr>

										</c:forEach>


									</table>
								</div>
							</td>
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
		<div id="wrap_footer"></div>
		<!--End wrap_footer-->
	</div>
	<!--End wrapper-->
</body>
</html>
