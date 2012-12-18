package edu.hust.k54.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

import edu.hust.k54.persistence.BaocaoHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.Taikhoandangnhap;

@Controller
@RequestMapping(value = "report.spms")
public class ReportController {
	@RequestMapping(method = RequestMethod.GET)
	public String getAllReadableReport(HttpServletRequest request, Model model) {
		Manager man = new Manager();
		Taikhoandangnhap account = (Taikhoandangnhap) request.getSession()
				.getAttribute("user");
		Integer idcanbo = account.getIduser();
		System.err.println("idcanbo: " + idcanbo);
		ArrayList<Soyeulylich> list = man.getLowerPermission(idcanbo);
		if (list == null)
			list = new ArrayList<Soyeulylich> ();
		list.add(account.getSoyeulylich());

		BaocaoHome ds = new BaocaoHome();
		List reportList = ds.findBySoyeulylichs(list);
		System.err.println("list: " + reportList);
		
		return "homepage";
	}
}
