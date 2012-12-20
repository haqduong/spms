<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
<tiles:insertAttribute name="css_js" />
<tiles:insertAttribute name="date_picker" />

</head>
<body>
	<tiles:insertAttribute name="header" />
	<div id="wrapper">
		<tiles:insertAttribute name="main_content" />
		<tiles:insertAttribute name="session_info" />
		<div class="clear"></div>
	</div>
	<tiles:insertAttribute name="footer" />
	<!--End wrapper -->
</body>
</html>