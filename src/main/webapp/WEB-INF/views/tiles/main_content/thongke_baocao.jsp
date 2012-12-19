<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrap_main">

	<div class="title_home">
		<h2>Danh sách báo cáo</h2>
	</div>
	<br /> <br />
	<div class="find_box">


		<form action="#" method="POST" class="find_form">

			<table>
				<tr style="">
					<td style="width: 200px"><label>Thông tin cán bộ lập
							báo cáo </label></td>
					<td>
						<ul>
							<li><label>Acount</label> <input name="user_name_bonus"
								type="text" placeholder="Acount" /></li>
							<br />
							<li><label>Họ tên: </label> <b>Phạm Minh Đạt</b> <!--Chỗ này dùng ajax để hiển thị tên, khi người dùng nhập acount cán bộ -->
							</li>
							<br />
							<li><label>Đơn vị: </label> <b>Viện công nghệ thông tin</b></li>
						</ul>
					</td>
				</tr>
				<tr>
					<td><br /></td>
					<td></td>
				</tr>
				<tr>
					<td><label>Phòng ban : </label></td>
					<td><select name="phongban">
							<option value="0" selected>Phòng ban</option>
							<option value="1">Phòng ban 1</option>
							<option value="2">Phòng ban 2</option>
							<option value="3">Phòng ban 3</option>
							<option value="4">Phòng ban 4</option>
							<option value="5">Phòng ban 5</option>
					</select> <!--End select --></td>
				</tr>
				<tr>
					<td><br /></td>
					<td></td>
				</tr>
				<tr>

					<td><input value="Xem danh sách báo cáo" name="xembaocao"
						class="button" type="submit" name="find" /></td>
					<td></td>
				</tr>
			</table>
		</form>
	</div>
	<div class="result_find">
		<div class="list_data">
			<table cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td>
						<table cellspacing="0" cellpadding="1" style="width: 715px">
							<tr class="tieu_de">
								<td style="width: 5%">STT</td>
								<td style="width: 20%">Họ và tên</td>
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
								<tr class="row_1">
									<td style="width: 5%">1</td>
									<td style="width: 20%">Phạm Minh Đạt</td>
									<td style="width: 15%">Viện toán học</td>
									<td style="width: 10%">Trưởng viện</td>
									<td style="width: 15%">012346789</td>
									<td style="width: 15%">abc@gamil.com</td>
									<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_2">
									<td>1</td>
									<td>Phạm Minh Đạt</td>
									<td>Viện toán học</td>
									<td>Trưởng viện</td>
									<td>012346789</td>
									<td>abc@gamil.com</td>
									<td><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_1">
									<td style="width: 5%">1</td>
									<td style="width: 20%">Phạm Minh Đạt</td>
									<td style="width: 15%">Viện toán học</td>
									<td style="width: 10%">Trưởng viện</td>
									<td style="width: 15%">012346789</td>
									<td style="width: 15%">abc@gamil.com</td>
									<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_2">
									<td>1</td>
									<td>Phạm Minh Đạt</td>
									<td>Viện toán học</td>
									<td>Trưởng viện</td>
									<td>012346789</td>
									<td>abc@gamil.com</td>
									<td><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_1">
									<td style="width: 5%">1</td>
									<td style="width: 20%">Phạm Minh Đạt</td>
									<td style="width: 15%">Viện toán học</td>
									<td style="width: 10%">Trưởng viện</td>
									<td style="width: 15%">012346789</td>
									<td style="width: 15%">abc@gamil.com</td>
									<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_2">
									<td>1</td>
									<td>Phạm Minh Đạt</td>
									<td>Viện toán học</td>
									<td>Trưởng viện</td>
									<td>012346789</td>
									<td>abc@gamil.com</td>
									<td><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_1">
									<td style="width: 5%">1</td>
									<td style="width: 20%">Phạm Minh Đạt</td>
									<td style="width: 15%">Viện toán học</td>
									<td style="width: 10%">Trưởng viện</td>
									<td style="width: 15%">012346789</td>
									<td style="width: 15%">abc@gamil.com</td>
									<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_2">
									<td>1</td>
									<td>Phạm Minh Đạt</td>
									<td>Viện toán học</td>
									<td>Trưởng viện</td>
									<td>012346789</td>
									<td>abc@gamil.com</td>
									<td><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_1">
									<td style="width: 5%">1</td>
									<td style="width: 20%">Phạm Minh Đạt</td>
									<td style="width: 15%">Viện toán học</td>
									<td style="width: 10%">Trưởng viện</td>
									<td style="width: 15%">012346789</td>
									<td style="width: 15%">abc@gamil.com</td>
									<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_2">
									<td>1</td>
									<td>Phạm Minh Đạt</td>
									<td>Viện toán học</td>
									<td>Trưởng viện</td>
									<td>012346789</td>
									<td>abc@gamil.com</td>
									<td><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_1">
									<td style="width: 5%">1</td>
									<td style="width: 20%">Phạm Minh Đạt</td>
									<td style="width: 15%">Viện toán học</td>
									<td style="width: 10%">Trưởng viện</td>
									<td style="width: 15%">012346789</td>
									<td style="width: 15%">abc@gamil.com</td>
									<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_2">
									<td>1</td>
									<td>Phạm Minh Đạt</td>
									<td>Viện toán học</td>
									<td>Trưởng viện</td>
									<td>012346789</td>
									<td>abc@gamil.com</td>
									<td><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_1">
									<td style="width: 5%">1</td>
									<td style="width: 20%">Phạm Minh Đạt</td>
									<td style="width: 15%">Viện toán học</td>
									<td style="width: 10%">Trưởng viện</td>
									<td style="width: 15%">012346789</td>
									<td style="width: 15%">abc@gamil.com</td>
									<td style="width: 10%"><a href="#">Xem chi tiết</a></td>
								</tr>
								<tr class="row_2">
									<td>1</td>
									<td>Phạm Minh Đạt</td>
									<td>Viện toán học</td>
									<td>Trưởng viện</td>
									<td>012346789</td>
									<td>abc@gamil.com</td>
									<td><a href="#">Xem chi tiết</a></td>
								</tr>

							</table>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<!--End list_data-->

	</div>
</div>