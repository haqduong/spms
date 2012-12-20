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
					<a>Phân quyền</a>
				</div>
				<div class="list_data">
					<div class="title_table">
						<a> Bộ lọc </a>
					</div>
					<form name="boloc"
						action="/k54/admin/phanquyen.spms?manager=filter" method="POST">
						<table class="boloc" cellspacing="0" cellpadding="1"
							style="width: 600px">
							<tr>
								<td><label>Username</label></td>
								<td><input name="username" size="20" type="text" /></td>
							</tr>
							<tr>
								<td><label>Đơn vị</label></td>
								<td><select name="donvi" id="find_vien"
									onchange="chageDonViState()">

										<c:forEach items="${donvis}" var="donvi">
											<option value="${donvi.iddonviquanly }">${donvi.ten}</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<td><label>Phòng ban</label></td>
								<td><select name="phongban" id="phongban">
										<option value="">Tất cả</option>
								</select></td>
							</tr>
						</table>
						<div style="text-align: center; margin-top: 20px;">
							<input type="submit" class="button" value="Xem" />
						</div>

					</form>
					<br />
					<c:if test='${not empty "${statusError}" }'>
						<a style="font-weight: bold; color: red;">${statusError}</a>
					</c:if>
					<table cellspacing="0" cellpadding="0" width="100%">
						<tr>
							<td>
								<table cellspacing="0" cellpadding="1" style="width: 782px">
									<tr class="tieu_de">
										<td style="width: 5%">STT</td>
										<td style="width: 15%">Username</td>
										<td style="width: 15%">Họ tên</td>
										<td style="width: 15%">Đơn vị</td>
										<td style="width: 20%">Phòng ban</td>
										<td style="">Quyền</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<div class="description">
									<table cellspacing="0" cellpadding="1" style="width: 782px">
										<%int count = 0; %>
										<c:forEach items="${phanquyens }" var="phanquyen">
											<tr>
												<td style="width: 5%"><%=++count %></td>
												<td style="width: 15%; font-weight: bold;"><a
													href="/k54/admin/phanquyen.spms?iduser=${phanquyen.iduser}">${phanquyen.username
														}</a></td>
												<td style="width: 15%">${phanquyen.soyeulylich.hoten }</td>
												<td style="width: 15%">${phanquyen.soyeulylich.donviquanly.ten
													}</td>
												<td style="width: 20%">${phanquyen.soyeulylich.phongban.ten
													}</td>
												<td style=""><c:if test="${phanquyen.permission == 0}">Khách</c:if>
													<c:if test="${phanquyen.permission == 1}">Cán bộ</c:if> <c:if
														test="${phanquyen.permission == 2}">Quản lý phòng ban</c:if>
													<c:if test="${phanquyen.permission == 3}">Quản lý viện</c:if>
													<c:if test="${phanquyen.permission == 4}">Quản trị hệ thống</c:if>
												</td>
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
	    					dsPhongBan += i + "@" + pb.getIdphongban() + "@" + pb.getTen() +"|";	
	    				}
	    			}
	    			
	    		}%>
	    		var dir = ("<%=dsPhongBan%>");
	    			var allType = dir.split("|");
	    			var i;
	    			var count = 0;
	    			var selectDir = document.getElementById("find_vien");
	    			var dirIndex = selectDir.selectedIndex;
	    			for (i = 0; i < eval(allType).length - 1; i++) {
	    				var dirType = eval(allType)[i].split("@");
	    				if (eval(dirType)[0] == dirIndex) {
	    					document.boloc.phongban.options[count++] = new Option(
	    							eval(dirType)[2], eval(dirType)[1]);
	    				}
	    			}
	    		}
		        function removePBOption() {
					var x = document.getElementById("phongban");
					while (x.options.length > 0) {
						x.remove(0);
					}
				}

        </script>
</body>
</html>
