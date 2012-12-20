package edu.hust.k54.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.basic.BasicInternalFrameTitlePane.MoveAction;

import org.apache.commons.lang.ObjectUtils.Null;
import java.util.HashSet;
import java.util.Set;
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
		Guest guestController = new Guest();
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
				return modelAndView;
			} //End: Search
			if(uri.contains("info")){
				//TODO
				return modelAndView;
			}//End: info
			
			if(uri.contains("contact")){
				//TODO
				return modelAndView;
			}//End contact
			
			if(uri.contains("logsystem")){
				if(arg0.getParameter("iduser")==null){
					modelAndView = new ModelAndView("admin/xem_nhatkyhethong");
					List <Nhatkyhethong> nhatkyhethong = admin.xemNkHt();
					System.out.println("fuckkkkkk");
					for (Nhatkyhethong nhatkyhethong2 : nhatkyhethong) {
						System.out.println(nhatkyhethong2.getTaikhoandangnhap().getUsername() + "\n");
					}
					modelAndView.addObject("nhatkyhethongs", nhatkyhethong);
				}else{
					modelAndView = new ModelAndView("admin/xem_tttaikhoan");
					Integer iduser = null;
					iduser = Integer.parseInt(arg0.getParameter("iduser"));
					TaikhoandangnhapHome taikhoandangnhapHome = new TaikhoandangnhapHome();
					Taikhoandangnhap taikhoan = taikhoandangnhapHome.findById(iduser);
					modelAndView.addObject("taikhoan",taikhoan);
				}
				
				//chức năng lọc xem nhật ký hệ thống
				if(arg0.getParameter("manager") != null && arg0.getParameter("manager").equals("filter")){
					System.out.println("sao lai vao day");
					modelAndView = new ModelAndView("admin/xem_nhatkyhethong");
					String username = arg0.getParameter("username");
					String addrIP = arg0.getParameter("addrip");
					String start_date = arg0.getParameter("start_date");
					String end_date = arg0.getParameter("end_date");
					TaikhoandangnhapHome taikhoanHome = new TaikhoandangnhapHome();
					Taikhoandangnhap taikhoan = new Taikhoandangnhap();
					ArrayList<Nhatkyhethong> nhatkyhethongs = new ArrayList<Nhatkyhethong>();
					
					if(username != ""){
						taikhoan.setUsername(username);
						List<Taikhoandangnhap> taikhoans =  taikhoanHome.findByExample(taikhoan);
						if(taikhoans.size() == 0){
							modelAndView.addObject("statusError", "Không có kết quả phù hợp");
							modelAndView.addObject("nhatkyhethongs", nhatkyhethongs);
							return modelAndView;
						}
						
						taikhoan = taikhoans.get(0);
						System.out.println("aaa = "+taikhoan.getUsername());
						Set nhatkys = taikhoan.getNhatkyhethongs();
						if(addrIP != ""){
							
							for(Iterator<Nhatkyhethong> nhatky = nhatkys.iterator(); nhatky.hasNext();){
								Nhatkyhethong nhatkyTemp = new Nhatkyhethong();
								nhatkyTemp = nhatky.next();
								if(nhatkyTemp.getDiachiip().equals(addrIP))
									nhatkyhethongs.add(nhatkyTemp);
								
							}
						}else{
							for(Iterator<Nhatkyhethong> nhatky = nhatkys.iterator(); nhatky.hasNext();){
									Nhatkyhethong nhatkyTemp = new Nhatkyhethong();
									nhatkyTemp = nhatky.next();
									nhatkyhethongs.add(nhatkyTemp);
							}
						} 
						
					}//End if (username != "")
					else{
						List <Nhatkyhethong> nhatkyhethong = admin.xemNkHt();
						modelAndView.addObject("nhatkyhethongs", nhatkyhethong);
						return modelAndView;
					}//End else của if (username != "")
					
					if(nhatkyhethongs.size() == 0)
						modelAndView.addObject("statusError", "Không có kết quả phù hợp");
					modelAndView.addObject("nhatkyhethongs", nhatkyhethongs);
					return modelAndView;
				}//End chức năng lọc xem nhật ký hệ thống
				
				return modelAndView;
			}//End logsystem
			
			
			if(uri.contains("updatesalary")){
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
				
				return modelAndView;
			}//End updatesalary
			
			
			if(uri.contains("updatechucvu")){
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
						System.out.print("---------------------" +chucvu.getTen());
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
				return modelAndView;
			}//End updatechucvu
			
			
			if(uri.contains("updatehocham")){
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
				return modelAndView;
			}//End updatehocham
			
			if(uri.contains("updatehocvi")){
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
				return modelAndView;
			}//End updatehocvi
			
			if(uri.contains("phanquyen")){
				if(arg0.getParameter("iduser") == null){
					modelAndView = new ModelAndView("admin/xem_phanquyen");
					String statusError = "Không tìm thấy kết quả";
					
					//dispatcher: Vào chức năng phân quyền
					if(arg0.getParameter("manager") == null){
						List <Taikhoandangnhap> phanquyens = admin.xemPhanquyen();
						for (Taikhoandangnhap taikhoandangnhap2 : phanquyens) {
							System.out.println(taikhoandangnhap2.getUsername() + "\n");
						}
						modelAndView.addObject("phanquyens", phanquyens);
					}
					// End: Vào chức năng phân quyền
					//----------------------------------------------------------------------------------
					//dispatcher: lọc danh sách phân quyền
//					else if(arg0.getParameter("manager").equalsIgnoreCase("filter")){
//						
//						TaikhoandangnhapHome taikhoanhome = new TaikhoandangnhapHome();
//						
//						
//						String username = arg0.getParameter("username");
//						if(username == ""){
//							String strDonvi = arg0.getParameter("donvi");
//							String strPhongban = arg0.getParameter("phongban");
//							if(strDonvi != null && strDonvi != ""){
//								DonviquanlyHome donvihome = new DonviquanlyHome();
//								PhongbanHome phongbanHome = new PhongbanHome();
//								
//								Integer idDonvi = Integer.parseInt(strDonvi);
//								Donviquanly donviquanly = donvihome.findById(idDonvi);
//								ArrayList<Taikhoandangnhap> phanquyens = new ArrayList<Taikhoandangnhap>();
//								if(strPhongban != null && strPhongban != ""){
//									Integer idPhongban = Integer.parseInt(strPhongban);
//									Phongban phongban = phongbanHome.findById(idPhongban);
//									Set soyeus = phongban.getSoyeulyliches();
//									for(Iterator<Soyeulylich> soyeu = soyeus.iterator(); soyeu.hasNext();){
//										Taikhoandangnhap taikhoan = new Taikhoandangnhap();
//										taikhoan = (Taikhoandangnhap)soyeu.next().getTaikhoandangnhaps();
//										phanquyens.add(taikhoan);
//									}
//								}else{
//									Set soyeus = donviquanly.getSoyeulyliches();
//									for(Iterator<Soyeulylich> soyeu = soyeus.iterator(); soyeu.hasNext();){
//										Taikhoandangnhap taikhoan = new Taikhoandangnhap();
//										taikhoan = (Taikhoandangnhap)soyeu.next().getTaikhoandangnhaps();
//										phanquyens.add(taikhoan);
//									}
//								}
//								if(phanquyens.size() == 0)
//									modelAndView.addObject("statusError", statusError);
//								modelAndView.addObject("phanquyens", phanquyens);
//								
//								
//								
//							}else{
//								List <Taikhoandangnhap> phanquyens = admin.xemPhanquyen();
//								if(phanquyens.size() == 0)
//									modelAndView.addObject("statusError", statusError);
//								modelAndView.addObject("phanquyens", phanquyens);
//								
//							}
//						}else{
//							Taikhoandangnhap taikhoan = new Taikhoandangnhap();
//							taikhoan.setUsername(username);
//							List<Taikhoandangnhap> phanquyens = taikhoanhome.findByExample(taikhoan);
//							if(phanquyens.size() == 0)
//								modelAndView.addObject("statusError", statusError);
//							modelAndView.addObject("phanquyens", phanquyens);
//						}
//					}// end: lọc danh sách phân quyền
//					
//					//Dùng để có list lựa chọn đơn vị
//					DonviquanlyHome dvhome = new DonviquanlyHome();
//					Donviquanly donvi = new Donviquanly();
//					List <Donviquanly> donviquanlies = dvhome.findByExample(donvi);
//					List<Donviquanly> donviquanly = guestController.TimDVQL(0,
//							0, null);
//					modelAndView.addObject("donviquanly", donviquanly);
//					modelAndView.addObject("donvis", donviquanlies);
//					//-------Dùng để có list lựa chọn đơn vị
//					modelAndView.addObject("statusErr", statusError);
//					return modelAndView;
				} //End if iduser == null
				
				else{
					//Dispatcher: xem phân quyền cụ thể
					if(arg0.getParameter("manager") == null){
						modelAndView = new ModelAndView("admin/CN_phanquyen");
						Integer iduser = Integer.parseInt(arg0.getParameter("iduser"));
						TaikhoandangnhapHome home = new TaikhoandangnhapHome();
						Taikhoandangnhap taikhoan = home.findById(iduser);
						modelAndView.addObject("phanquyen", taikhoan);
						return modelAndView;
					}//End: xem phân quyền cụ thể
					//--------------------------------------------------------------------
					//Dispatcher: Cập nhật phân quyền
					if(arg0.getParameter("manager").equalsIgnoreCase("capnhat")){
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
						
						//Dùng để có list lựa chọn đơn vị
						DonviquanlyHome dvhome = new DonviquanlyHome();
						Donviquanly donvi = new Donviquanly();
						List <Donviquanly> donviquanlies = dvhome.findByExample(donvi);
						List<Donviquanly> donviquanly = guestController.TimDVQL(0,
								0, null);
						modelAndView.addObject("donviquanly", donviquanly);
						modelAndView.addObject("donvis", donviquanlies);
						//-------Dùng để có list lựa chọn đơn vị
						return modelAndView;
						
						
					}//End: Cập nhật phân quyền
				}
				
				return modelAndView;
			}//End phan quyen
			
			if(uri.contains("taotaikhoan")){
				
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
				return modelAndView;
			}//End taotaikhoan
			
			
			if(uri.contains("duyettaikhoan")){
				modelAndView = new ModelAndView("admin/homepage");
				
				return modelAndView;
			}//End duyettaikhoan
			
		}
		return modelAndView;
	}
	
}

