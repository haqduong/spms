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
	<%
				int i = 0;
			%>
	<div class="list_staff">
		<form>
			<table cellspacing="0" cellpadding="0" border-collapse="10px"
				width="100%">
				<c:forEach items="${danhsachcanbo}" var="canbo">
					<%
							i++;
						    int div = i/2;
						%>
				</c:forEach>
				<tr style="margin-bottom: 50px;">
					<td style="width: 50%">
						<div class="avatar_img">
							<img src="../images/public/canbo_1.jpg" width="90" height="120" />
						</div>
						<div class="content_staff">
							<p>
								<a class="name_staff">GS. Châu Văn Minh</a>
							</p>
							<p>
								<a class="postion_staff">Viện trưởng</a>
							</p>
							<p>
								<a>Email : &nbsp;</a><a class="email_staff">cvminh@vast.ac.vn</a>
							</p>
							<p>
								<a>Điện thoại CQ : &nbsp;</a><a class="contact_staff"> (+84)
									3 868 2595</a>
							</p>
							<p class="more_staff">
								<a href="#">Chi tiết</a>
							</p>
						</div>
						<div class="clear"></div>
					</td>
					<td style="width: 50%; padding-left: 20px;">
						<div class="avatar_img">
							<img src="../images/public/canbo_1.jpg" width="90" height="120" />
						</div>
						<div class="content_staff">
							<p>
								<a class="name_staff">GS. Châu Văn Minh</a>
							</p>
							<p>
								<a class="postion_staff">Viện trưởng</a>
							</p>
							<p>
								<a>Email : &nbsp;</a><a class="email_staff">cvminh@vast.ac.vn</a>
							</p>
							<p>
								<a>Điện thoại CQ : &nbsp;</a><a class="contact_staff"> (+84)
									3 868 2595</a>
							</p>
							<p class="more_staff">
								<a href="#">Chi tiết</a>
							</p>
						</div>
						<div class="clear"></div>
					</td>
				</tr>

			</table>
			<!--End table -->
		</form>
	</div>
	<!--end manager_staff -->

</div>
<!--End wrap_main-->
