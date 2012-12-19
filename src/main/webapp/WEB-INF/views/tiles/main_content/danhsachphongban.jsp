<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrap_main">
	<div class="title_home">
		<h2>DANH SÁCH ĐƠN VỊ CỦA ${donvi.ten}</h2>
	</div>
	<div class="list_dv">
		<c:forEach items="${danhsachphongban}" var="phongban">

			<div class="row_dv">
				<div class="avatar_dv">
					<img src="<c:url value = "${phongban.hinhanh}"/>"
			width="200" height="150" />
				</div>
				<div class="content_dv">
					<p class="name_dv">
						<a>${phongban.ten}</a>
					</p>
					<p class="addr_dv">
						<a><b> Điện thoại &nbsp:</b> ${phongban.dienthoai}</a>
					</p>
					<p class="addr_dv">
						<a> <b>Fax &nbsp:</b> ${phongban.fax}
						</a>
					</p>
					<p class="more_dv">
						<a href="/k54/guest/donviquanly/xemphongban.spms?idphongban=${phongban.idphongban}">Xem chi tiết</a>
					</p>
				</div>
				<div class="clear"></div>
			</div>
			<!--End row_dv -->
		</c:forEach>
	</div>


</div>
<!--End wrap_main-->
