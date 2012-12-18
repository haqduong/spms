<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrap_main">
	<div class="title_home">
		<h2>DANH SÁCH ĐỀ TÀI NGHIÊN CỨU CỦA ${donvi.ten}</h2>
	</div>
	<%int i = 1; %>
	<div class="list_research">
		<table style="width: 100%;">
			<tr class="title_tr">
				<td style="width: 5%"><b> STT</b></td>
				<td style="width: 30%"><b> Tên đề tài</b></td>
				<td style="width: 20%"><b> Thời gian</b></td>
				<td style="width: 30%"><b> Cơ quan chủ trì</b></td>
				<td style="width: 20%"><b> Ngày nghiệm thu</b></td>
			</tr>
			<c:forEach items="${canbonghiencuu}" var="canbo">
				<c:forEach items="${canbo.quatrinhnghiencuus}" var="detai">
					<tr class="row_1">
						<td><b><%=i++%></b></td>
						<td><a>${detai.tendetai}</a></td>
						<td><a>Từ ngày&nbsp;${detai.tungay}&nbsp;đến
								ngày&nbsp;${detai.denngay} </a></td>
						<td><a>${detai.coquanchutri} </a></td>
						<td><a>${detai.ngaynhiemthu} </a></td>
					</tr>
				</c:forEach>
			</c:forEach>

		</table>
	</div>
	<!--End list_research -->


</div>
<!--End wrap_main-->