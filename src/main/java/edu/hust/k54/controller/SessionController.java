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
				if (userPermission == GUEST_PERMISSION) {
					modelAndView.addObject("homePage", "home.spms");
					modelAndView.addObject("search", "search.spms");
					modelAndView.addObject("info", "info.spms");
					modelAndView.addObject("contact", "contact.spms");
				} else if (userPermission == STAFF_PERMISSION) {
					modelAndView.addObject("homePage", "home.spms");
					modelAndView.addObject("search", "search.spms");
					modelAndView.addObject("info", "info.spms");
					modelAndView.addObject("contact", "contact.spms");
				} else if (userPermission == MANAGER_PERMISSION) {
					modelAndView.addObject("homePage", "home.spms");
					modelAndView.addObject("search", "search.spms");
					modelAndView.addObject("info", "info.spms");
					modelAndView.addObject("contact", "contact.spms");
				} else if (userPermission == SUPER_MANAGER_PERMISSION) {
					modelAndView.addObject("homePage", "home.spms");
					modelAndView.addObject("search", "search.spms");
					modelAndView.addObject("info", "info.spms");
					modelAndView.addObject("contact", "contact.spms");
				} else if (userPermission == ADMIN_PERMISSION) {
					modelAndView.addObject("homePage", "home.spms");
					modelAndView.addObject("search", "search.spms");
					modelAndView.addObject("info", "info.spms");
					modelAndView.addObject("contact", "contact.spms");
				}
				arg0.getSession(true).setAttribute("user", user);
			} else { // login false
				modelAndView.addObject("homePage", "home.spms");
				modelAndView.addObject("search", "search.spms");
				modelAndView.addObject("info", "info.spms");
				modelAndView.addObject("contact", "contact.spms");
				modelAndView.addObject("loginFalse", LOGIN_FALSE);
			}

			// if(name.equals("1") && pass.equals("1")){
			// modelAndView.addObject("loginOK", true);
			// Representative test = new Representative(12, 12, "duong",
			// "123456", "dong", 12, 12);
			// arg0.getSession(true).putValue("abc", test);
			// }
			// }else{
			// modelAndView.addObject("loginOK", false);
			// }
			// if(arg0.getSession().getValue("abc")!=null){
			// System.out.println("chay" +
			// ((Representative)arg0.getSession().getValue("abc")).getUserName());
			//
			// }
			//
			// System.out.println(arg0.getRequestDispatcher(null));
			// System.out.println(arg0.getRequestURL());
			// System.out.println(arg0.getRequestURI());
			// System.out.println(name + "  " + pass);
		}
		return modelAndView;
	}
}
