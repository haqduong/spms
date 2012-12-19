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
                            <li ><a href="/k54/admin/logsystem.spms">Nhật ký hệ thống</a></li>
                            <li ><a>Cập nhật danh mục</a>
                                <ul>
                                    <li><a href="/k54/admin/updatesalary.spms">Ngạch lương</a></li>
                                    <li><a href="/k54/admin/updatechucvu.spms">Chức vụ</a></li>
                                    <li><a href="/k54/admin/updatehocham.spms">Học hàm</a></li>
                                    <li><a href="/k54/admin/updatehocvi.spms">Học vị</a></li>
                                </ul>
                            </li>
                            <li><a href="/k54/admin/phanquyen.spms">Phân quyền</a></li>
                            <li><a href="/k54/admin/taotaikhoan.spms">Tạo tài khoản</a></li>
                            <li><a href="/k54/admin/duyettaikhoan.spms">Duyệt tài khoản khách</a></li>
                        </ul>
                    </div>
                </div> <!--End wrap_left-->
                <div id="wrap_center">
                    <div class="title_home"><a>Tạo tài khoản cán bộ</a></div>
                    <div class="list_data">
                        <form name="edit_hocvi" action="/k54/admin/taotaikhoan.spms?manager=taomoi" method="POST">
                            <table  class="boloc" cellspacing="0" cellpadding="1" style="width: 700px">
                                <tr>
                                    <td style="width: 20%;"><label>Username</label></td>
                                    <td><input name="username" size="40" type="text" /></td>
                                </tr>
                                <tr>
                                    <td><label>Mật khẩu</label></td>
                                    <td><input name="pass" size="40" type="password"/></td>
                                </tr>
                                <tr>
                                    <td><label>Nhập lại mật khẩu</label></td>
                                    <td><input name="pass_2" size="40" type="password"/></td>
                                </tr>
                                <tr>
                                    <td><label>Email</label></td>
                                    <td><input name="email" size="40" type="email"/></td>
                                </tr>
                                <tr>
                                    <td><label>Phân quyền</label></td>
                                    <td>
                                        <select name="permission">
                                            <option value="0">Khách</option>
                                            <option value="1">Cán bộ</option>
                                            <option value="2">Quản lý phòng ban</option>
                                            <option value="3">Quản lý viện</option>
                                            <option value="4">Quản trị hệ thống</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="title" colspan=2 align="center" >Thông tin cá nhân
                                    </td>
                                </tr>
                                <tr>
                                <td class="list">Họ và tên </td>
                                <td class="list_ret" width="70%" >
                                    <input type="text" name="hoten" size="60" height="25"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Đơn vị quản lý </td>
                                <td class="list_ret">
                                    <select name="donviquanly">
	                                    <c:forEach items="${donviquanlies}" var="donviquanly">
	                                    	<option value="${donviquanly.iddonviquanly }">${donviquanly.ten}</option>
	                                    </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Phòng ban </td>
                                <td class="list_ret">
                                    <select name="phongban">
                                       <c:forEach items="${phongbans}" var="phongban">
	                                    	<option value="${phongban.idphongban }">${phongban.ten}</option>
	                                    </c:forEach> 
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Học vị </td>
                                <td class="list_ret">
                                    <select name="hocvi">
                                        <c:forEach items="${hocvis }" var="hocvi">
                                        	<option value="${hocvi.idhocvi }">${hocvi.ten}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Chức vụ </td>
                                <td class="list_ret">
                                    <select name="chucvu">
                                        <c:forEach items="${chucvus }" var="chucvu">
                                        	<option value="${chucvu.idchucvu }">${chucvu.ten}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Học hàm </td>
                                <td class="list_ret">
                                    <select name="hocham">
                                        <c:forEach items="${hochams }" var="hocham">
                                        	<option value="${hocham.idhocham }">${hocham.ten}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Cấp ủy </td>
                                <td class="list_ret">
                                    <select name="capuy">
                                        <c:forEach items="${capuys }" var="capuy">
                                        	<option value="${capuy.idcapuy }">${capuy.ten}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Giáo dục phổ thông </td>
                                <td class="list_ret">
                                    <select name="giaoducphothong">
                                        <c:forEach items="${giaoducphothongs }" var="giaoducphothong">
                                        	<option value="${giaoducphothong.idgiaoducphothong }">${giaoducphothong.ten}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Danh hiệu</td>
                                <td class="list_ret">
                                    <select name="danhhieu">
                                        <c:forEach items="${danhhieus }" var="danhhieu">
                                        	<option value="${danhhieu.iddanhhieu }">${danhhieu.ten}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Xuất thân </td>
                                <td class="list_ret">
                                    <select name="xuatthan">
                                        <c:forEach items="${xuatthans }" var="xuatthan">
                                        	<option value="${xuatthan.idxuatthan }">${xuatthan.ten}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Quốc gia </td>
                                <td class="list_ret">
                                    <select name="quocgia">
                                        <c:forEach items="${quocgias }" var="quocgia">
                                        	<option value="${quocgia.idquocgia }">${quocgia.ten}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list" >Loại cán bộ</td>
                                <td class="list_ret">
                                    <select name="loaicanbo">
                                        <option value="0">Cán bộ thường</option>
                                        <option value="1">Cán bộ nghiên cứu</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list">Số hiệu công chức </td>
                                <td class="list_ret"><input type="number" name="sohieucongchuc" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list">Số chứng minh nhân dân </td>
                                <td class="list_ret"><input type="text" name="chungminhnhandan" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list">Giới tính </td>
                                <td class="list_ret">
                                    <select name="gioitinh">
                                        <option value="0">Nam</option>
                                        <option value="1">Nữ</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list"> Tên thường dùng khác</td>
                                <td class="list_ret"><input type="text" name="tenthuongdung" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list"> Ngày tháng năm sinh</td>
                                <td class="list_ret"><input type="date" name="ngaysinh" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list"> Nơi sinh</td>
                                <td class="list_ret"><input type="text" name="noisinh" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list"> Quê quán</td>
                                <td class="list_ret"><input type="text" name="quequan" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list"> Nơi ở hiện nay</td>
                                <td class="list_ret"><input type="text" name="noiohiennay" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list"> Số điện thoại</td>
                                <td class="list_ret"><input type="tel" name="sodienthoai" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list">Ngày vào đảng chính thức</td>
                                <td class="list_ret"><input type="date" name="ngayvaodangchinhthuc" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list"> Ngày cập nhật</td>
                                <td class="list_ret"><input type="date" name="ngaycapnhat" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list"> Dân tộc</td>
                                <td class="list_ret">
                                    <select name="dantoc">
                                        <c:forEach items="${dantocs }" var="dantoc">
                                        	<option value="${dantoc.iddantoc }">${dantoc.ten}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list"> Tôn giáo</td>
                                <td class="list_ret">
                                     <select name="tongiao">
                                        <c:forEach items="${tongiaos }" var="tongiao">
                                        	<option value="${tongiao.idtongiao }">${tongiao.ten}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="list">Sức khỏe</td>
                                <td class="list_ret"><input type="text" name="suckhoe" size="60" height="25"/></td>
                            </tr>
                            <tr>
                                <td class="list">Ngôn ngữ biết</td>
                                <td class="list_ret"><input type="text" name="ngonngubiet" size="60" height="25"/></td>
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
