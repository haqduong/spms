<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrap_main">
	<div class="title_home">
		<h2>Thống kê khen thưởng của ${canbo.hoten}</h2>
	</div>
	<div class="tranfer_work">
		<table style="width: 100%;">
			<tr class="head_tb_tranfer_work">
				<td style="width: 5%">STT</td>
				<td style="width: 15%">Lý do</td>
				<td style="width: 25%">Hình thức</td>
				<td style="width: 25%">Cấp khen thưởng</td>
				<td style="width: 25%">Ngày quyết định</td>
				<td style="width: 25%">Trạng thái</td>
				<td style="width: 25%">Người ký quyết định</td>
			</tr>
			<%int i = 0; %>
			<c:forEach items="${canbo.khenthuongs}" var="khenthuong">
				<tr class="row_1">
					<td class="tranfer_STT"><%=i++%></td>
					<td class="tranfer_name">${khenthuong.lydo}</td>
					<td class="tranfer_work_old">${khenthuong.hinhthuc}</td>
					<td class="tranfer_work_old">${khenthuong.capkhenthuong}</td>
					<td class="tranfer_work_old">${khenthuong.ngayquyetdinh}</td>
					<td class="tranfer_work_old">${khenthuong.trangthai}</td>
					<td class="tranfer_work_old">${khenthuong.nguoikyquyetdinh}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<!--End tranfer_work -->


</div>
<!--End wrap_main-->
