package edu.hust.k54.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

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
		ModelAndView modelAndView = new ModelAndView("homepage");
		if (arg0.getSession().getAttribute("user") == null) {
			String userName = arg0.getParameter("user_name");
			String passWord = arg0.getParameter("user_password");

			if (userName != null && passWord != null) {
				TaikhoandangnhapHome checkLogin = new TaikhoandangnhapHome();
				Taikhoandangnhap persion = new Taikhoandangnhap();
				persion.setUsername(userName);
				persion.setPass(passWord);
				if (!checkLogin.findByExample(persion).isEmpty()) { // login Ok
					Taikhoandangnhap user = (Taikhoandangnhap) checkLogin
							.findByExample(persion).get(0);
					int userPermission = user.getPermission();
					modelAndView.addObject("homePage", "home.spms");
					if (userPermission == GUEST_PERMISSION) {
						modelAndView.addObject("search", "guest/search.spms");
						modelAndView.addObject("info", "guest/info.spms");
						modelAndView.addObject("contact", "guest/contact.spms");
					} else if (userPermission == STAFF_PERMISSION) {
						modelAndView.addObject("search", "staff/search.spms");
						modelAndView.addObject("info", "staff/info.spms");
						modelAndView.addObject("contact", "staff/contact.spms");
					} else if (userPermission == MANAGER_PERMISSION) {
						modelAndView.addObject("search", "manager/search.spms");
						modelAndView.addObject("info", "manager/info.spms");
						modelAndView.addObject("contact",
								"manager/contact.spms");
					} else if (userPermission == SUPER_MANAGER_PERMISSION) {
						modelAndView.addObject("search",
								"supperManager/search.spms");
						modelAndView.addObject("info",
								"supperManager/info.spms");
						modelAndView.addObject("contact",
								"supperManager/contact.spms");
					} else if (userPermission == ADMIN_PERMISSION) {
						modelAndView.addObject("search", "admin/search.spms");
						modelAndView.addObject("info", "admin/info.spms");
						modelAndView.addObject("contact", "admin/contact.spms");
					}
					arg0.getSession(true).setAttribute("user", user);
				} else { // login false
					modelAndView.addObject("homePage", "home.spms");
					modelAndView.addObject("search", "search.spms");
					modelAndView.addObject("info", "info.spms");
					modelAndView.addObject("contact", "contact.spms");
					modelAndView.addObject("loginFalse", LOGIN_FALSE);
				}
			} else {
				int userPermission = ((Taikhoandangnhap) arg0
						.getAttribute("user")).getPermission();
				modelAndView.addObject("homePage", "home.spms");
				if (userPermission == GUEST_PERMISSION) {
					modelAndView.addObject("search", "guest/search.spms");
					modelAndView.addObject("info", "guest/info.spms");
					modelAndView.addObject("contact", "guest/contact.spms");
				} else if (userPermission == STAFF_PERMISSION) {
					modelAndView.addObject("search", "staff/search.spms");
					modelAndView.addObject("info", "staff/info.spms");
					modelAndView.addObject("contact", "staff/contact.spms");
				} else if (userPermission == MANAGER_PERMISSION) {
					modelAndView.addObject("search", "manager/search.spms");
					modelAndView.addObject("info", "manager/info.spms");
					modelAndView.addObject("contact", "manager/contact.spms");
				} else if (userPermission == SUPER_MANAGER_PERMISSION) {
					modelAndView.addObject("search",
							"supperManager/search.spms");
					modelAndView.addObject("info", "supperManager/info.spms");
					modelAndView.addObject("contact",
							"supperManager/contact.spms");
				} else if (userPermission == ADMIN_PERMISSION) {
					modelAndView.addObject("search", "admin/search.spms");
					modelAndView.addObject("info", "admin/info.spms");
					modelAndView.addObject("contact", "admin/contact.spms");
				}
			}

			// System.out.println(arg0.getRequestDispatcher(null));
			// System.out.println(arg0.getRequestURL());
			// System.out.println(arg0.getRequestURI());
			// System.out.println(name + "  " + pass);
		}
		return modelAndView;
	}
}
