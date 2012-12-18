package edu.hust.k54.controller;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

import edu.hust.k54.persistence.Baocao;
import edu.hust.k54.persistence.BaocaoHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.Taikhoandangnhap;

@Controller
public class ReportController {
	@RequestMapping(value = "/showreport.spms", method = RequestMethod.GET)
	public String getReport(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
		BaocaoHome ds = new BaocaoHome();
		Baocao report = ds.findById(id);
		
		try {
			FileInputStream is = new FileInputStream(request.getRealPath("") + report.getNoidung());
			OutputStream os = response.getOutputStream();
			IOUtils.copy(is, os);
			response.flushBuffer();
		} catch (IOException ex) {
			model.addAttribute("err", "File được yêu cầu không tồn tại");
			throw ex;
		}
		
		System.err.println(report);
		return "redirect:/report.spms";
	}
	
	@RequestMapping(value = "/report.spms", method = RequestMethod.GET)
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
		model.addAttribute("report_list", reportList);
		System.err.println("list: " + reportList);
		
		return "report";
	}
	
}
