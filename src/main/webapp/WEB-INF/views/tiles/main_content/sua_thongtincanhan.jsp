<%@page import="edu.hust.k54.persistence.Phongban"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.List"%>
<%@page import="edu.hust.k54.persistence.Donviquanly"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="wrap_main">
			<div class="title_home">
				<h2>Cập nhât thông tin sơ yếu lý lịch của ${canbo.hoten}</h2>
			</div>
			<div class="images">
				<img src="${canbo.duongdananh}" width="100" height="150" /> <input
					name="duongdananh" type="text"
					placeholder="Chỗ này là đường dẫn ảnh" />
				<p>
					<input type="button" value="Upload" class="button" />
				</p>
			</div>
			<!--End images-->
			<div class="clear"></div>
			<div class="infomation_staff">
				<form name="edit_staff" action="#" method="POST">

					<table border="0" bgcolor="#fff" align="center" id="info"
						style="width: 100%">
						<tr>
							<td class="title" colspan=2 align="center" height="50">Thông
								tin cá nhân</td>
						</tr>
						<tr>
							<td class="list">Họ và tên</td>
							<td class="list_ret" width="70%"><input id="name"
								type="text" name="name" size="60" height="25"
								value="${canbo.hoten}" /> (*)</td>
						</tr>
						<tr>
							<td class="list">Đơn vị quản lý</td>
							<td class="list_ret"><select id="choiceDonviquanly"
								name="choiceDonviquanly" style="width: 392px;"
								onchange="chageDonViState()">
									<c:forEach items="${donviquanly}" var="donviquanly">
										<option value="${donviquanly.iddonviquanly}">${donviquanly.ten}</option>
									</c:forEach>
							</select> (*)</td>
						</tr>
						<tr>
							<td class="list">Phòng ban</td>
							<td class="list_ret"><select style="width: 392px;"
								id="phongban" name="phongban">
									<option value="${canbo.phongban.idphongban}">${canbo.phongban.ten}</option>
							</select> (*)</td>
						</tr>
						<tr>
							<td class="list">Học vị</td>
							<td class="list_ret"><select style="width: 392px;"
								id="hocvi" name="hocvi">
									<c:forEach items="${hocvi}" var="hocvi">
										<c:if test="${canbo.hocvi.idhocvi == hocvi.idhocvi}">
											<option selected="selected" value="${hocvi.idhocvi}">${hocvi.ten}&nbsp;${hocvi.mota}</option>
										</c:if>
										<c:if test="${canbo.hocvi.idhocvi != hocvi.idhocvi}">
											<option value="${hocvi.idhocvi}">${hocvi.ten}&nbsp;${hocvi.mota}</option>
										</c:if>
									</c:forEach>
							</select> (*)</td>
						</tr>
						<tr>
							<td class="list">Chức vụ</td>
							<td class="list_ret"><select style="width: 392px;"
								id="chucvu" name="chucvu">
									<c:forEach items="${chucvu}" var="chucvu">
										<c:if test="${canbo.chucvu.idchucvu == chucvu.idchucvu}">
											<option selected="selected" value="${chucvu.idchucvu}">${chucvu.ten}</option>
										</c:if>
										<c:if test="${canbo.chucvu.idchucvu != chucvu.idchucvu}">
											<option value="${chucvu.idchucvu}">${chucvu.ten}</option>
										</c:if>
									</c:forEach>
							</select> (*)</td>
						</tr>
						<tr>
							<td class="list">Học hàm</td>
							<td class="list_ret"><select style="width: 392px;"
								id="hocham" name="hocham">
									<c:forEach items="${hocham}" var="hocham">
										<c:if test="${canbo.hocham.idhocham == hocham.idhocham}">
											<option selected="selected" value="${hocham.idhocham}">${hocham.ten}&nbsp;${hocham.mota}</option>
										</c:if>
										<c:if test="${canbo.hocham.idhocham != hocham.idhocham}">
											<option value="${hocham.idhocham}">${hocham.ten}&nbsp;${hocham.mota}</option>
										</c:if>
									</c:forEach>
							</select>(*)</td>
						</tr>
						<tr>
							<td class="list">Cấp ủy</td>
							<td class="list_ret"><select style="width: 392px;"
								id="capuy" name="capuy">
									<c:forEach items="${capuy}" var="capuy">
										<c:if test="${canbo.capuy.idcapuy == capuy.idcapuy}">
											<option selected="selected" value="${capuy.idcapuy}">${capuy.ten}</option>
										</c:if>
										<c:if test="${canbo.capuy.idcapuy != capuy.idcapuy}">
											<option value="${capuy.idcapuy}">${capuy.ten}</option>
										</c:if>
									</c:forEach>
							</select>(*)</td>
						</tr>
						<tr>
							<td class="list">Giáo dục phổ thông</td>
							<td class="list_ret"><select style="width: 392px;"
								id="giaoducphothong" name="giaoducphothong">
									<c:forEach items="${giaoducphothong}" var="giaoducphothong">
										<c:if
											test="${canbo.giaoducphothong.idgiaoducphothong == giaoducphothong.idgiaoducphothong}">
											<option selected="selected"
												value="${giaoducphothong.idgiaoducphothong}">${giaoducphothong.ten}</option>
										</c:if>
										<c:if
											test="${canbo.giaoducphothong.idgiaoducphothong != giaoducphothong.idgiaoducphothong}">
											<option value="${giaoducphothong.idgiaoducphothong }">${giaoducphothong.ten}}</option>
										</c:if>
									</c:forEach>
							</select>(*)</td>
						</tr>
						<tr>
							<td class="list">Danh hiệu</td>
							<td class="list_ret"><select style="width: 392px;"
								id="danhhieu" name="danhhieu">
									<c:forEach items="${danhhieu}" var="danhhieu">
										<c:if
											test="${canbo.danhhieu.iddanhhieu == danhhieu.iddanhhieu}">
											<option selected="selected" value="${danhhieu.iddanhhieu}">${danhhieu.ten}</option>
										</c:if>
										<c:if
											test="${canbo.danhhieu.iddanhhieu != danhhieu.iddanhhieu}">
											<option value="${danhhieu.iddanhhieu}">${danhhieu.ten}</option>
										</c:if>
									</c:forEach>
							</select>(*)</td>
						</tr>
						<tr>
							<td class="list">Xuất thân</td>
							<td class="list_ret"><select style="width: 392px;"
								id="xuatthan" name="xuatthan">
									<c:forEach items="${xuatthan}" var="xuatthan">
										<c:if
											test="${canbo.xuatthan.idxuatthan == xuatthan.idxuatthan}">
											<option selected="selected" value="${xuatthan.idxuatthan}">${xuatthan.ten}
												&nbsp;${xuatthan.mota}</option>
										</c:if>
										<c:if
											test="${canbo.xuatthan.idxuatthan != xuatthan.idxuatthan}">
											<option value="${xuatthan.idxuatthan}">${xuatthan.ten}
												&nbsp;${xuatthan.mota}</option>
										</c:if>
									</c:forEach>
							</select>(*)</td>
						</tr>
						<tr>
							<td class="list">Quốc gia</td>
							<td class="list_ret"><select style="width: 392px;"
								id="quocgia" name="quocgia">
									<c:forEach items="${quocgia}" var="quocgia">
										<c:if test="${canbo.quocgia.idquocgia == quocgia.idquocgia}">
											<option selected="selected" value="${quocgia.idquocgia}">${quocgia.ten}</option>
										</c:if>
										<c:if test="${canbo.quocgia.idquocgia != quocgia.idquocgia}">
											<option value="${quocgia.idquocgia}">${quocgia.ten}</option>
										</c:if>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td class="list">Loại cán bộ</td>
							<td class="list_ret"><select style="width: 392px;"
								id="loaicanbo" name="loaicanbo">
									<option value="0">Cán bộ thường</option>
									<option value="1">Cán nghiên cứu</option>
							</select>(*)</td>
						</tr>
						<tr>
							<td class="list">Số hiệu công chức</td>
							<td class="list_ret"><input onkeyup="checkSHCC()"
								type="text" id="sohieucongchuc" name="sohieucongchuc" size="60"
								height="25" value="${canbo.sohieucongchuc}" />(*)</td>
						</tr>
						<tr>
							<td class="list">Số chứng minh nhân dân</td>
							<td class="list_ret"><input type="text"
								onkeyup="checkCMTND()" id="chungminhnhandan"
								name="chungminhnhandan" size="60" height="25"
								value="${canbo.chungminhnhandan}" />(*)</td>
						</tr>
						<tr>
							<td class="list">Giới tính</td>
							<td class="list_ret"><select style="width: 392px;"
								id="gioitinh" name="gioitinh">
									<option selected="selected" value="Nam">Nam</option>
									<option selected="selected" value="Nữ">Nữ</option>
							</select>(*)</td>
						</tr>
						<tr>
							<td class="list">Tên thường dùng khác</td>
							<td class="list_ret"><input type="text" id="tenthuongdung"
								name="tenthuongdung" size="60" height="25"
								value="${canbo.tenthuongdung}" /></td>
						</tr>
						<tr>
							<td class="list">Ngày tháng năm sinh</td>
							<td class="list_ret"><input type="date" id="ngaysinh"
								name="ngaysinh" size="60" height="25" value="${canbo.ngaysinh}" />(*)</td>
						</tr>
						<tr>
							<td class="list">Nơi sinh</td>
							<td class="list_ret"><input type="text" id="noisinh"
								name="noisinh" size="60" height="25" value="${canbo.noisinh}" />(*)</td>
						</tr>
						<tr>
							<td class="list">Quê quán</td>
							<td class="list_ret"><input type="text" id="quequan"
								name="quequan" size="60" height="25" value="${canbo.quequan}" />(*)</td>
						</tr>
						<tr>
							<td class="list">Nơi ở hiện nay</td>
							<td class="list_ret"><input type="text" id="noiohiennay"
								name="noiohiennay" size="60" height="25"
								value="${canbo.noiohiennay }" />(*)</td>
						</tr>
						<tr>
							<td class="list">Số điện thoại</td>
							<td class="list_ret"><input type="tel"
								onkeyup="checkPhone()" name="sodienthoai" id="sodienthoai"
								size="60" height="25" value="${canbo.sodienthoai }" />(*)</td>
						</tr>
						<tr>
							<td class="list">Ngày vào đảng chính thức</td>
							<td class="list_ret"><input type="date"
								id="ngayvaodangchinhthuc" name="ngayvaodangchinhthuc" size="60"
								height="25" value="${canbo.ngayvaodangchinhthuc}" /></td>
						</tr>
						<tr>
							<td class="list">Ngày cập nhật</td>
							<td class="list_ret"><input type="date" id="ngaycapnhat"
								name="ngaycapnhat" size="60" height="25"
								value="${canbo.ngaycapnhat}" /></td>
						</tr>
						<tr>
							<td class="list">Dân tộc</td>
							<td class="list_ret"><select style="width: 392px;"
								id="dantoc" name="dantoc">
									<c:forEach items="${dantoc}" var="dantoc">
										<c:if test="${canbo.dantoc.iddantoc == dantoc.iddantoc}">
											<option selected="selected" value="${dantoc.iddantoc}">${dantoc.ten}</option>
										</c:if>
										<c:if test="${canbo.dantoc.iddantoc != dantoc.iddantoc}">
											<option value="${dantoc.iddantoc}">${dantoc.ten}</option>
										</c:if>
									</c:forEach>
							</select>(*)</td>
						</tr>
						<tr>
							<td class="list">Tôn giáo</td>
							<td class="list_ret"><select style="width: 392px;"
								id="tongiao" name="tongiao">
									<c:forEach items="${tongiao}" var="tongiao">
										<c:if test="${canbo.tongiao.idtongiao == tongiao.idtongiao}">
											<option selected="selected" value="${tongiao.idtongiao}">${tongiao.ten}</option>
										</c:if>
										<c:if test="${canbo.tongiao.idtongiao != tongiao.idtongiao}">
											<option value="${tongiao.idtongiao}">${tongiao.ten}</option>
										</c:if>
									</c:forEach>
							</select>(*)</td>
						</tr>
						<tr>
							<td class="list">Sức khỏe</td>
							<td class="list_ret"><input type="text" id="suckhoe"
								name="suckhoe" size="60" height="25" value="${canbo.suckhoe}" /></td>
						</tr>
						<tr>
							<td class="list">Ngôn ngữ biết</td>
							<td class="list_ret"><input type="text" id="ngonngubiet"
								name="ngonngubiet" size="60" height="25"
								value="${canbo.ngonngubiet }" /></td>
						</tr>

					</table>
					<br /> <br />
					<h3>${updateSoYeuOK}</h3>
					<table border="0" bgcolor="#fff" align="center" id="info">
						<tr>
							<td class="title" colspan=2 align="center" height="50">Sách
								xuất bản</td>
						</tr>
						<tr>
							<td colspan="2" align="">
								<table id="sach" cellspacing="0" style="width: 715px">
									<tr class="tieu_de">
										<td style="width: 3%">Chọn</td>
										<td style="width: 40%">Tên sách</td>
										<td style="width: 7%">Năm XB</td>
										<td style="width: 10%">Số trang</td>
										<td style="width: 15%">Thể loại</td>
										<td style="width: 15%">Cơ quan xuất bản</td>
									</tr>
									<c:forEach items="${canbo.sachxuatbans}" var="sach">
										<tr>
											<td style="width: 3%"><INPUT type="checkbox" name="chk" /></td>
											<td style="width: 40%">${sach.ten}</td>
											<td style="width: 7%">${sach.namxuatban}</td>
											<td style="width: 10%">${sach.sotrang}</td>
											<td style="width: 15%">${sach.theloai}</td>
											<td style="width: 15%">${sach.coquanxuatban}</td>
										</tr>
									</c:forEach>
								</table> <br></br>
								<center>
									<INPUT type="button" value="Thêm sách" onclick="addRow('sach')" />
									<INPUT type="button" value="Xóa sách"
										onclick="deleteRow('sach')" />
								</center>
							</td>
						</tr>
					</table>

					<br /> <br />
					<div style="text-align: center; margin-top: 20px;">
						<input onclick="checkSubmit()" class="button" name="update"
							value="Cập nhật" size="5" />
					</div>

				</form>
			</div>
			<!--End infomation -->

		</div>
		<!--End wrap_main-->
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
			var selectDir = document.getElementById("choiceDonviquanly");
			var dirIndex = selectDir.selectedIndex;
			for (i = 0; i < eval(allType).length - 1; i++) {
				var dirType = eval(allType)[i].split("@");
				if (eval(dirType)[0] == dirIndex) {
					document.edit_staff.phongban.options[count++] = new Option(
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

		function checkSHCC() {
			var digits = "0123456789";
			var sohieucongchuc = document.getElementById("sohieucongchuc").value;
			for ( var i = 0; i < sohieucongchuc.length; i++) {
				temp = sohieucongchuc.substring(i, i + 1);
				if (digits.indexOf(temp) == -1) {
					alert("Số hiệu công chức không hợp lệ, số hiệu công chức chỉ bao gồm chữ số");
					document.getElementById("sohieucongchuc").value = "";
				}
			}
		}

		function checkCMTND() {
			var digits = "0123456789";
			var sohieucongchuc = document.getElementById("chungminhnhandan").value;
			for ( var i = 0; i < sohieucongchuc.length; i++) {
				temp = sohieucongchuc.substring(i, i + 1);
				if (digits.indexOf(temp) == -1) {
					alert("Số hiệu công chức không hợp lệ, số chứng minh thư nhân dân chỉ bao gồm chữ số");
					document.getElementById("chungminhnhandan").value = "";
				}
			}
		}

		function checkPhone() {
			var digits = "0123456789.)(+";
			var sohieucongchuc = document.getElementById("sodienthoai").value;
			for ( var i = 0; i < sohieucongchuc.length; i++) {
				temp = sohieucongchuc.substring(i, i + 1);
				if (digits.indexOf(temp) == -1) {
					alert("Số hiệu công chức không hợp lệ, số điện thoại chỉ bao gồm chữ số hoặc mã vùng, mã quốc gia (+84)..");
					document.getElementById("sodienthoai").value = "";
				}
			}
		}

		function checkSubmit() {
			var ten = document.getElementById("name").value;
			var sohieucongchuc = document.getElementById("sohieucongchuc").value;
			var CMT = document.getElementById("chungminhnhandan").value;
			var ngaysinh = document.getElementById("ngaysinh").value;
			var noisinh = document.getElementById("noisinh").value;
			var quequan = document.getElementById("quequan").value;
			var noiohiennay = document.getElementById("noiohiennay").value;
			var sodienthoai = document.getElementById("sodienthoai").value;
			if (ten == "" || sohieucongchuc == ""
					|| CMT == "" || ngaysinh == ""
					|| noisinh == "" || quequan == "" || noiohiennay == ""
					|| sodienthoai == "") {
				alert("Không được để trống các mục bắt buộc - có dấu (*)");
			} else {
				document.forms["edit_staff"].submit();
			}
		}

		function addRow(tableID) {

			var table = document.getElementById(tableID);

			var rowCount = table.rows.length;
			var row = table.insertRow(rowCount);

			var cell1 = row.insertCell(0);
			var element1 = document.createElement("input");
			element1.type = "checkbox";
			cell1.appendChild(element1);

			var cell2 = row.insertCell(1);
			var element2 = document.createElement("input");
			element2.type = "text";
			cell2.appendChild(element2);

			var cell3 = row.insertCell(2);
			var element3 = document.createElement("input");
			element3.type = "text";
			cell3.appendChild(element3);

			var cell4 = row.insertCell(3);
			var element4 = document.createElement("input");
			element4.type = "text";
			cell4.appendChild(element4);

			var cell5 = row.insertCell(4);
			var element5 = document.createElement("input");
			element5.type = "text";
			cell5.appendChild(element5);

			var cell6 = row.insertCell(5);
			var element6 = document.createElement("input");
			element6.type = "text";
			
			cell6.appendChild(element6);

		}

		function deleteRow(tableID) {
			try {
				var table = document.getElementById(tableID);
				var rowCount = table.rows.length;

				for ( var i = 0; i < rowCount; i++) {
					var row = table.rows[i];
					var chkbox = row.cells[0].childNodes[0];
					if (null != chkbox && true == chkbox.checked) {
						table.deleteRow(i);
						rowCount--;
						i--;
					}
				}
			} catch (e) {
				alert(e);
			}
		}
	</script>