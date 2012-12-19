<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrap_main">
	<c:if test="${not empty err}">
		<div class="error">${err}</div>
	</c:if>
	
	<c:if test="${not empty flash }">
		<div class="flash">${flash }</div>
	</c:if>

	<c:if test="${not empty loggedIn}">
	<form:form modelAttribute="uploadItem" method="post"
		enctype="multipart/form-data" class="bootstrap" action="uploadreport.spms" >

		<fieldset>
			<p>
				<form:label for="name" path="name">Tên</form:label>
				<br />
				<form:input path="name" type="text" />
			</p>
			<p>
				<form:label for="fileData" path="fileData">File</form:label>
				<br />
				<form:input path="fileData" type="file" />
			</p>
			<p>
				<input type="submit" />
			</p>
		</fieldset>
	</form:form>
	</c:if>
</div>