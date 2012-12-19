<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="wrap_main">
	<div class="title_home">
		<h2>Thống kê điều chuyển công tác</h2>
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
				<td style="width: 20%">Tên cán bộ</td>
				<td style="width: 35%">Mục đích</td>
				<td style="width: 10%">Quốc gia</td>
				<td>Ngày đi</td>
				<td>Ngày về</td>
			</tr>
			<tr class="row_1">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="">Hướng dẫn Lào làm bom nguyên tử</td>
				<td class="">Lào</td>
				<td class="">1/12/2012</td>
				<td class="end_col">14/12/2012</td>
			</tr>
			<tr class="row_2">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="">Hướng dẫn Lào làm bom nguyên tử</td>
				<td class="">Lào</td>
				<td class="">1/12/2012</td>
				<td class="end_col">14/12/2012</td>
			</tr>
			<tr class="row_1">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="">Hướng dẫn Lào làm bom nguyên tử</td>
				<td class="">Lào</td>
				<td class="">1/12/2012</td>
				<td class="end_col">14/12/2012</td>
			</tr>
			<tr class="row_2">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="">Hướng dẫn Lào làm bom nguyên tử</td>
				<td class="">Lào</td>
				<td class="">1/12/2012</td>
				<td class="end_col">14/12/2012</td>
			</tr>
			<tr class=" end_tb_tranfer_work row_1">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="">Hướng dẫn Lào làm bom nguyên tử</td>
				<td class="">Lào</td>
				<td class="">1/12/2012</td>
				<td class="end_col">14/12/2012</td>
			</tr>

		</table>
	</div>
	<!--End tranfer_work -->
</div>
<!--End wrap_main-->