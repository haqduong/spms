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
                        <form name="edit_hocvi" action="#" method="POST">
                            <table  class="boloc" cellspacing="0" cellpadding="1" style="width: 700px">
                                <tr>
                                    <td style="width: 20%;"><label>Username</label></td>
                                    <td>datpm</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%;"><label>Họ tên</label></td>
                                    <td>Phạm Minh Đạt</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%;"><label>Đơn vị</label></td>
                                    <td>Viện toán học</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%;"><label>Phòng ban</label></td>
                                    <td>Phòng nghiên cứu chống tham nhũng</td>
                                </tr>
                                
                                <tr>
                                    <td><label>Email</label></td>
                                    <td>datpm@gmail.com</td>
                                </tr>
                                <tr>
                                    <td><label>Phân quyền</label></td>
                                    <td>
                                        <select>
                                            <option value="0">Khách</option>
                                            <option value="1">Cán bộ</option>
                                            <option value="2">Quản lý phòng ban</option>
                                            <option value="3">Quản lý viện</option>
                                            <option value="4">Quản trị hệ thống</option>
                                        </select>
                                    </td>
                                </tr>
                            </table> 
                            
                            <div style="text-align: center; margin-top: 20px;" >
                                <input type="submit" class="button" value="Cập nhật"/>
                            </div>
                            
                            
                        </form>
                        
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
