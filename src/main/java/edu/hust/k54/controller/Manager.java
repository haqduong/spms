package edu.hust.k54.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import edu.hust.k54.persistence.Baocao;
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

	public List <Baocao> getLowerPermission(Integer idcanbo) {
		List<Baocao> output = new ArrayList<Baocao>();
		SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
		Soyeulylich soyeulylich = soyeulylichHome.findById(idcanbo);
		if (soyeulylich != null) {
			Taikhoandangnhap taikhoandangnhap = (Taikhoandangnhap) soyeulylich
					.getTaikhoandangnhaps();
			Integer currenPermission = taikhoandangnhap.getPermission();
			if (currenPermission == STAFF_PERMISSION) {
				return null; // staff
			} else if (currenPermission == MANAGER_PERMISSION) {
				Phongban phongban = soyeulylich.getPhongban();
				Set<Soyeulylich> listStaff = phongban.getSoyeulyliches();
				for (Soyeulylich staff : listStaff) {
					output.addAll(staff.getBaocaos());
				}
				return output;
			} else if (currenPermission == SUPER_MANAGER_PERMISSION) {
				DonviquanlyHome donviquanlyHome = new DonviquanlyHome();
				Donviquanly donviquanly = soyeulylich.getDonviquanly();
				donviquanlyHome.attachDirty(donviquanly);
				Set<Phongban> listPhongBan = donviquanly.getPhongbans();
				System.out.println("pb" + listPhongBan.size());
				for (Phongban phongban : listPhongBan) {
					Set<Soyeulylich> listStaff = phongban.getSoyeulyliches();
					for (Soyeulylich staff : listStaff) {
						output.addAll(staff.getBaocaos());
						System.out.println(output.size());
						
						}
					}
				}
				return output;
			}
		return null;
	}

	public void capNhatTTPB(Phongban phongban) {
		PhongbanHome phongbanHome = new PhongbanHome();
		phongbanHome.attachDirty(phongban);
		phongbanHome.getSessionFactory().getCurrentSession().flush();
	}

	public void capNhatHeSoLg(Hesoluong hesoluong) {
		HesoluongHome hesoluongHome = new HesoluongHome();
		hesoluongHome.attachDirty(hesoluong);
		hesoluongHome.getSessionFactory().getCurrentSession().flush();
	}

	public void capNhatKhenThuong(Khenthuong khenthuong) {
		KhenthuongHome khenthuongHome = new KhenthuongHome();
		khenthuongHome.attachDirty(khenthuong);
		khenthuongHome.getSessionFactory().getCurrentSession().flush();
	}

	public void capNhatKyLuat(Kyluat kyluat) {
		KyluatHome kyluatHome = new KyluatHome();
		kyluatHome.getSessionFactory().getCurrentSession().flush();
	}

}
