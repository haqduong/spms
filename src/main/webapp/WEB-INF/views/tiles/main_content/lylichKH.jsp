<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="wrap_main">
	<div class="title_home">
		<h2>Lý lịch khoa học của ${canbo.hoten}</h2>
	</div>

	<div class="clear"></div>
	<div class="manager_staff">
		<form>
			<div class="title_home">
				<h3>Quá trình nghiên cứu</h3>
			</div>
			<%
						int i = 1;
					%>
			<table border="0" bgcolor="#fff" align="center" id="info"
				style="width: 100%">
				<tr class="title_table">
					<td style="width: 5%">STT</td>
					<td style="width: 30%">Đào tạo học viên</td>
					<td style="width: 30%">Định hướng nghiên cứu</td>
					<td style="width: 35%">Nội dung</td>
				</tr>
				<tr>
					<td>1</td>
					<td>${canbo.lylichkhoahoc.daotaohocvien}</td>
					<td>${canbo.lylichkhoahoc.dinhhuongnghiencuu}</td>
					<td>${canbo.lylichkhoahoc.lylichkhoahoccol}</td>
				</tr>
			</table>
			<br /> <br />

			<div class="title_home">
				<h3>Quá trình đi nước ngoài</h3>
			</div>
			<table border="0" bgcolor="#fff" align="center" id="info"
				style="width: 100%">
				<tr class="title_table">
					<td style="width: 5%">STT</td>
					<td style="width: 15%">Quốc gia</td>
					<td style="width: 55%">Mục đích</td>
					<td style="width: 15%">Từ ngày</td>
					<td style="width: 15%">Đến ngày</td>
				</tr>
				<c:forEach items="${canbo.quatrinhdinuocngoais}"
					var="quatrinhdinuocngoai">
					<tr>
						<td><%=i++%></td>
						<td>${quatrinhdinuocngoai.quocgia.ten}</td>
						<td>${quatrinhdinuocngoai.mucdich}</td>
						<td>${quatrinhdinuocngoai.tungay}</td>
						<td>${quatrinhdinuocngoai.denngay}</td>
					</tr>
				</c:forEach>
			</table>
			<br /> <br />
		</form>
	</div>
	<!--End infomation -->
	<div class="clear"></div>
</div>
<!--End wrap_main-->