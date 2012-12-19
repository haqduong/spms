<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrap_main">
	<div class="title_home">
		<h2>Thống kê kỉ luật của ${phongban.ten}</h2>
	</div>
	<%int i = 0; %>
	<div class="tranfer_work">
		<table style="width: 100%;">
			<tr class="head_tb_tranfer_work">
				<td style="width: 5%">STT</td>
				<td style="width: 15%">Tên cán bộ</td>
				<td style="width: 30%">Mức kỉ luật</td>
				<td style="width: 35%">Hình thức kỉ luật</td>
				<td style="width: 15%">Thời gian</td>
				<td style="width: 10%">Xóa</td>
			</tr>
			<c:forEach items="${kyluat}" var="kl">
			<tr class="row_1">
				<td class="tranfer_STT"><%=++i %></td>
				<td style="width: 15%">${kl.soyeulylich.hoten}</td>
				<td style="width: 30%">${kl.muckyluat.noidung}</td>
				<td style="width: 35%">${kl.hinhthuc}</td>
				<td style="width: 15%">${kl.thoigian}</td>
				<td style="width: 10%"><a href="/k54/manager/thongtin/kyluat/xoakyluat.spms?idkyluat=${kt.idkyluat}">Xóa</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<!--End tranfer_work -->


</div>
<!--End wrap_main-->