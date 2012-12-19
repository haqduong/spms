<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrap_main">
	<div class="title_home">
		<h2>Thống kê kỉ luật của ${canbo.hoten}</h2>
	</div>
	<div class="tranfer_work">
		<%
					int i = 1;
				%>
		<table style="width: 100%;">
			<tr class="head_tb_tranfer_work">
				<td style="width: 5%">STT</td>
				<td style="width: 15%">Thời gian</td>
				<td style="width: 30%">Hình thức</td>
				<td style="width: 35%">Nội dung kỷ luật</td>
			</tr>

			<c:forEach items="${canbo.kyluats}" var="kyluat">
				<tr class="row_1">
					<td class="tranfer_STT"><%=i++%></td>
					<td class="tranfer_name">${kyluat.thoigian}</td>
					<td class="tranfer_work_old">${kyluat.hinhthuc}</td>
					<td class="tranfer_work_new">${kyluat.muckyluat.noidung}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<!--End tranfer_work -->
</div>
<!--End wrap_main-->
