package edu.hust.k54.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import edu.hust.k54.persistence.Capuy;
import edu.hust.k54.persistence.CapuyHome;
import edu.hust.k54.persistence.Chucvu;
import edu.hust.k54.persistence.ChucvuHome;
import edu.hust.k54.persistence.Danhhieu;
import edu.hust.k54.persistence.DanhhieuHome;
import edu.hust.k54.persistence.Dantoc;
import edu.hust.k54.persistence.DantocHome;
import edu.hust.k54.persistence.Donviquanly;
import edu.hust.k54.persistence.Giaoducphothong;
import edu.hust.k54.persistence.GiaoducphothongHome;
import edu.hust.k54.persistence.Hocham;
import edu.hust.k54.persistence.HochamHome;
import edu.hust.k54.persistence.Hocvi;
import edu.hust.k54.persistence.HocviHome;
import edu.hust.k54.persistence.Quocgia;
import edu.hust.k54.persistence.QuocgiaHome;
import edu.hust.k54.persistence.SachxuatbanHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.SoyeulylichHome;
import edu.hust.k54.persistence.Taikhoandangnhap;
import edu.hust.k54.persistence.Tongiao;
import edu.hust.k54.persistence.TongiaoHome;
import edu.hust.k54.persistence.Xuatthan;
import edu.hust.k54.persistence.XuatthanHome;

public class StaffController implements Controller {

