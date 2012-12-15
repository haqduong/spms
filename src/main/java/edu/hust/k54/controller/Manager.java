package edu.hust.k54.controller;
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
import edu.hust.k54.persistence.Taikhoandangnhap;
import edu.hust.k54.persistence.TaikhoandangnhapHome;


public class Manager {
	
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
