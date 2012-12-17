<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div id="wrap_main">
	<form:form modelAttribute="uploadAvatar" method="post"
		enctype="multipart/form-data">

		<fieldset>
			<legend>Upload Fields</legend>

			<p>
				<form:label for="name" path="name">Name</form:label>
				<br />
				<form:input path="name" />
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
</div>