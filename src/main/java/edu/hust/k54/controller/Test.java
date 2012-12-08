package edu.hust.k54.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class Test implements Controller{
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        // the implementation is not hugely important for this example...
		String user =  request.getParameter("userName");
		String pass =  request.getParameter("pass");
//		Map parameter = request.getParameterMap();
//		String user = parameter.get
		System.out.println(user + pass);
		ModelAndView modelAndView = new ModelAndView("home");
		modelAndView.addObject("test", user + " "+ pass);
		return modelAndView;
    }
}
