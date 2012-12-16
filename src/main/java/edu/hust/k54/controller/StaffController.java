package edu.hust.k54.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import edu.hust.k54.persistence.Donviquanly;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.Taikhoandangnhap;

public class StaffController implements Controller {

	private static final int PERMISSION = 1;
	
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		ModelAndView modelAndView = null;
		Guest guestController = new Guest();
		Taikhoandangnhap taikhoandangnhap = (Taikhoandangnhap) arg0.getSession().getAttribute("user");
		if((taikhoandangnhap == null) || taikhoandangnhap.getPermission() < PERMISSION){
			modelAndView = new ModelAndView("errorPage");
			return modelAndView;
		}else{
			String uri = arg0.getRequestURI();
			
			if(uri.contains("capnhat/thongtincanhan")){
				//TODO
			}else if(uri.contains("capnhat/lylichkhoahoc")){
				//TODO
			}else if(uri.contains("capnhat/taikhoan")){
				//TODO
			}else if(uri.contains("thongtin/soyeulylich")){
				//TODO
			}else if(uri.contains("thongtin/lylichkhoahoc")){
				//TODO
			}else if(uri.contains("thongtin/quatrinhcongtac")){
				//TODO
			}else if(uri.contains("thongtin/dienbienluong")){
				//TODO
			}else if(uri.contains("thongtin/khenthuong")){
				//TODO
			}else if(uri.contains("thongtin/kyluat")){
				//TODO
			}else if (uri.contains("search")) {
				modelAndView = new ModelAndView("timkiem");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,null);
				modelAndView.addObject("donviquanly", donviquanly);
				String Vien = arg0.getParameter("vien");
				String PhongBan = arg0.getParameter("phongban");
				String LoaiCB = arg0.getParameter("loaiCB");
				String tenCb = arg0.getParameter("tenCanBo");
				if ((tenCb != "") || (Vien != null) || (PhongBan != null)) {
					Integer idVien, idPhongBan, loaiCB;
					if (Vien == null) {
						idVien = 0;
					} else {
						idVien = Integer.parseInt(Vien);
					}

					if (PhongBan == null) {
						idPhongBan = 0;
					} else {
						idPhongBan = Integer.parseInt(PhongBan);
					}

					if (LoaiCB == null) {
						loaiCB = 0;
					} else {
						loaiCB = Integer.parseInt(LoaiCB);
					}
					System.out.println("id vien = " + idVien
							+ "id phong ban = " + idPhongBan + "tencanbo = "
							+ tenCb);
					List<Soyeulylich> danhsachcanbo = guestController.TimCB(
							idVien, idPhongBan, ((tenCb == "") ? null : tenCb),
							loaiCB);
					modelAndView.addObject("result", danhsachcanbo);
				}
				modelAndView = setLink(modelAndView);
			} else if (uri.contains("info")) {
				modelAndView = new ModelAndView("info");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView = setLink(modelAndView);
			}else if (uri.contains("contact")) {
				modelAndView = new ModelAndView("contact");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView = setLink(modelAndView);
			}
			
			return modelAndView;
		}
		
	}
	
	private ModelAndView setLink(ModelAndView view) {
		view.addObject("homePage", "/k54/home.spms");
		view.addObject("search", "/k54/staff/search.spms");
		view.addObject("info", "/k54/staff/info.spms");
		view.addObject("contact", "/k54/staff/contact.spms");
		return view;
	}
}
