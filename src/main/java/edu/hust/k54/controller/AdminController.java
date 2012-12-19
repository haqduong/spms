package edu.hust.k54.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.ObjectUtils.Null;
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
import edu.hust.k54.persistence.DonviquanlyHome;
import edu.hust.k54.persistence.Giaoducphothong;
import edu.hust.k54.persistence.GiaoducphothongHome;
import edu.hust.k54.persistence.Hocham;
import edu.hust.k54.persistence.HochamHome;
import edu.hust.k54.persistence.Hocvi;
import edu.hust.k54.persistence.HocviHome;
import edu.hust.k54.persistence.Ngachluong;
import edu.hust.k54.persistence.NgachluongHome;
import edu.hust.k54.persistence.Phongban;
import edu.hust.k54.persistence.PhongbanHome;
import edu.hust.k54.persistence.Quocgia;
import edu.hust.k54.persistence.QuocgiaHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.SoyeulylichHome;
import edu.hust.k54.persistence.Taikhoandangnhap;
import edu.hust.k54.persistence.Nhatkyhethong;
import edu.hust.k54.persistence.TaikhoandangnhapHome;
import edu.hust.k54.persistence.Tongiao;
import edu.hust.k54.persistence.TongiaoHome;
import edu.hust.k54.persistence.Xuatthan;
import edu.hust.k54.persistence.XuatthanHome;

