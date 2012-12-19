<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="wrap_main">
	<div class="title_home">
		<h2>DANH SÁCH CÁN BỘ CỦA ${donvi.ten}</h2>
	</div>
	<div class="images">
		<a> Chức năng ${donvi.chucnang} </a>

	</div>
	<!--End images-->
	<div class="clear"></div>
	<div class="list_staff">
		<form>
			<table cellspacing="0" cellpadding="0" border-collapse="10px"
				width="100%">
				
				<c:forEach items="${danhsachcanbo}" var="canbo" varStatus="count">
					<c:if test="${(count.index % 2) == 0}">
						<tr style="margin-bottom: 50px;">
							<td style="width: 50%">
								<div class="avatar_img">
									<img src="${canbo.duongdananh}" width="90" height="120" />
								</div>
								<div class="content_staff">
									<p>
										<a class="name_staff">${canbo.hocvi.ten}.${canbo.hoten}</a>
									</p>
									<p>
										<a>Chức vụ : &nbsp;</a><a class="postion_staff">${canbo.chucvu.ten}</a>
									</p>
									<p>
	
										<c:forEach items="${canbo.taikhoandangnhaps}" var="taikhoan">
											<a>Email : &nbsp;</a>
											<a class="email_staff">${taikhoan.email} </a>
										</c:forEach>
	
									</p>
									<p>
										<a>Điện thoại: &nbsp;</a><a class="contact_staff">${canbo.sodienthoai}</a>
									</p>
									<p class="more_staff">
										<a href="/k54/staff/thongtin/soyeulylich.spms?idcanbo=${canbo.idsoyeulylich}">Chi tiết</a>
									</p>
								</div>
								<div class="clear"></div>
							</td>
					</c:if>
					
					<c:if test="${(count.index % 2) == 1}">
						<td style="width: 50%; padding-left: 20px">
								<div class="avatar_img">
									<img src="${canbo.duongdananh}" width="90" height="120" />
								</div>
								<div class="content_staff">
									<p>
										<a class="name_staff">${canbo.hocvi.ten}.${canbo.hoten}</a>
									</p>
									<p>
										<a>Chức vụ : &nbsp;<a class="postion_staff">${canbo.chucvu.ten}</a>
									</p>
									<p>
	
										<c:forEach items="${canbo.taikhoandangnhaps}" var="taikhoan">
											<a>Email : &nbsp;</a>
											<a class="email_staff">${taikhoan.email} </a>
										</c:forEach>
	
									</p>
									<p>
										<a>Điện thoại CQ : &nbsp;</a><a class="contact_staff">${canbo.sodienthoai}</a>
									</p>
									<p class="more_staff">
										<a href="/k54/staff/thongtin/soyeulylich.spms?idcanbo=${canbo.idsoyeulylich}">Chi tiết</a>
									</p>
								</div>
								<div class="clear"></div>
							</td>
						</tr>
					</c:if>
						
						
				</c:forEach>
			</table>
			<!--End table -->
		</form>
	</div>
	<!--end manager_staff -->

</div>
<!--End wrap_main-->
