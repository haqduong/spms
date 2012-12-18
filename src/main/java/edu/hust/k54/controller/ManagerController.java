package edu.hust.k54.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import edu.hust.k54.persistence.Donviquanly;
import edu.hust.k54.persistence.Phongban;
import edu.hust.k54.persistence.PhongbanHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.SoyeulylichHome;
import edu.hust.k54.persistence.Taikhoandangnhap;

public class ManagerController implements Controller {

	private static final int PERMISSION = 2;

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
			Integer idphongban = null;
			if (arg0.getParameter("idphongban") != null) {
				idphongban = Integer.parseInt(arg0.getParameter("idphongban"));
				PhongbanHome phongbanHome = new PhongbanHome();
				if (uri.contains("quanly/phongban")) {
					Map parameter = arg0.getParameterMap();
					modelAndView = new ModelAndView("QL_TTPhongban");
					Phongban phongban = phongbanHome.findById(idphongban);
					if (parameter.containsKey("update")){
						String dienthoai =arg0.getParameter("dienthoai");
						String fax = arg0.getParameter("fax");
						String thongtinchung = arg0.getParameter("thongtinchung");
						String ten = arg0.getParameter("tenphong");
						phongban.setDienthoai(dienthoai);
						phongban.setFax(fax);
						phongban.setTen(ten);
						phongban.setThongtinchung(thongtinchung);
						Manager manager = new Manager();
						manager.capNhatTTPB(phongban);
						modelAndView.addObject("result","Cập nhật thành công!");
						phongban = phongbanHome.findById(idphongban);
					}
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("phongban",phongban);
					
				} else if (uri.contains("quanly/hosocanbo")) {
					Phongban phongban = phongbanHome.findById(idphongban);
					modelAndView = new ModelAndView("quanly_canbo");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("phongban",phongban);
				} else if (uri.contains("quanly/khenthuong")) {
					Phongban phongban = phongbanHome.findById(idphongban);
					modelAndView = new ModelAndView("thongke_khenthuong");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("phongban",phongban);
				} else if (uri.contains("quanly/kyluat")) {
					Phongban phongban = phongbanHome.findById(idphongban);
					modelAndView = new ModelAndView("thongke_kyluat");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("phongban",phongban);
				} else if (uri.contains("quanly/baocao")) {
					Phongban phongban = phongbanHome.findById(idphongban);
					modelAndView = new ModelAndView("thongke_baocao");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("phongban",phongban);
				}
			}

			Integer idcanbo = null;
			if (arg0.getParameter("idcanbo") != null) {
				idcanbo = Integer.parseInt(arg0.getParameter("idcanbo"));

				SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
				Taikhoandangnhap curentUser = (Taikhoandangnhap) soyeulylichHome
						.findById(idcanbo).getTaikhoandangnhaps().toArray()[0];
				if ((taikhoandangnhap.getSoyeulylich().getIdsoyeulylich() != idcanbo)
						&& (taikhoandangnhap.getPermission() < curentUser
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
				} else if (uri.contains("thongtin/quatrinhcongtac")) {
					// TODO
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
				} else if (uri.contains("search")) {
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

	}

	private ModelAndView setLink(ModelAndView view) {
		view.addObject("homePage", "/k54/home.spms");
		view.addObject("search", "/k54/manager/search.spms");
		view.addObject("info", "/k54/manager/info.spms");
		view.addObject("contact", "/k54/manager/contact.spms");
		return view;
	}
}