public class AdminController implements Controller{
	private static final int PERMISSION = 4;
	
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		ModelAndView modelAndView = null;
		Taikhoandangnhap taikhoandangnhap = (Taikhoandangnhap) arg0.getSession().getAttribute("user");
		if((taikhoandangnhap == null) || taikhoandangnhap.getPermission() < PERMISSION){
			modelAndView = new ModelAndView("errorPage");
			return modelAndView;
		}else{
			Admin admin = new Admin();
			String uri = arg0.getRequestURI();
			
			if(uri.contains("search")){
				modelAndView = new ModelAndView("timkiem");
				//TODO
			}else if(uri.contains("info")){
				//TODO
			}else if(uri.contains("contact")){
				//TODO
			}else if(uri.contains("logsystem")){
				if(arg0.getParameter("iduser")==null){
					modelAndView = new ModelAndView("admin/xem_nhatkyhethong");
					List <Nhatkyhethong> nhatkyhethong = admin.xemNkHt();
					modelAndView.addObject("nhatkyhethong", nhatkyhethong);
				}else{
					modelAndView = new ModelAndView("admin/xem_tttaikhoan");
					Integer iduser = null;
					iduser = Integer.parseInt(arg0.getParameter("iduser"));
					TaikhoandangnhapHome taikhoandangnhapHome = new TaikhoandangnhapHome();
					Taikhoandangnhap taikhoan = taikhoandangnhapHome.findById(iduser);
					modelAndView.addObject("taikhoan",taikhoan);
				}
				
				
			}else if(uri.contains("updatesalary")){
				if(arg0.getParameter("manager")==null){
					if(arg0.getParameter("idngachluong")==null){
						modelAndView = new ModelAndView("admin/xem_Ngachluong");
						List <Ngachluong> ngachluongs = admin.xemNgachLuong();
						modelAndView.addObject("ngachluongs", ngachluongs);
					}else{
						modelAndView = new ModelAndView("admin/CN_Ngachluong");
						Integer idngach = Integer.parseInt(arg0.getParameter("idngachluong"));
						NgachluongHome ngachluongHome = new NgachluongHome();
						Ngachluong ngachluong = ngachluongHome.findById(idngach);
						modelAndView.addObject("ngachluong", ngachluong);
						modelAndView.addObject("title_home", "Chỉnh sửa ngạch lương");
					}
				}else if(arg0.getParameter("manager").equalsIgnoreCase("capnhat")){
					modelAndView = new ModelAndView("admin/xem_Ngachluong");
					if(arg0.getParameter("idngachluong") != null){
						Integer idngach = Integer.parseInt(arg0.getParameter("idngachluong"));
						NgachluongHome ngachluongHome = new NgachluongHome();
						Ngachluong ngachluong = ngachluongHome.findById(idngach);
						ngachluong.setTen(arg0.getParameter("ten"));
						ngachluong.setMangach(arg0.getParameter("mangach"));
						ngachluongHome.attachDirty(ngachluong);
						ngachluongHome.getSessionFactory().getCurrentSession().flush();
						List <Ngachluong> ngachluongs = admin.xemNgachLuong();
						modelAndView.addObject("ngachluongs", ngachluongs);
					}else{
						Ngachluong ngachluong = new Ngachluong();
						ngachluong.setTen(arg0.getParameter("ten"));
						ngachluong.setMangach(arg0.getParameter("mangach"));
						NgachluongHome home = new NgachluongHome();
						home.attachDirty(ngachluong);
						home.getSessionFactory().getCurrentSession().flush();
						List <Ngachluong> ngachluongs = admin.xemNgachLuong();
						modelAndView.addObject("ngachluongs", ngachluongs);
					}
				}else if(arg0.getParameter("manager").equalsIgnoreCase("taomoi")){
					modelAndView = new ModelAndView("admin/CN_Ngachluong");
					modelAndView.addObject("title_home", "Thêm ngạch lương");
				}				
				
				
				
			}else if(uri.contains("updatechucvu")){
				if(arg0.getParameter("manager")==null){
					if(arg0.getParameter("idchucvu")==null){
						modelAndView = new ModelAndView("admin/xem_Chucvu");
						List <Chucvu> chucvus = admin.xemChucvu();
						modelAndView.addObject("chucvus", chucvus);
					}else{
						modelAndView = new ModelAndView("admin/CN_Chucvu");
						Integer idchucvu = Integer.parseInt(arg0.getParameter("idchucvu"));
						ChucvuHome home = new ChucvuHome();
						Chucvu chucvu = home.findById(idchucvu);
						modelAndView.addObject("chucvu", chucvu);
						modelAndView.addObject("title_home", "Chỉnh sửa chức vụ");
					}
				}else if(arg0.getParameter("manager").equalsIgnoreCase("capnhat")){
					modelAndView = new ModelAndView("admin/xem_Chucvu");
					if(arg0.getParameter("idchucvu") != null){
						Integer idchucvu = Integer.parseInt(arg0.getParameter("idchucvu"));
						ChucvuHome home = new ChucvuHome();
						Chucvu chucvu = home.findById(idchucvu);
						chucvu.setTen(arg0.getParameter("ten"));
						home.attachDirty(chucvu);
						home.getSessionFactory().getCurrentSession().flush();
						List <Chucvu> chucvus = admin.xemChucvu();
						modelAndView.addObject("chucvus", chucvus);
					}else{
						Chucvu chucvu = new Chucvu();
						chucvu.setTen(arg0.getParameter("ten"));
						ChucvuHome home = new ChucvuHome();
						home.attachDirty(chucvu);
						home.getSessionFactory().getCurrentSession().flush();
						List <Chucvu> chucvus = admin.xemChucvu();
						modelAndView.addObject("chucvus", chucvus);
					}
				}else if(arg0.getParameter("manager").equalsIgnoreCase("taomoi")){
					modelAndView = new ModelAndView("admin/CN_Chucvu");
					modelAndView.addObject("title_home", "Thêm chức vụ");
				}	
				
			}else if(uri.contains("updatehocham")){
				if(arg0.getParameter("manager")==null){
					if(arg0.getParameter("idhocham")==null){
						modelAndView = new ModelAndView("admin/xem_Hocham");
						List <Hocham> hochams = admin.xemHocham();
						modelAndView.addObject("hochams", hochams);
					}else{
						modelAndView = new ModelAndView("admin/CN_Hocham");
						Integer idhocham = Integer.parseInt(arg0.getParameter("idhocham"));
						HochamHome home = new HochamHome();
						Hocham hocham = home.findById(idhocham);
						modelAndView.addObject("hocham", hocham);
						modelAndView.addObject("title_home", "Chỉnh sửa học hàm");
					}
				}else if(arg0.getParameter("manager").equalsIgnoreCase("capnhat")){
					modelAndView = new ModelAndView("admin/xem_Hocham");
					if(arg0.getParameter("idhocham") != null){
						Integer idhocham = Integer.parseInt(arg0.getParameter("idhocham"));
						HochamHome home = new HochamHome();
						Hocham hocham = home.findById(idhocham);
						hocham.setTen(arg0.getParameter("ten"));
						hocham.setMota(arg0.getParameter("mota"));
						home.attachDirty(hocham);
						home.getSessionFactory().getCurrentSession().flush();
						List <Hocham> hochams = admin.xemHocham();
						modelAndView.addObject("hochams", hochams);
					}else{
						Hocham hocham = new Hocham();
						hocham.setTen(arg0.getParameter("ten"));
						hocham.setMota(arg0.getParameter("mota"));
						HochamHome home = new HochamHome();
						home.attachDirty(hocham);
						home.getSessionFactory().getCurrentSession().flush();
						List <Hocham> hochams = admin.xemHocham();
						modelAndView.addObject("hochams", hochams);
					}
				}else if(arg0.getParameter("manager").equalsIgnoreCase("taomoi")){
					modelAndView = new ModelAndView("admin/CN_Hocham");
					modelAndView.addObject("title_home", "Thêm học hàm");
				}	
				
				
			}else if(uri.contains("updatehocvi")){
				if(arg0.getParameter("manager")==null){
					if(arg0.getParameter("idhocvi")==null){
						modelAndView = new ModelAndView("admin/xem_Hocvi");
						List <Hocvi> hocvis = admin.xemHocvi();
						modelAndView.addObject("hocvis", hocvis);
					}else{
						modelAndView = new ModelAndView("admin/CN_Hocvi");
						Integer idhocvi = Integer.parseInt(arg0.getParameter("idhocvi"));
						HocviHome home = new HocviHome();
						Hocvi hocvi = home.findById(idhocvi);
						modelAndView.addObject("hocvi", hocvi);
						modelAndView.addObject("title_home", "Chỉnh sửa học vị");
					}
				}else if(arg0.getParameter("manager").equalsIgnoreCase("capnhat")){
					modelAndView = new ModelAndView("admin/xem_Hocvi");
					if(arg0.getParameter("idhocvi") != null){
						Integer idhocvi = Integer.parseInt(arg0.getParameter("idhocvi"));
						HocviHome home = new HocviHome();
						Hocvi hocvi = home.findById(idhocvi);
						hocvi.setTen(arg0.getParameter("ten"));
						hocvi.setMota(arg0.getParameter("mota"));
						home.attachDirty(hocvi);
						home.getSessionFactory().getCurrentSession().flush();
						List <Hocvi> hocvis = admin.xemHocvi();
						modelAndView.addObject("hocvis", hocvis);
					}else{
						Hocvi hocvi = new Hocvi();
						hocvi.setTen(arg0.getParameter("ten"));
						hocvi.setMota(arg0.getParameter("mota"));
						HocviHome home = new HocviHome();
						home.attachDirty(hocvi);
						home.getSessionFactory().getCurrentSession().flush();
						List <Hocvi> hocvis = admin.xemHocvi();
						modelAndView.addObject("hocvis", hocvis);
					}
				}else if(arg0.getParameter("manager").equalsIgnoreCase("taomoi")){
					modelAndView = new ModelAndView("admin/CN_Hocvi");
					modelAndView.addObject("title_home", "Thêm học vị");
				}	
				
				
			
				
				
			}else if(uri.contains("phanquyen")){
				if(arg0.getParameter("iduser") == null){
					modelAndView = new ModelAndView("admin/xem_phanquyen");
					List <Taikhoandangnhap> phanquyens = admin.xemPhanquyen();
					modelAndView.addObject("phanquyens", phanquyens);
				}else{
					if(arg0.getParameter("manager") == null){
						modelAndView = new ModelAndView("admin/CN_phanquyen");
						Integer iduser = Integer.parseInt(arg0.getParameter("iduser"));
						TaikhoandangnhapHome home = new TaikhoandangnhapHome();
						Taikhoandangnhap taikhoan = home.findById(iduser);
						modelAndView.addObject("phanquyen", taikhoan);
					}else{
						modelAndView = new ModelAndView("admin/CN_phanquyen");
						Integer iduser = Integer.parseInt(arg0.getParameter("iduser"));
						TaikhoandangnhapHome home = new TaikhoandangnhapHome();
						Taikhoandangnhap taikhoan = home.findById(iduser);
						Integer permission = Integer.parseInt(arg0.getParameter("permission"));
						taikhoan.setPermission(permission);
						home.attachDirty(taikhoan);
						home.getSessionFactory().getCurrentSession().flush();
						modelAndView = new ModelAndView("admin/xem_phanquyen");
						List <Taikhoandangnhap> phanquyens = admin.xemPhanquyen();
						modelAndView.addObject("phanquyens", phanquyens);
					}
					
					
				}
				
				
				
			}else if(uri.contains("taotaikhoan")){
				
				SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
				DonviquanlyHome donviquanlyHome = new DonviquanlyHome();
				PhongbanHome phongbanHome = new PhongbanHome();
				HocviHome hocviHome = new HocviHome();
				ChucvuHome chucvuHome = new ChucvuHome();
				HochamHome hochamHome = new HochamHome();
				CapuyHome capuyHome = new CapuyHome();
				GiaoducphothongHome giaoducphothongHome = new GiaoducphothongHome();
				DanhhieuHome danhHome = new DanhhieuHome();
				XuatthanHome xuatthanHome = new XuatthanHome();
				QuocgiaHome quocgiaHome = new QuocgiaHome();
				DantocHome dantocHome = new DantocHome();
				TongiaoHome tongiaoHome = new TongiaoHome();
				
				if(arg0.getParameter("manager") == null){
					modelAndView = new ModelAndView("admin/tao_taikhoan");
					Donviquanly donviquanly = new Donviquanly();
					List <Donviquanly> donviquanlies = donviquanlyHome.findByExample(donviquanly);
					modelAndView.addObject("donviquanlies", donviquanlies);
					
					Phongban phongban = new Phongban();
					List <Phongban> phongbans = phongbanHome.findByExample(phongban);
					modelAndView.addObject("phongbans", phongbans);
					
					Hocham hocham = new Hocham();
					List <Hocham> hochams = hochamHome.findByExample(hocham);
					modelAndView.addObject("hochams", hochams);
					
					Hocvi hocvi = new Hocvi();
					List <Hocvi> hocvis = hocviHome.findByExample(hocvi);
					modelAndView.addObject("hocvis", hocvis);
					
					Chucvu chucvu = new Chucvu();
					List <Chucvu> chucvus = chucvuHome.findByExample(chucvu);
					modelAndView.addObject("chucvus", chucvus);
					
					Capuy capuy = new Capuy();
					List <Capuy> capuys = capuyHome.findByExample(capuy);
					modelAndView.addObject("capuys", capuys);
					
					Giaoducphothong giaoducphothong = new Giaoducphothong();
					List <Giaoducphothong> giaoducphothongs = giaoducphothongHome.findByExample(giaoducphothong);
					modelAndView.addObject("giaoducphothongs", giaoducphothongs);
					
					Danhhieu danhhieu = new Danhhieu();
					List <Danhhieu> danhDanhhieus = danhHome.findByExample(danhhieu);
					modelAndView.addObject("danhhieus", danhDanhhieus);
					
					Xuatthan xuatthan = new Xuatthan();
					List <Xuatthan> xuatthans = xuatthanHome.findByExample(xuatthan);
					modelAndView.addObject("xuatthans", xuatthans);
					
					Quocgia quocgia = new Quocgia();
					List <Quocgia> quocgias = quocgiaHome.findByExample(quocgia);
					modelAndView.addObject("quocgias", quocgias);
					
					Dantoc dantoc = new Dantoc();
					List <Dantoc> dantocs = dantocHome.findByExample(dantoc);
					modelAndView.addObject("dantocs", dantocs);
					
					Tongiao tongiao = new Tongiao();
					List <Tongiao> tongiaos = tongiaoHome.findByExample(tongiao);
					modelAndView.addObject("tongiaos", tongiaos);
					
				}else{
					modelAndView = new ModelAndView("admin/tao_taikhoan");
					Taikhoandangnhap taikhoan = new Taikhoandangnhap();
					Soyeulylich soyeu = new Soyeulylich();
					
					Integer idtemp;
					
					soyeu.setHoten(arg0.getParameter("hoten"));
					
//					System.out.print("======================"+arg0.getParameter("donviquanly"));
					idtemp = Integer.parseInt(arg0.getParameter("donviquanly"));
					soyeu.setDonviquanly(donviquanlyHome.findById(idtemp));
					
//					System.out.print("============hocvi=========="+arg0.getParameter("hocvi"));
					idtemp = Integer.parseInt(arg0.getParameter("hocvi"));
					soyeu.setHocvi(hocviHome.findById(idtemp));
					
//					System.out.print("=========chucvu============="+arg0.getParameter("chucvu"));
					idtemp = Integer.parseInt(arg0.getParameter("chucvu"));
					soyeu.setChucvu(chucvuHome.findById(idtemp));
					
//					System.out.print("==========hocham============"+arg0.getParameter("hocham"));
					idtemp = Integer.parseInt(arg0.getParameter("hocham"));
					soyeu.setHocham(hochamHome.findById(idtemp));
					
//					System.out.print("==========capuy============"+arg0.getParameter("capuy"));
					idtemp = Integer.parseInt(arg0.getParameter("capuy"));
					soyeu.setCapuy(capuyHome.findById(idtemp));
					
//					System.out.print("===========giaoducphothong==========="+arg0.getParameter("giaoducphothong"));
					idtemp = Integer.parseInt(arg0.getParameter("giaoducphothong"));
					soyeu.setGiaoducphothong(giaoducphothongHome.findById(idtemp));
					
//					System.out.print("===========danhhieu==========="+arg0.getParameter("danhhieu"));
					idtemp = Integer.parseInt(arg0.getParameter("danhhieu"));
					soyeu.setDanhhieu(danhHome.findById(idtemp));
					
//					System.out.print("==========xuatthan============"+arg0.getParameter("xuatthan"));
					idtemp = Integer.parseInt(arg0.getParameter("xuatthan"));
					soyeu.setXuatthan(xuatthanHome.findById(idtemp));
					
//					System.out.print("===========quocgia==========="+arg0.getParameter("quocgia"));
					idtemp = Integer.parseInt(arg0.getParameter("quocgia"));
					soyeu.setQuocgia(quocgiaHome.findById(idtemp));
					
					
					soyeu.setLoaiCb(1);
					if(arg0.getParameter("sohieucongchuc") != ""){
						idtemp = Integer.parseInt(arg0.getParameter("sohieucongchuc"));
						soyeu.setSohieucongchuc(idtemp);
					}
						
					soyeu.setChungminhnhandan(arg0.getParameter("chungminhnhandan"));
					soyeu.setGioitinh(arg0.getParameter("gioitinh"));
					soyeu.setTenthuongdung(arg0.getParameter("tenthuongdung"));
					
					soyeulylichHome.attachDirty(soyeu);
					soyeulylichHome.getSessionFactory().getCurrentSession().flush();
					
//					System.out.print("-----------------------"+soyeu.getIdsoyeulylich());
					
					taikhoan.setSoyeulylich(soyeu);
					taikhoan.setUsername(arg0.getParameter("username"));
					taikhoan.setPass(arg0.getParameter("pass"));
					taikhoan.setEmail(arg0.getParameter("email"));
					taikhoan.setPermission(Integer.parseInt(arg0.getParameter("permission")));
					modelAndView = new ModelAndView("admin/xem_phanquyen");
					TaikhoandangnhapHome home = new TaikhoandangnhapHome();
					home.attachDirty(taikhoan);
					home.getSessionFactory().getCurrentSession().flush();
					
					List <Taikhoandangnhap> phanquyens = admin.xemPhanquyen();
					modelAndView.addObject("phanquyens", phanquyens);
					
				}
				
					
				
				
				
			}else if(uri.contains("duyettaikhoan")){
				modelAndView = new ModelAndView("admin/homepage");
				
				
			}
			
		}
		return modelAndView;
	}
	
}

