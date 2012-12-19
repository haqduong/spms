package edu.hust.k54.controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import edu.hust.k54.persistence.Donviquanly;
import edu.hust.k54.persistence.Phongban;
import edu.hust.k54.persistence.PhongbanHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.Taikhoandangnhap;

public class GuestController implements Controller {
	private static final int PERMISSION = 0;

	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		ModelAndView modelAndView = null;
		Guest guestController = new Guest();
		Taikhoandangnhap taikhoandangnhap = (Taikhoandangnhap) arg0
				.getSession().getAttribute("user");
		if (taikhoandangnhap != null) {
			if (taikhoandangnhap.getPermission() < PERMISSION) {
				modelAndView = new ModelAndView("errorPage");
				return modelAndView;
			} else {
				String uri = arg0.getRequestURI();
				if (uri.contains("search")) {
					modelAndView = new ModelAndView("timkiem");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					String Vien = arg0.getParameter("vien");
					String PhongBan = arg0.getParameter("phongban");
					String LoaiCB = arg0.getParameter("loaicanbo");
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
				} else if (uri.contains("chitietcanbo")) {
					modelAndView = new ModelAndView("xem_TTcanbo");
					Integer idcanbo = Integer.parseInt(arg0
							.getParameter("idcanbo"));
					System.out.println("id can bo: " + idcanbo);
					modelAndView.addObject("canbo",
							guestController.TimCB(idcanbo));
					modelAndView = setLink(modelAndView);

				} else if (uri.contains("info")) {
					modelAndView = new ModelAndView("info");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
							null);
					modelAndView.addObject("donviquanly", donviquanly);
				} else if (uri.contains("contact")) {
					modelAndView = new ModelAndView("contact");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
							null);
					modelAndView.addObject("donviquanly", donviquanly);
				} else if (uri.contains("donviquanly")) {
					if (uri.contains("gioithieuchung")) {
						modelAndView = new ModelAndView("vienkhoahoc");
						List<Donviquanly> donviquanly = guestController
								.TimDVQL(0, 0, null);
						modelAndView.addObject("donviquanly", donviquanly);
						Integer iddonviquanly = Integer.parseInt(arg0
								.getParameter("iddonviquanly"));
						modelAndView.addObject("donvi", guestController
								.timDonVi(iddonviquanly));
					} else if (uri.contains("danhsachcanbo")) {
						Integer iddonviquanly = Integer.parseInt(arg0
								.getParameter("iddonviquanly"));
						modelAndView = new ModelAndView("danhsachcanbo");
						List<Donviquanly> donviquanly = guestController
								.TimDVQL(0, 0, null);
						modelAndView.addObject("donviquanly", donviquanly);
						modelAndView.addObject("donvi", guestController
								.timDonVi(iddonviquanly));
						modelAndView.addObject("danhsachcanbo", guestController
								.TimCB(iddonviquanly, 0, null, 0));
					} else if (uri.contains("danhsachphongban")) {
						Integer iddonviquanly = Integer.parseInt(arg0
								.getParameter("iddonviquanly"));
						modelAndView = new ModelAndView("danhsachphongban");
						List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0, null);
						modelAndView.addObject("donviquanly", donviquanly);
						modelAndView.addObject("donvi", guestController.timDonVi(iddonviquanly));
						modelAndView.addObject("danhsachphongban",
								guestController.timPhongBan(iddonviquanly));
					} else if (uri.contains("nghiencuu")) {
						Integer iddonviquanly = Integer.parseInt(arg0
								.getParameter("iddonviquanly"));
						modelAndView = new ModelAndView("danhsachdetai");
						List<Donviquanly> donviquanly = guestController
								.TimDVQL(0, 0, null);
						modelAndView.addObject("donviquanly", donviquanly);
						modelAndView.addObject("donvi", guestController
								.timDonVi(iddonviquanly));
						List<Soyeulylich> canbonghiencuu = guestController
								.TimCB(iddonviquanly, 0, null, 0);
						System.out.println("danh sach can bo"
								+ canbonghiencuu.size());
						modelAndView
								.addObject("canbonghiencuu", canbonghiencuu);
					}
				}
			}
		} else {
			String uri = arg0.getRequestURI();
			if (uri.contains("search")) {
				modelAndView = new ModelAndView("timkiem");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
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
					List<Soyeulylich> danhsachcanbo = guestController.TimCB(
							idVien, idPhongBan, ((tenCb == "") ? null : tenCb),
							loaiCB);
					modelAndView.addObject("result", danhsachcanbo);
				}
				modelAndView = setLink(modelAndView);
			} else if (uri.contains("info")) {
				modelAndView = new ModelAndView("info");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView = setLink(modelAndView);
			} else if (uri.contains("chitietcanbo")) {
				modelAndView = new ModelAndView("xem_TTcanbo");
				Integer idcanbo = Integer
						.parseInt(arg0.getParameter("idcanbo"));
				modelAndView.addObject("canbo", guestController.TimCB(idcanbo));
				modelAndView = setLink(modelAndView);

			} else if (uri.contains("contact")) {
				modelAndView = new ModelAndView("contact");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView = setLink(modelAndView);
			} else if (uri.contains("donviquanly")) {
				if (uri.contains("gioithieuchung")) {
					modelAndView = new ModelAndView("vienkhoahoc");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					Integer iddonviquanly = Integer.parseInt(arg0
							.getParameter("iddonviquanly"));
					Donviquanly donvi = guestController.timDonVi(iddonviquanly);
					Soyeulylich vientruong = new Soyeulylich();
					Soyeulylich vienpho = new Soyeulylich();
					Set<Phongban> phongban = donvi.getPhongbans();
					for (Phongban pb : phongban) {
						Set<Soyeulylich> soyeulylichs = pb.getSoyeulyliches();
						for (Soyeulylich soyeulylich : soyeulylichs) {
							if(soyeulylich.getChucvu().getIdchucvu() == 1){
								vientruong= soyeulylich;
							}else if(soyeulylich.getChucvu().getIdchucvu() == 2){
								vienpho = soyeulylich;
							}
						}
					}
					modelAndView.addObject("vientruong", vientruong);
					modelAndView.addObject("vienpho", vienpho);
					modelAndView.addObject("donvi", donvi);
				} else if (uri.contains("xemphongban")) {
					Integer idphongban = Integer.parseInt(arg0
							.getParameter("idphongban"));
					PhongbanHome phongbanHome = new PhongbanHome();
					modelAndView = new ModelAndView("xemphongban");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("phongban", phongbanHome.findById(idphongban));
				} else if (uri.contains("danhsachcanbo")) {
					Integer iddonviquanly = Integer.parseInt(arg0
							.getParameter("iddonviquanly"));
					modelAndView = new ModelAndView("danhsachcanbo");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("donvi",
							guestController.timDonVi(iddonviquanly));
					modelAndView.addObject("danhsachcanbo",
							guestController.TimCB(iddonviquanly, 0, null, 0));
				} else if (uri.contains("danhsachphongban")) {
					Integer iddonviquanly = Integer.parseInt(arg0
							.getParameter("iddonviquanly"));
					modelAndView = new ModelAndView("danhsachphongban");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("donvi",
							guestController.timDonVi(iddonviquanly));
					modelAndView.addObject("danhsachphongban",
							guestController.timPhongBan(iddonviquanly));
				} else if (uri.contains("nghiencuu")) {
					Integer iddonviquanly = Integer.parseInt(arg0
							.getParameter("iddonviquanly"));
					modelAndView = new ModelAndView("danhsachdetai");
					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
							0, null);
					modelAndView.addObject("donviquanly", donviquanly);
					modelAndView.addObject("donvi",
							guestController.timDonVi(iddonviquanly));
					List<Soyeulylich> canbonghiencuu = guestController.TimCB(
							iddonviquanly, 0, null, 0);
					System.out.println("danh sach can bo"
							+ canbonghiencuu.size());
					modelAndView.addObject("canbonghiencuu", canbonghiencuu);
				}
			}
		}
		return modelAndView;
	}

	private ModelAndView setLink(ModelAndView view) {
		view.addObject("homePage", "/k54/home.spms");
		view.addObject("search", "/k54/guest/search.spms");
		view.addObject("info", "/k54/guest/info.spms");
		view.addObject("contact", "/k54/guest/contact.spms");
		return view;
	}
}