	private static final int PERMISSION = 1;

	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		ModelAndView modelAndView = null;
		Guest guestController = new Guest();
		Staff staffController = new Staff();
		Taikhoandangnhap taikhoandangnhap = (Taikhoandangnhap) arg0
				.getSession().getAttribute("user");
		if ((taikhoandangnhap == null)
				|| taikhoandangnhap.getPermission() < PERMISSION) {
			modelAndView = new ModelAndView("errorPage");
			return modelAndView;
		} else {
			String uri = arg0.getRequestURI();
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
				}
			}
			
			if (uri.contains("capnhat/thongtincanhan")) {
				modelAndView = new ModelAndView("sua_thongtincanhan");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				Map parameter = arg0.getParameterMap();
				if(parameter.containsKey("update")){
					String newName = arg0.getParameter("name");
					Integer newIdDonVi = Integer.parseInt(arg0.getParameter("choiceDonviquanly"));
					Integer newIdPhongBan = Integer.parseInt(arg0.getParameter("phongban"));
					Integer newIdHocVi = Integer.parseInt(arg0.getParameter("hocvi"));
					Integer newIdChucVu = Integer.parseInt(arg0.getParameter("chucvu"));
					Integer newIdHocHam = Integer.parseInt(arg0.getParameter("hocham"));
					Integer newIdCapUy = Integer.parseInt(arg0.getParameter("capuy"));
					Integer newIdGiaoDucPhoThong = Integer.parseInt(arg0.getParameter("giaoducphothong"));
					Integer newIdDanhHieu = Integer.parseInt(arg0.getParameter("danhhieu"));
					Integer newIdXuatThan = Integer.parseInt(arg0.getParameter("xuatthan"));
					Integer newIdQuocGia = Integer.parseInt(arg0.getParameter("quocgia"));
					Integer newIdDanToc = Integer.parseInt(arg0.getParameter("dantoc"));
					Integer newIdTonGiao = Integer.parseInt(arg0.getParameter("tongiao"));
					String newLoaiCanBo = arg0.getParameter("loaicanbo");
					Integer newSoHieuCongChuc = Integer.parseInt(arg0.getParameter("sohieucongchuc"));
					String newSoCMT = arg0.getParameter("chungminhnhandan");
					String newGioiTinh = arg0.getParameter("gioitinh");
					String newTenThuongDung = arg0.getParameter("tenthuongdung");
					Date newNgaySinh = new Date(arg0.getParameter("ngaysinh"));
					String newNoiSinh = arg0.getParameter("noisinh");
					String newQueQuan = arg0.getParameter("quequan");
					String newNoiO = arg0.getParameter("noiohiennay");
					String newSoDT = arg0.getParameter("sodienthoai");
					String newNgayVaoDang = arg0.getParameter("ngayvaodangchinhthuc");
					Date newNgayCapNhat = new Date(arg0.getParameter("ngaycapnhat"));
					String newSucKhoe = arg0.getParameter("suckhoe");
					String newNgonNguBiet = arg0.getParameter("ngonngubiet");
					
				}
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView.addObject("canbo", guestController.TimCB(idcanbo));
				HochamHome hochamHome = new HochamHome();
				modelAndView.addObject("hocham", hochamHome.findByExample(new Hocham()));
				HocviHome hocviHome = new HocviHome();
				modelAndView.addObject("hocvi", hocviHome.findByExample(new Hocvi()));
				ChucvuHome chucvuHome = new ChucvuHome();
				modelAndView.addObject("chucvu", chucvuHome.findByExample(new Chucvu()));
				CapuyHome capuyHome = new CapuyHome();
				modelAndView.addObject("capuy", capuyHome.findByExample(new Capuy()));
				GiaoducphothongHome giaoducphothongHome = new GiaoducphothongHome();
				modelAndView.addObject("giaoducphothong", giaoducphothongHome.findByExample(new Giaoducphothong()));
				DanhhieuHome danhhieuHome = new DanhhieuHome();
				modelAndView.addObject("danhhieu", danhhieuHome.findByExample(new Danhhieu()));
				XuatthanHome xuatthanHome = new XuatthanHome();
				modelAndView.addObject("xuatthan", xuatthanHome.findByExample(new Xuatthan()));
				QuocgiaHome quocgiaHome = new QuocgiaHome();
				modelAndView.addObject("quocgia", quocgiaHome.findByExample(new Quocgia()));
				DantocHome dantocHome = new DantocHome();
				modelAndView.addObject("dantoc", dantocHome.findByExample(new Dantoc()));
				TongiaoHome tongiaoHome = new TongiaoHome();
				modelAndView.addObject("tongiao", tongiaoHome.findByExample(new Tongiao()));
				
			} else if (uri.contains("capnhat/lylichkhoahoc")) {
				modelAndView = new ModelAndView("lylichKH");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView.addObject("canbo", guestController.TimCB(idcanbo));
			} else if (uri.contains("capnhat/taikhoan")) {
				modelAndView = new ModelAndView("sua_thongtintaikhoan");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				Map parameter = arg0.getParameterMap();
				if (parameter.containsKey("updateInfo")) {
					String newEmail = arg0.getParameter("email");
					if (newEmail != null) {
						Taikhoandangnhap newUser = staffController.doiEmail(
								taikhoandangnhap.getIduser(), newEmail);
						if (newUser != null) {
							arg0.getSession().removeAttribute("user");
							arg0.getSession(true).setAttribute("user", newUser);
							modelAndView.addObject("chageEmailStatus",
									"Cập nhật email thành công!");
						} else {
							modelAndView.addObject("chageEmailStatus",
									"Cập nhật email không thành công!");
						}
					} else {
						modelAndView.addObject("chageEmailStatus",
								"Không có thông tin cho email mới!");
					}

				} else if (parameter.containsKey("updatePass")) {
					String newPass = arg0.getParameter("pass_new1");
					String oldPass = arg0.getParameter("pass_old");
					if (newPass != "" && oldPass != "") {
						if (staffController.doiMatKhau(taikhoandangnhap,
								oldPass, newPass)) {
							modelAndView.addObject("chagePassStatus",
									"Cập nhật mật khẩu thành công!");
						} else {
							modelAndView
									.addObject(
											"chagePassStatus",
											"Cập nhật mật khẩu không thành công, mật khẩu cũ không chính xác, xin kiểm tra lại!");
						}
					} else {
						modelAndView.addObject("chagePassStatus",
								"Không có thông tin cho mật khẩu mới!");
					}
				}
				modelAndView.addObject("canbo", guestController.TimCB(idcanbo));

			} else if (uri.contains("thongtin/soyeulylich")) {
				modelAndView = new ModelAndView("xem_TTcanbo");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView.addObject("canbo", guestController.TimCB(idcanbo));
			} else if (uri.contains("thongtin/lylichkhoahoc")) {
				modelAndView = new ModelAndView("lylichKH");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView.addObject("canbo", guestController.TimCB(idcanbo));
			} else if (uri.contains("thongtin/quatrinhcongtac")) { // không co
				modelAndView = new ModelAndView("quatrinhcongtac");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView.addObject("canbo", guestController.TimCB(idcanbo));
			} else if (uri.contains("thongtin/dienbienluong")) {
				modelAndView = new ModelAndView("dienbienluong");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView.addObject("canbo", guestController.TimCB(idcanbo));
			} else if (uri.contains("thongtin/khenthuong")) {
				modelAndView = new ModelAndView("khenthuong");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView.addObject("canbo", guestController.TimCB(idcanbo));
			} else if (uri.contains("thongtin/kyluat")) {
				modelAndView = new ModelAndView("kyluat");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView.addObject("canbo", guestController.TimCB(idcanbo));
			} else if (uri.contains("search")) {
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
					System.out.println("id vien = " + idVien
							+ "id phong ban = " + idPhongBan + "tencanbo = "
							+ tenCb);
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
			} else if (uri.contains("contact")) {
				modelAndView = new ModelAndView("contact");
				List<Donviquanly> donviquanly = guestController.TimDVQL(0, 0,
						null);
				modelAndView.addObject("donviquanly", donviquanly);
				modelAndView = setLink(modelAndView);
			}

			return modelAndView;
		}

	}

	private ModelAndView setLink(ModelAndView view) {
		view.addObject("homePage", "/k54/home.spms");
		view.addObject("search", "/k54/staff/search.spms");
		view.addObject("info", "/k54/staff/info.spms");
		view.addObject("contact", "/k54/staff/contact.spms");
		return view;
	}
}
