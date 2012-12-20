<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<div id="wrap_header">
	<div id="banner_header">
		<div class="stitle_web" ><img src="<c:url value = "/resources/images/banner/logonew.png"/>" /> </div>
	</div>
	<!--End banner_header -->
	<div id="nav_menu">
		<div class="header-row-1">
			<ul>
				<li><a
					href="<c:if test="${not empty homePage}"> ${homePage} </c:if>
							<c:if test="${empty homePage}">/k54/home.spms</c:if>">Trang
						chủ</a></li>
				<li><a href="#">Tin tức - thông báo</a>
					<ul>
						<li><a href="#">Hoạt động</a></li>
						<li><a href="#">Tin KH trong nước</a></li>
						<li><a href="#">Tin KH quốc tế</a></li>
						<li><a href="#">Thông báo</a></li>
					</ul></li>
				<li><a>Đơn vị</a>
					<ul>
						<c:forEach items="${donviquanly}" var="donviquanly">
							<li><a
								href="/k54/guest/donviquanly/gioithieuchung.spms?iddonviquanly=${donviquanly.iddonviquanly}">${donviquanly.ten}</a>
								<ul>
									<li><a
										href="/k54/guest/donviquanly/gioithieuchung.spms?iddonviquanly=${donviquanly.iddonviquanly}">Giới
											thiệu chung</a></li>
									<li><a
										href="/k54/guest/donviquanly/danhsachcanbo.spms?iddonviquanly=${donviquanly.iddonviquanly}">Danh
											mục cán bộ</a></li>
									<li><a
										href="/k54/guest/donviquanly/danhsachphongban.spms?iddonviquanly=${donviquanly.iddonviquanly}">Các
											phòng ban</a>
									<li><a
										href="/k54/guest/donviquanly/nghiencuu.spms?iddonviquanly=${donviquanly.iddonviquanly}">Các
											nghiên cứu</a></li>
								</ul></li>
						</c:forEach>

					</ul></li>
				<li></li>

				<li><a
					href="<c:if test="${not empty search}"> ${search} </c:if>
							<c:if test="${empty search}"> /k54/guest/search.spms</c:if>">Tìm
						kiếm</a></li>
				<li><a
					href="<c:if test="${not empty info}"> ${info} </c:if>
							<c:if test="${empty info}"> /k54/guest/info.spms</c:if>">Giới
						thiệu</a></li>
				<li><a
					href="<c:if test="${not empty contact}"> ${contact} </c:if>
							<c:if test="${empty contact}"> /k54/guest/contact.spms</c:if>">Liên
						hệ</a></li>
			</ul>
		</div>
		<!--End header-row-1-->
	</div>
	<!-- end nav_menu -->
</div>
<!--End wrap_header -->
