<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrap_main">
	<c:if test="${not empty err}">
		<div class="error">${err}</div>
	</c:if>

	<c:if test="${not empty flash }">
		<div class="flash">${flash }</div>
	</c:if>

		<div class="add"><a href="uploadreport.spms">Thêm báo cáo</a></div>
	<c:if test="${not empty report_list}">
		<div class="title_home">Danh sách báo cáo</div>
		<table id="report_list" class="table table-hover">
			<c:forEach var="report" items="${report_list}">
				<tr>
					<td class="reportid">${report.idbaocao}</td>
					<td class="idacc">${report.soyeulylich.idsoyeulylich}</td>
					<td class="name">${report.tenbaocao}</td>
					<td class="ngaylap">${report.ngaylap}</td>
					<td class="details"><a
						href="showreport.spms?id=${report.idbaocao }" target="_blank">Xem</a></td>
					<td class="delete"><a
						href="deletereport.spms?id=${report.idbaocao }">Xóa</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</div>