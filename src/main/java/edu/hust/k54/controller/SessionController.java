package edu.hust.k54.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import edu.hust.k54.persistence.Donviquanly;
import edu.hust.k54.persistence.Taikhoandangnhap;
import edu.hust.k54.persistence.TaikhoandangnhapHome;

public class SessionController implements Controller {
	private static final String LOGIN_FALSE = "Tên đăng nhập hoặc mật khẩu không đúng, xin kiểm tra lại. Chú ý mật khẩu phân biệt viết hoa và viết thường.";
	private static final int GUEST_PERMISSION = 0;
	private static final int STAFF_PERMISSION = 1;
	private static final int MANAGER_PERMISSION = 2;
	private static final int SUPER_MANAGER_PERMISSION = 3;
	private static final int ADMIN_PERMISSION = 4;

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		Guest guest = new Guest();
		if (arg0.getRequestURI().contains("login")) {
			if (arg0.getSession().getAttribute("user") == null) {
				ModelAndView modelAndView = new ModelAndView("homepage");
				String userName = arg0.getParameter("user_name");
				String passWord = arg0.getParameter("user_password");
				if (userName != null && passWord != null) {
					TaikhoandangnhapHome checkLogin = new TaikhoandangnhapHome();
					Taikhoandangnhap persion = new Taikhoandangnhap();
					persion.setUsername(userName);
					persion.setPass(passWord);
					if (!checkLogin.findByExample(persion).isEmpty()) { // login
																		// Ok
						Taikhoandangnhap user = (Taikhoandangnhap) checkLogin
								.findByExample(persion).get(0);
						int userPermission = user.getPermission();
						modelAndView.addObject("homePage", "/k54/home.spms");
						if (userPermission == GUEST_PERMISSION) {
							modelAndView.addObject("search",
									"/k54/guest/search.spms");
							modelAndView.addObject("info", "/k54/guest/info.spms");
							modelAndView.addObject("contact",
									"/k54/guest/contact.spms");
						} else if (userPermission == STAFF_PERMISSION) {
							modelAndView.addObject("search",
									"/k54/staff/search.spms");
							modelAndView.addObject("info", "/k54/staff/info.spms");
							modelAndView.addObject("contact",
									"/k54/staff/contact.spms");
						} else if (userPermission == MANAGER_PERMISSION) {
							modelAndView.addObject("search",
									"/k54/manager/search.spms");
							modelAndView.addObject("info", "/k54/manager/info.spms");
							modelAndView.addObject("contact",
									"/k54/manager/contact.spms");
						} else if (userPermission == SUPER_MANAGER_PERMISSION) {
							modelAndView.addObject("search",
									"/k54/supperManager/search.spms");
							modelAndView.addObject("info",
									"/k54/supperManager/info.spms");
							modelAndView.addObject("contact",
									"/k54/supperManager/contact.spms");
						} else if (userPermission == ADMIN_PERMISSION) {
							ModelAndView admin = new ModelAndView("admin/home");
							return admin;
						}
						arg0.getSession(true).setAttribute("user", user);
					} else { // login false
						modelAndView.addObject("homePage", "/k54/home.spms");
						modelAndView.addObject("search", "/k54/guest/search.spms");
						modelAndView.addObject("info", "/k54/guest/info.spms");
						modelAndView.addObject("contact", "/k54/guest/contact.spms");
						modelAndView.addObject("loginFalse", LOGIN_FALSE);
					}
				}
				List< Donviquanly> donviquanly = guest.TimDVQL(0, 0, null);
				modelAndView.addObject("donviquanly", donviquanly);
				return modelAndView;
			}

			if (arg0.getSession().getAttribute("user") != null) {
				ModelAndView modelAndView = new ModelAndView("/k54/homepage");
				int userPermission = ((Taikhoandangnhap) arg0
						.getSession().getAttribute("user")).getPermission();
				System.out.println(userPermission);
				modelAndView.addObject("homePage", "/k54/home.spms");
				if (userPermission == GUEST_PERMISSION) {
					modelAndView = addlink(modelAndView, "guest");
				} else if (userPermission == STAFF_PERMISSION) {
					modelAndView = addlink(modelAndView, "staf");
				} else if (userPermission == MANAGER_PERMISSION) {
					modelAndView = addlink(modelAndView, "manager");
				} else if (userPermission == SUPER_MANAGER_PERMISSION) {
					modelAndView = addlink(modelAndView, "supperManager");
				} else if (userPermission == ADMIN_PERMISSION) {
					modelAndView = addlink(modelAndView, "admin");
				}
				List< Donviquanly> donviquanly = guest.TimDVQL(0, 0, null);
				modelAndView.addObject("donviquanly", donviquanly);
				return modelAndView;
			}
		} else if (arg0.getRequestURI().contains("logout")) {
			ModelAndView modelAndView = new ModelAndView("homepage");
			arg0.getSession().removeAttribute("user");
			List< Donviquanly> donviquanly = guest.TimDVQL(0, 0, null);
			modelAndView.addObject("donviquanly", donviquanly);
			return modelAndView;
		} else{
			ModelAndView modelAndView = new ModelAndView("homepage");
			List< Donviquanly> donviquanly = guest.TimDVQL(0, 0, null);
			modelAndView.addObject("donviquanly", donviquanly);
			return modelAndView;
		}
		return null;
	}
	
	private ModelAndView addlink(ModelAndView input, String link){
		input.addObject("search", "/k54/"+ link+ "/search.spms");
		input.addObject("info", "/k54/"+ link+ "/info.spms");
		input.addObject("contact", "/k54/"+ link+ "/contact.spms");
		return input;
	}
}
