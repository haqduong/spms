<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrap_main">
	<div class="title_home">
		<h2>Quản lý thông tin tài khoản của ${canbo.hoten}</h2>
	</div>
	<div class="clear"></div>
	<div class="infomation_staff">
		<form name="edit_acount"
			action="/k54/staff/capnhat/taikhoan.spms?idcanbo=${canbo.idsoyeulylich}"
			method="POST">

			<table border="0" bgcolor="#fff" align="center" id="info"
				style="width: 100%">
				<tr>
					<td class="title" colspan=2 align="center" height="50">Tài
						khoản</td>
				</tr>
				<tr>
					<td class="list">User name</td>
					<td class="list_ret" width="70%">${user.username}</td>
				</tr>
				<tr>
					<td class="list">Email</td>
					<td class="list_ret" width="70%"><input name="email"
						id="email" type="email" size="60" height="25"
						value="${user.email}" /></td>
				</tr>

			</table>
			<h4>${chageEmailStatus}</h4>
			<div style="text-align: center; margin-top: 20px;">
				<input onclick="checkNewEmail()" name="updateInfo" class="button"
					value="Cập nhật" />
			</div>
		</form>

		<form name="edit_pass" action="#" method="POST">

			<table border="0" bgcolor="#fff" align="center" id="info"
				style="width: 100%; margin-top: 20px;">
				<tr>
					<td class="title" colspan=2 align="center" height="50">Đổi mật
						khẩu</td>
				</tr>
				<tr>
					<td class="list">Mật khẩu cũ</td>
					<td class="list_ret" width="70%"><input id="old_password"
						type="password" name="pass_old" size="60" height="25" /></td>
				</tr>
				<tr>
					<td class="list">Mật khẩu mới</td>
					<td class="list_ret"><input id="new_password1" type="password"
						name="pass_new1" size="60" height="25" /></td>
				</tr>
				<tr>
					<td class="list">Gõ lại mật khẩu mới</td>
					<td class="list_ret"><input id="new_password2" type="password"
						name="pass_new2" size="60" height="25" /></td>
				</tr>

			</table>
			<h4>${chagePassStatus}</h4>
			<div style="text-align: center; margin-top: 20px;">
				<input onclick="checkNewPass()" name="updatePass" class="button"
					value="Đổi mật khẩu" />
			</div>

		</form>
	</div>
	<!--End infomation -->

</div>
<!--End wrap_main-->

<script type="text/javascript">
	
	function checkNewEmail(){
		var email = document.getElementById("email").value;
		if(email == ""){
			alert("Không được để trống địa chỉ email mới!");
		}else if(checkEmail(email)){
			document.forms["edit_acount"].submit();
		}else{
			alert("Địa chỉ email không đúng cú pháp, xin hãy nhập địa chỉ email đúng!");
		}
		
	}
	
	function checkEmail(email) {
		    if (email.indexOf("@")==-1){
		      return false;}
	    return true;
	}
	
	function checkNewPass(){
		var oldPass = document.getElementById("old_password").value;
		var newPass1 = document.getElementById("new_password1").value;
		var newPass2 = document.getElementById("new_password2").value;
		if(oldPass == "" || newPass1 == "" || newPass2 == "" ){
			alert("Không được để trống các ô!");
		}else{
			if(newPass1 == newPass2){
				document.forms["edit_pass"].submit();
			}else{
				alert("Nhập lại mật khẩu mới không trùng nhau, xin hãy kiểm tra lại. Chú ý Caps Lock!");
			}
		}
	}
	</script>
