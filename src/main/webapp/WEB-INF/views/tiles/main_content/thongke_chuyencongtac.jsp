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
                                /*selectedDate:{				This is an example of what the full configuration offers.
                                day:5,						For full documentation about these settings please see the full version of the code.
                                month:9,
                                year:2006
                        },
                        yearsRange:[1978,2020],
                        limitToToday:false,
                        cellColorScheme:"beige",
                        dateFormat:"%m-%d-%Y",
                        imgPath:"img/",
                        weekStartDay:1*/
                            });
                            new JsDatePick({
                                useMode:2,
                                target:"inputField_end",
                                dateFormat:"%d-%M-%Y"
                                /*selectedDate:{				This is an example of what the full configuration offers.
                                day:5,						For full documentation about these settings please see the full version of the code.
                                month:9,
                                year:2006
                        },
                        yearsRange:[1978,2020],
                        limitToToday:false,
                        cellColorScheme:"beige",
                        dateFormat:"%m-%d-%Y",
                        imgPath:"img/",
                        weekStartDay:1*/
                            });
                        };
                        
                    </script>

		<table style="width: 100%;">
			<tr class="head_tb_tranfer_work">
				<td style="width: 5%">STT</td>
				<td style="width: 20%">Tên cán bộ</td>
				<td style="width: 30%">Đơn vị cũ</td>
				<td style="width: 30%">Đơn vị mới</td>
				<td>Ngày chuyển</td>
			</tr>
			<tr class="row_1">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="tranfer_work_old">Viện toán học</td>
				<td class="tranfer_work_new">Viện công nghệ thông tin</td>
				<td class="tranfer_date">17/12/2012</td>
			</tr>
			<tr class="row_2">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="tranfer_work_old">Viện toán học</td>
				<td class="tranfer_work_new">Viện công nghệ thông tin</td>
				<td class="tranfer_date">17/12/2012</td>
			</tr>
			<tr class="row_1">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="tranfer_work_old">Viện toán học</td>
				<td class="tranfer_work_new">Viện công nghệ thông tin</td>
				<td class="tranfer_date">17/12/2012</td>
			</tr>
			<tr class="row_2">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="tranfer_work_old">Viện toán học</td>
				<td class="tranfer_work_new">Viện công nghệ thông tin</td>
				<td class="tranfer_date">17/12/2012</td>
			</tr>
			<tr class="row_1">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="tranfer_work_old">Viện toán học</td>
				<td class="tranfer_work_new">Viện công nghệ thông tin</td>
				<td class="tranfer_date">17/12/2012</td>
			</tr>
			<tr class="row_2">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="tranfer_work_old">Viện toán học</td>
				<td class="tranfer_work_new">Viện công nghệ thông tin</td>
				<td class="tranfer_date">17/12/2012</td>
			</tr>
			<tr class="end_tb_tranfer_work row_1">
				<td class="tranfer_STT">1</td>
				<td class="tranfer_name">Phạm Minh Đạt</td>
				<td class="tranfer_work_old">Viện toán học</td>
				<td class="tranfer_work_new">Viện công nghệ thông tin</td>
				<td class="tranfer_date">17/12/2012</td>
			</tr>
		</table>
	</div>
	<!--End tranfer_work -->


</div>
<!--End wrap_main-->
