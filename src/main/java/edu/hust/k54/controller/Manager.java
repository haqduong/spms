package edu.hust.k54.controller;
import java.util.ArrayList;
import java.util.Set;

import edu.hust.k54.persistence.Donviquanly;
import edu.hust.k54.persistence.DonviquanlyHome;
import edu.hust.k54.persistence.Hesoluong;
import edu.hust.k54.persistence.HesoluongHome;
import edu.hust.k54.persistence.Khenthuong;
import edu.hust.k54.persistence.KhenthuongHome;
import edu.hust.k54.persistence.Kyluat;
import edu.hust.k54.persistence.KyluatHome;
import edu.hust.k54.persistence.Phongban;
import edu.hust.k54.persistence.PhongbanHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.SoyeulylichHome;
import edu.hust.k54.persistence.Taikhoandangnhap;
import edu.hust.k54.persistence.TaikhoandangnhapHome;


public class Manager {
	private static final Integer STAFF_PERMISSION = 1;
	private static final Integer MANAGER_PERMISSION = 2;
	private static final Integer SUPER_MANAGER_PERMISSION = 3;
	
	public ArrayList<Soyeulylich> getLowerPermission(Integer idcanbo){
		ArrayList<Soyeulylich> output = new ArrayList<Soyeulylich>();
		SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
		Soyeulylich soyeulylich =  soyeulylichHome.findById(idcanbo);
		if(soyeulylich != null){
			Taikhoandangnhap taikhoandangnhap = (Taikhoandangnhap)soyeulylich.getTaikhoandangnhaps().iterator().next();
			Integer currenPermission = taikhoandangnhap.getPermission();
			if(currenPermission == STAFF_PERMISSION){
				return null; //staff
			}else if(currenPermission == MANAGER_PERMISSION){
				Phongban phongban = soyeulylich.getPhongban();
				Set<Soyeulylich> listStaff = phongban.getSoyeulyliches();
				for (Soyeulylich staff : listStaff) {
					if(((Taikhoandangnhap)staff.getTaikhoandangnhaps().iterator().next()).getPermission() < currenPermission){
						output.add(staff);
					}
				}
				return output;
			}else if(currenPermission == SUPER_MANAGER_PERMISSION){
				Donviquanly donviquanly = soyeulylich.getDonviquanly();
				Set<Phongban> listPhongBan = donviquanly.getPhongbans();
				for (Phongban phongban : listPhongBan) {
					Set<Soyeulylich> listStaff = phongban.getSoyeulyliches();
					for (Soyeulylich staff : listStaff) {
						if(((Taikhoandangnhap)staff.getTaikhoandangnhaps().iterator().next()).getPermission() < currenPermission){
							output.add(staff);
						}
					}
				}
				return output;
			}
		}
		return null;
	}
	
	public void capNhatTTPB(Phongban phongban){
		PhongbanHome phongbanHome = new PhongbanHome();
		phongbanHome.attachDirty(phongban);
		phongbanHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public void capNhatHeSoLg(Hesoluong hesoluong){
		HesoluongHome hesoluongHome = new HesoluongHome();
		hesoluongHome.attachDirty(hesoluong);
		hesoluongHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public void capNhatKhenThuong(Khenthuong khenthuong){
		KhenthuongHome khenthuongHome = new KhenthuongHome();
		khenthuongHome.attachDirty(khenthuong);
		khenthuongHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public void capNhatKyLuat(Kyluat kyluat){
		KyluatHome kyluatHome = new KyluatHome();
		kyluatHome.getSessionFactory().getCurrentSession().flush();
	}
	
	
	
}
