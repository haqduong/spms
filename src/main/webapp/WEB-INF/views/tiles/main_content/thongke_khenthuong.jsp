<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrap_main">
	<div class="title_home">
		<h2>Thống kê khen thưởng</h2>
	</div>
	<div class="tranfer_work">
		<div class="filter_date">
			<b>Thời gian:</b> <a>Khoảng từ</a> <input name="start_date"
				type="text" size="12" id="inputField_start" /><a>Đến hết</a> <input
				name="end_date" type="text" size="12" id="inputField_end" />
			<p>
				<a class="button">Xem thống kê</a>
			</p>

		</div>
		<script type="text/javascript">
                        window.onload = function(){
                            new JsDatePick({
                                useMode:2,
                                target:"inputField_start",
                                dateFormat:"%d-%M-%Y"
                            });
                            new JsDatePick({
                                useMode:2,
                                target:"inputField_end",
                                dateFormat:"%d-%M-%Y"
                            });
                        };
                        
                    </script>

		<table style="width: 100%;">
			<tr class="head_tb_tranfer_work">
				<td style="width: 5%">STT</td>
				<td style="width: 15%">Tên cán bộ</td>
				<td style="width: 25%">Lý do</td>
				<td style="width: 25%">Hình thức</td>
				<td style="width:">Cấp khen thưởng</td>
				<td style="width:">Người quyết định</td>
				<td style="width:">Ngày khen thưởng</td>
			</tr>
			<tr class="row_1">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="tranfer_work_old">CHống tham nhũng</td>
				<td class="tranfer_work_new">Huy chương vàng Olynpic</td>
				<td class="">Quốc tế</td>
				<td class="">Hà Quang Dương</td>
				<td class="tranfer_date">17/12/2012</td>
			</tr>
		</table>
	</div>
	<!--End tranfer_work -->


</div>
<!--End wrap_main-->