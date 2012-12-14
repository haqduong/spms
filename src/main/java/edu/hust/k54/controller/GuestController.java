package edu.hust.k54.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import edu.hust.k54.persistence.Donviquanly;
import edu.hust.k54.persistence.DonviquanlyHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.Taikhoandangnhap;

public class GuestController  implements Controller {
	private static final int PERMISSION = 0;
	
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		ModelAndView modelAndView = null;
		Taikhoandangnhap taikhoandangnhap = (Taikhoandangnhap) arg0.getSession().getAttribute("user");
		
		if(taikhoandangnhap != null){
			if(taikhoandangnhap.getPermission() < PERMISSION){
				modelAndView = new ModelAndView("errorPage");
				return modelAndView;
			}else{
				String uri = arg0.getRequestURI();
				if(uri.contains("search")){
					modelAndView = new ModelAndView("timkiem");
					//TODO
				}else if(uri.contains("info")){
					modelAndView = new ModelAndView("info");
				}else if(uri.contains("contact")){
					modelAndView = new ModelAndView("contact");
				}
			}
		}else{
			String uri = arg0.getRequestURI();
			if(uri.contains("search")){
				modelAndView = new ModelAndView("timkiem");
				Guest guestController = new Guest();
				List< Donviquanly> donviquanly = guestController.TimDVQL(null, null, null);
				modelAndView.addObject("donviquanly", donviquanly);
				String tenVien = arg0.getParameter("vien");
				String tenPhongBan = arg0.getParameter("phongban");
				String tenCb = arg0.getParameter("tenCanBo");
				
				if((tenCb != "") || (tenVien != "")||(tenPhongBan != "")){
					List<Soyeulylich> danhsachcanbo = guestController.TimCB(((tenVien == "" )? null: tenVien) , ((tenPhongBan == "" )? null: tenPhongBan), ((tenCb == "" )? null: tenCb));
					modelAndView.addObject("result", danhsachcanbo);
				}
				System.out.println("dkm" + tenCb + tenPhongBan + tenVien);
				if(tenVien == null){
					
					System.out.println("dkm" + tenCb + tenPhongBan + tenVien);
				}
				modelAndView = setLink(modelAndView);
			}else if(uri.contains("info")){
				modelAndView = new ModelAndView("info");
				modelAndView = setLink(modelAndView);
			}else if(uri.contains("contact")){
				modelAndView = new ModelAndView("contact");
				modelAndView = setLink(modelAndView);
			}
		}
		
		return modelAndView;
	}
	
	private ModelAndView setLink(ModelAndView view){
		view.addObject("homePage", "/k54/home.spms");
		view.addObject("search", "search.spms");
		view.addObject("info", "info.spms");
		view.addObject("contact", "contact.spms");
		return view;
	}
}
