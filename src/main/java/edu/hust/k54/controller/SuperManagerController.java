package edu.hust.k54.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import edu.hust.k54.persistence.Donviquanly;
import edu.hust.k54.persistence.DonviquanlyHome;
import edu.hust.k54.persistence.Phongban;
import edu.hust.k54.persistence.PhongbanHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.SoyeulylichHome;
import edu.hust.k54.persistence.Taikhoandangnhap;

public class SuperManagerController implements Controller {

	private static final int PERMISSION = 3;

	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		ModelAndView modelAndView = null;
		Guest guestController = new Guest();
		Taikhoandangnhap taikhoandangnhap = (Taikhoandangnhap) arg0
				.getSession().getAttribute("user");
		if ((taikhoandangnhap == null)
				|| taikhoandangnhap.getPermission() < PERMISSION) {
			modelAndView = new ModelAndView("errorPage");
			return modelAndView;
		} else {
			String uri = arg0.getRequestURI();
			Integer iddonvi = null;
			if (arg0.getParameter("iddonvi") != null) {
				iddonvi = Integer.parseInt(arg0.getParameter("iddonvi"));
				PhongbanHome phongbanHome = new PhongbanHome();
				Phongban phongban = taikhoandangnhap.getSoyeulylich().getPhongban();
				phongbanHome.attachDirty(phongban);
				if(phongban.getDonviquanly().getIddonviquanly() != iddonvi){
					modelAndView = new ModelAndView("errorPage");
					return modelAndView;
				}
				DonviquanlyHome donviquanlyHome = new DonviquanlyHome();
				if (uri.contains("quanly/donvi")) {
					Map parameter = arg0.getParameterMap();
					modelAndView = new ModelAndView("quanly_TTDonVi");
					Donviquanly donvi = donviquanlyHome.findById(iddonvi);
					if (parameter.containsKey("update")){
						String tendonvi =arg0.getParameter("tendonvi");
						String nhiemvu = arg0.getParameter("nhiemvu");
						String chucnang = arg0.getParameter("chucnang");
						String hoatdongthuongxuyen = arg0.getParameter("hoatdongthuongxuyen");
						String thanhtuu = arg0.getParameter("thanhtuu");
						String thongtinkhac = arg0.getParameter("thongtinkhac");
						String diachitruso = arg0.getParameter("diachitruso");
						String dienthoai = arg0.getParameter("dienthoai");
						String email = arg0.getParameter("email");
						String fax = arg0.getParameter("fax");
						
						donvi.setTen(tendonvi);
						donvi.setNhiemvu(nhiemvu);
						donvi.setChucnang(chucnang);
						donvi.setHoatdongthuongxuyen(hoatdongthuongxuyen);
						donvi.setThanhtuu(thanhtuu);
						donvi.setThongtinkhac(thongtinkhac);
						donvi.setDiachitruso(diachitruso);
						donvi.setDienthoai(dienthoai);
						donvi.setEmail(email);
						donvi.setFax(fax);
						SuperManager superManager = new SuperManager();
						superManager.capNhatDV(donvi);
						modelAndView.addObject("result","Cập nhật thành công!");
						donvi = donviquanlyHome.findById(iddonvi);
					}
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("donvi",donvi);
				} else if (uri.contains("quanly/phongban")) {
					Donviquanly donvi= donviquanlyHome.findById(iddonvi);
					modelAndView = new ModelAndView("quanly_phongban");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("donvi",donvi);
				}else if (uri.contains("quanly/xoaphongban")) {
					Integer idphongban = Integer.parseInt(arg0.getParameter("idphongban"));
					
					System.out.println("Phong ban + " + idphongban);
					phongbanHome = new PhongbanHome();
					phongbanHome.delete(phongbanHome.findById(idphongban));
					phongbanHome.getSessionFactory().getCurrentSession().flush();
					Donviquanly donvi= donviquanlyHome.findById(iddonvi);
					modelAndView = new ModelAndView("quanly_phongban");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("donvi",donvi);
				}else if (uri.contains("quanly/themphongban")) {
					Donviquanly donvi= donviquanlyHome.findById(iddonvi);
					modelAndView = new ModelAndView("quanly_phongban");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("donvi",donvi);
				} else if (uri.contains("quanly/thongtincanbo")) {
					Donviquanly donvi = donviquanlyHome.findById(iddonvi);
					modelAndView = new ModelAndView("quanly_canboDV");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("donvi",donvi);
				} else if (uri.contains("quanly/baocao")) {
					// TODO
				}
			}

			Integer idcanbo = null;
			if (arg0.getParameter("idcanbo") != null) {
				idcanbo = Integer.parseInt(arg0.getParameter("idcanbo"));
				SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
				Taikhoandangnhap curentUser = (Taikhoandangnhap) soyeulylichHome
						.findById(idcanbo).getTaikhoandangnhaps();
				if ((taikhoandangnhap.getSoyeulylich().getIdsoyeulylich() != idcanbo)
						&& (taikhoandangnhap.getPermission() <= curentUser
								.getPermission())) {
					modelAndView = new ModelAndView("errorPage");
					return modelAndView;
				} else if (uri.contains("thongtin/soyeulylich")) {
					modelAndView = new ModelAndView("xem_TTcanbo");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("canbo",
							guestController.TimCB(idcanbo));
				} else if (uri.contains("thongtin/lylichkhoahoc")) {
					modelAndView = new ModelAndView("lylichKH");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("canbo",
							guestController.TimCB(idcanbo));
				} else if (uri.contains("thongtin/dienbienluong")) {
					modelAndView = new ModelAndView("dienbienluong");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("canbo",
							guestController.TimCB(idcanbo));
				} else if (uri.contains("thongtin/khenthuong")) {
					modelAndView = new ModelAndView("khenthuong");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("canbo",
							guestController.TimCB(idcanbo));
				} else if (uri.contains("thongtin/kyluat")) {
					modelAndView = new ModelAndView("kyluat");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("canbo",
							guestController.TimCB(idcanbo));
				}
			}
			
			
			if (uri.contains("search")) {
					modelAndView = new ModelAndView("timkiem");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
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
								+ "id phong ban = " + idPhongBan
								+ "tencanbo = " + tenCb);
						List<Soyeulylich> danhsachcanbo = guestController
								.TimCB(idVien, idPhongBan,
										((tenCb == "") ? null : tenCb), loaiCB);
						modelAndView.addObject("result", danhsachcanbo);
					}
					modelAndView = setLink(modelAndView);
				} else if (uri.contains("info")) {
					modelAndView = new ModelAndView("info");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView = setLink(modelAndView);
				} else if (uri.contains("contact")) {
					modelAndView = new ModelAndView("contact");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView = setLink(modelAndView);
				}
			}
			return modelAndView;
		}

	

	private ModelAndView setLink(ModelAndView view) {
		view.addObject("homePage", "/k54/home.spms");
		view.addObject("search", "/k54/superManager/search.spms");
		view.addObject("info", "/k54/superManager/info.spms");
		view.addObject("contact", "/k54/superManager/contact.spms");
		return view;
	}

}
