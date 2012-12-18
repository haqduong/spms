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

	<c:if test="${not empty report_list}">
		<div class="title">Danh sách báo cáo</div>
		<table id="report_list">
			<c:forEach var="report" items="${report_list}">
				<tr>
					<td class="reportid">${report.getIdbaocao()}</td>
					<td class="idacc">${report.getSoyeulylich().getIdsoyeulylich()}</td>
					<td class="name">${report.getTenbaocao()}</td>
					<td class="ngaylap">${report.getNgaylap()}</td>
					<td class="details"><a
						href="showreport.spms?id=${report.getIdbaocao() }" target="_blank">Show</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</div>