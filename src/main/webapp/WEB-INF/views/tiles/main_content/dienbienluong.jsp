<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="wrap_main">
	<div class="title_home">
		<h2>Thống kê diễn biến lương của ${canbo.hoten}</h2>
	</div>
	<div class="tranfer_work">
		<table style="width: 100%;">
			<tr class="head_tb_tranfer_work">
				<td style="width: 5%">STT</td>
				<td style="width: 20%">Ngạch lương</td>
				<td style="width: 10%">Bậc lương</td>
				<td style="width: 10%">Hệ số lương</td>
				<td style="width: 20%">Từ ngày</td>
				<td style="width: 20%">Đến ngày</td>
			</tr>
			<%
						int i = 1;
					%>
			<c:forEach items="${canbo.dienbienluongs}" var="dienbienluong">
				<tr class="row_1">
					<td class="tranfer_STT"><%=i++%></td>
					<td class="tranfer_name">${dienbienluong.hesoluong.ngachluong.ten}</td>
					<td class="tranfer_name">${dienbienluong.hesoluong.bacluong}</td>
					<td class="tranfer_name">${dienbienluong.hesoluong.heso}</td>
					<td class="tranfer_name">${dienbienluong.tungay}</td>
					<td class="tranfer_name">${dienbienluong.denngay}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<!--End tranfer_work -->
</div>
<!--End wrap_main-->
