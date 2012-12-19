<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div id="wrap_main">
	<div class="title_home">
		<h2>Thống kê khen thưởng của ${phongban.ten}</h2>
	</div>
	<%int i =0; %>
	<div class="tranfer_work">
		<table style="width: 100%;">
			<tr class="head_tb_tranfer_work">
				<td style="width: 5%">STT</td>
				<td style="width: 15%">Tên cán bộ</td>
				<td style="width: 25%">Lý do</td>
				<td style="width: 10%">Hình thức</td>
				<td style="width: 10%">Cấp khen thưởng</td>
				<td style="width: 10%">Người quyết định</td>
				<td style="width: 10%">Ngày khen thưởng</td>
				<td style="width: 10%">Trạng thái</td>
				<td style="width: 10%">Xóa</td>
			</tr>
			<c:forEach items="${khenthuong}" var="kt">
			
			<tr class="row_1">
				<td class="tranfer_STT"><%=++i %></td>
				<td class="tranfer_name">${kt.soyeulylich.hoten}</td>
				<td class="tranfer_work_old">${kt.lydo}</td>
				<td style="width: 10%">${kt.hinhthuc}</td>
				<td style="width: 10%">${kt.capkhenthuong}</td>
				<td style="width: 10%">${kt.nguoikyquyetdinh}</td>
				<td style="width: 10%">${kt.ngayquyetdinh}</td>
				<td style="width: 10%">${kt.trangthai} </td>
				<td style="width: 10%"><a href="/k54/manager/thongtin/khenthuong/xoakhenthuong.spms?idkhenthuong=${kt.idkhenthuong}">Xóa</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<!--End tranfer_work -->


</div>
<!--End wrap_main-->
