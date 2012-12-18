<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Chức vụ</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" type="text/css"
			href="<c:url value = "/resources/css/admin.css"/>">
		<script type="text/javascript"
			src="<c:url value = "/resources/js/jquery.js"/>"></script>

    </head>
    <body>
        <div id="wrapper">
            <div id="wrap_header">

            </div> <!--End wrap_header-->
            <div id="wrap_main">
                <div id="wrap_left">
                    <div class="menu_left">
                        <ul>
                            <li ><a href="#">Nhật ký hệ thống</a></li>
                            <li ><a href="#">Cập nhật danh mục</a>
                                <ul>
                                    <li><a href="#">Ngạch lương</a></li>
                                    <li><a href="#">Chức vụ</a></li>
                                    <li><a href="#">Học hàm</a></li>
                                    <li><a href="#">Học vị</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Phân quyền</a></li>
                            <li><a href="#">Tạo tài khoản</a></li>
                            <li><a href="#">Duyệt tài khoản khách</a></li>
                        </ul>
                    </div>
                </div> <!--End wrap_left-->
                <div id="wrap_center">
                    <div class="title_home"><a>Phân quyền</a></div>
                    <div class="list_data">
                        <div class="title_table"><a> Bộ lọc </a></div>
                        <form name="boloc" action="#" method="POST">
                            <table  class="boloc" cellspacing="0" cellpadding="1" style="width: 600px">
                                <tr>
                                    <td><label>Username</label></td>
                                    <td><input name="username" size="20" type="text"/></td>
                                </tr>
                                <tr>
                                    <td><label>Đơn vị</label></td>
                                    <td>
                                        <select name="donvi">
                                            <option value="0">Tất cả</option>
                                            <option value="0">Viên toán học</option>
                                            <option value="0">Viên toán học</option>
                                            <option value="0">Viên toán học</option>
                                            <option value="0">Viên toán học</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><label>Phòng ban</label></td>
                                    <td>
                                        <select name="phongban">
                                            <option value="0">Tất cả</option>
                                            <option value="0">Viên toán học</option>
                                            <option value="0">Viên toán học</option>
                                            <option value="0">Viên toán học</option>
                                            <option value="0">Viên toán học</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                            <div style="text-align: center; margin-top: 20px;" >
                                <input type="submit" class="button" value="Xem"/>
                            </div>
                            
                        </form>
                        <br/>
                        <table cellspacing="0" cellpadding="0"  width="100%">
                            <tr>
                                <td>
                                    <table cellspacing="0" cellpadding="1" style="width: 782px" >
                                        <tr class="tieu_de">
                                            <td style="width:5%">STT</td>
                                            <td style="width: 15%">Username</td>
                                            <td style="width: 15%">Họ tên</td>
                                            <td style="width: 15%">Đơn vị</td>
                                            <td style="width: 20%">Phòng ban</td>
                                            <td style="">Quyền</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="description">
                                        <table cellspacing="0" cellpadding="1" style="width: 782px" >
                                            <tr class="row_1">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_2">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_1">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_2">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_1">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_2">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_1">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_2">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_1">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_2">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_1">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_2">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_1">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_2">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_1">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            <tr class="row_2">
                                                <td style="width:5%">1</td>
                                                <td style="width: 15%">datpm</td>
                                                <td style="width: 15%">Phạm Minh Đạt</td>
                                                <td style="width: 15%">Viện toán học</td>
                                                <td style="width: 20%">Phòng phát triển</td>
                                                <td style="">Cán bộ</td>
                                            </tr>
                                            
                                            

                                        </table>  
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div><!--End list_data-->
                   
                </div><!--End wrap_center-->
                <div class="clear"></div>
            </div><!--End wrap_main -->
            <div class="clear"></div>
            <div id="wrap_footer">

            </div> <!--End wrap_footer-->
        </div> <!--End wrapper-->
    </body>
</html>
