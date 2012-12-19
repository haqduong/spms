<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="wrap_main">
	<div class="title_home">
		<h2>Thông tin phòng ${phongban.ten} - ${phongban.donviquanly.ten}</h2>
	</div>
	<div class="clear"></div>
	<div class="infomation_staff">
		<form name="edit_staff" action="#" method="POST">

			<table border="0" bgcolor="#fff" align="center" id="info"
				style="width: 100%">
				<tr>
					<td class="list">Tên phòng ban</td>
					<td class="list_ret" width="70%"><input type="text"
						id="tenphong" name="tenphong" size="60" height="25"
						value="${phongban.ten}" />(*)</td>
				</tr>
				<tr>
					<td class="list">Điện thọai</td>
					<td class="list_ret"><input id="sodienthoai"
						onkeydown="checkPhone()" type="text" name="dienthoai" size="60"
						height="25" value="${phongban.dienthoai}" />(*)</td>
				</tr>
				<tr>
					<td class="list">Fax</td>
					<td class="list_ret"><input type="text" id="fax"
						onkeydown="checkFax()" name="fax" size="60" height="25"
						value="${phongban.fax}" />(*)</td>
				</tr>

				<tr>
					<td class="list">Thông tin chung</td>
					<td class="list_ret"><textarea id="thongtinchung"
							name="thongtinchung"> ${phongban.thongtinchung}</textarea>(*)</td>
				</tr>
				<tr>
					<td class="list">Avatar</td>
					<td class="list_ret"><img width="96" height="50"
						src="../images/public/vientoanhoc.jpg" /> <br /> <input
						type="button" name="upload" value="upload" /></td>
				</tr>
			</table>
			<h3>${result}</h3>
			<div style="text-align: center; margin-top: 20px;">
				<input onclick="checkSubmit()" class="button" name="update"
					value="Cập nhật" />
			</div>
		</form>
	</div>
	<!--End infomation -->

</div>
<!--End wrap_main-->


<script type="text/javascript">
		function checkPhone() {
			var digits = "0123456789.)(+";
			var sohieucongchuc = document.getElementById("sodienthoai").value;
			for ( var i = 0; i < sohieucongchuc.length; i++) {
				temp = sohieucongchuc.substring(i, i + 1);
				if (digits.indexOf(temp) == -1) {
					alert("Số điện thoại không hợp lệ, số điện thoại chỉ bao gồm chữ số hoặc mã vùng, mã quốc gia (+84)..");
					document.getElementById("sodienthoai").value = "";
				}
			}
		}

		function checkSubmit() {
			var ten = document.getElementById("tenphong").value;
			var sohieucongchuc = document.getElementById("thongtinchung").value;
			var CMT = document.getElementById("fax").value;
			var sodienthoai = document.getElementById("sodienthoai").value;
			if (ten == "" || sohieucongchuc == ""
					|| CMT == "" || sodienthoai == "") {
				alert("Không được để trống các mục bắt buộc - có dấu (*)");
			} else {
				document.forms["edit_staff"].submit();
			}
		}
		
		function checkFax() {
			var digits = "0123456789.)(+";
			var sohieucongchuc = document.getElementById("fax").value;
			for ( var i = 0; i < sohieucongchuc.length; i++) {
				temp = sohieucongchuc.substring(i, i + 1);
				if (digits.indexOf(temp) == -1) {
					alert("Số fax không hợp lệ, số fax chỉ bao gồm chữ số hoặc mã vùng, mã quốc gia (+84)..");
					document.getElementById("fax").value = "";
				}
			}
		}
	</script>