<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div id="wrap_main">
	<c:if test="${not empty err}">
		<div class="error">${err}</div>
	</c:if>

	<c:if test="${not empty flash }">
		<div class="flash">${flash }</div>
	</c:if>

	<div class="add">
		<a href="uploadreport.spms">Thêm báo cáo</a>
	</div>
	<form:form modelAttribute="uploadItem" method="post"
		enctype="multipart/form-data" class="bootstrap"
		action="uploadreport.spms">

		<fieldset>
			<form:label for="name" path="name">Tên</form:label>
			<form:input path="name" type="text" />
			<form:label for="fileData" path="fileData">File</form:label>
			<form:input path="fileData" type="file" />
			<input type="submit" />
		</fieldset>
	</form:form>
	<c:if test="${not empty report_list}">
		<div class="title_home">Danh sách báo cáo</div>
		<table id="report_list" class="table table-hover">
			<tr>
				<th>ID báo cáo</th>
				<th>ID người tạo</th>
				<th>Tên báo cáo</th>
				<th>Ngày nộp báo cáo</th>
				<th></th>
				<th></th>
			</tr>
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