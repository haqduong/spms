<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrap_main">
	Danh sách báo cáo
	<table id="report_list">
		<c:forEach var="report" items="${report_list}">
			<tr>
				<td class="reportid">${report.getIdbaocao()}</td>
				<td class="idacc">${report.getSoyeulylich().getIdsoyeulylich()}</td>
				<td class="name">${report.getTenbaocao()}</td>
				<td class="ngaylap">${report.getNgaylap()}</td>
				<td class="details"><a href="showreport.spms?id=${report.getIdbaocao() }">Show</a></td>
			</tr>
		</c:forEach>
	</table>
</div>