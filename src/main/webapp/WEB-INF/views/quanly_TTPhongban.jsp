<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/resources/css/stype.css"/>">
<script type="text/javascript"
	src="<c:url value = "/resources/js/jquery.js"/>"></script>
    </head>
    <body>
        <div id="wrapper">

            <div id="wrap_header">
                <div id="banner_header">
                    <h1 class="stitle_web" >Viện khoa học và công nghệ Việt Nam</h1>
                </div> <!--End banner_header -->
                <div id="nav_menu">
                    <div class="header-row-1"> 
                        <ul class="header-menu">
                            <li><a href="#">Trang chủ</a></li>
                            <li><a href="#">Thông báo</a></li>
                            <li><a href="#">Nghiên cứu</a></li>
                            <li><a href="#">Tìm kiếm</a></li>
                            <li><a href="#">Giới thiệu</a></li>
                            <li><a href="#">Liên hệ</a></li>
                        </ul>		   
                    </div>
                </div> <!-- end nav_menu -->
            </div> <!--End wrap_header -->

            <div id="wrap_main">
                <div class="title_home"><h2>Thông tin phòng hành chính - Viện công nghệ thông tin</h2></div>
                <div class="clear"></div>
                <div class="infomation_staff">
                    <form name="edit_staff"action="#" method="POST">

                        <table border="0" bgcolor="#fff" align="center" id="info" style="width: 100%">
                            <tr>
                                <td class="list">Tên phòng ban </td>
                                <td class="list_ret" width="70%" >
                                    <input type="text" name="user_name" size="60" height="25"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Đơn vị quản lý </td>
                                <td class="list_ret">
                                    <select>
                                        
                                        <option value="0" selected>Viện đang quản lý</option> <!-- Tên viện đang quản lý phòng ban này -->
                                        <option value="1">Viên sinh học</option>
                                        <option value="1">Viên sinh học</option>
                                        <option value="1">Viên sinh học</option>
                                        <option value="1">Viên sinh học</option>
                                        <option value="1">Viên sinh học</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Điện thọai</td>
                                <td class="list_ret"><input type="text" name="user_name" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list">fax </td>
                                <td class="list_ret"><input type="text" name="user_name" size="60" height="25"/></td>
                            </tr>

                            <tr>
                                <td class="list">Thông tin chung </td>
                                <td class="list_ret"><textarea name="thongtinchung"></textarea></td>
                            </tr>
                            <tr>
                                <td class ="list"> Avatar</td>
                                <td class="list_ret">
                                    <img width="96" height="50" src="../images/public/vientoanhoc.jpg"/>
                                    <br/>
                                    <input type="button" name="upload" value="upload"/>
                                    
                                </td>
                            </tr>           
                        </table>
                        <div style="text-align: center; margin-top: 20px;" >
                            <input type="submit" class="button" value="Cập nhật"/>
                        </div>
                    </form>
                </div><!--End infomation -->

            </div> <!--End wrap_main-->











            <div id="wrap_right">
                <div class="box_right">
                    <div class="title_box">
                        <a>Đăng nhập</a>
                    </div><!--title_box-->
                    <div class="content_box">
                        <div class="loginpopup" style="">
                            <form action="#" method="POST" >
                                <label>Tài khoản : </label>
                                <input type="text" name="user_name" placeholder="Tài khoản" />
                                <label>Mật khẩu : </label>
                                <input type="password"  name="user_password" placeholder="Mật khẩu"/>
                                <input value="Đăng nhập" class="button" type="submit" name="login"/>
                            </form>
                        </div>
                    </div> <!--end content_box-->
                </div><!--box_right-->

                <div class="box_right">
                    <div class="title_box">
                        <a>Danh sách viện</a>
                    </div><!--title_box-->
                    <div class="content_box">
                        <ul id="accordion">
                            <li>Viện Nghiên Cứu</li>
                            <ul>                            
                                <li><a href="#">Viện toán học</a></li>
                                <li><a href="#">Viện công nghệ thông tin</a></li>
                                <li><a href="#">Viện hóa học</a></li>
                                <li><a href="#">Viện công nghệ sinh học</a></li>
                                <li><a href="#">Viện hải dương học</a></li>
                                <li><a href="#">Viện công nghệ vũ trụ</a></li>                              
                            </ul>
                            <li>Đơn Vị Hành Chính</li>
                            <ul>
                                <li><a href="#">Phòng nhân sự</a></li>
                                <li><a href="#">Phòng kế toán</a></li>                               
                            </ul>
                        </ul>
                    </div> <!--end content_box-->
                </div><!--box_right-->

                <div class="box_right">
                    <div class="title_box">
                        <a>Thông tin</a>
                    </div><!--title_box-->
                    <div class="content_box">

                    </div> <!--end content_box-->
                </div><!--box_right-->
            </div> <!--End wrap_right-->
            <div class="clear"></div>    
            <div id="wrap_footer">

            </div><!--End wrap_footer-->
        </div> <!--End wrapper -->    
    </body>
</html>
