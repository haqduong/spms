package edu.hust.k54.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import edu.hust.k54.persistence.Taikhoandangnhap;

public class StaffController implements Controller {

	private static final int PERMISSION = 1;
	
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		ModelAndView modelAndView = null;
		Taikhoandangnhap taikhoandangnhap = (Taikhoandangnhap) arg0.getSession().getAttribute("user");
		if((taikhoandangnhap == null) || taikhoandangnhap.getPermission() < PERMISSION){
			modelAndView = new ModelAndView("errorPage");
			return modelAndView;
		}else{
			String uri = arg0.getRequestURI();
			if(uri.contains("search")){
				modelAndView = new ModelAndView("timkiem");
				//TODO
			}else if(uri.contains("info")){
				//TODO
			}else if(uri.contains("research")){
				//TODO
			}else if(uri.contains("notification")){
				//TODO
			}else if(uri.contains("info")){
				//TODO
			}else if(uri.contains("contact")){
				//TODO
			}
			return modelAndView;
		}
		
	}
}
