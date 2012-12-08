package edu.hust.k54.controller;

import edu.hust.k54.persistence.Hesoluong;
import edu.hust.k54.persistence.HesoluongHome;
import edu.hust.k54.persistence.Khenthuong;
import edu.hust.k54.persistence.KhenthuongHome;
import edu.hust.k54.persistence.Kyluat;
import edu.hust.k54.persistence.KyluatHome;
import edu.hust.k54.persistence.Lylichkhoahoc;
import edu.hust.k54.persistence.LylichkhoahocHome;
import edu.hust.k54.persistence.Phongban;
import edu.hust.k54.persistence.PhongbanHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.SoyeulylichHome;

public class ManagerDep {

	public void capNhatKhenThuowng(Khenthuong khenthuong){
		KhenthuongHome khenthuongHome = new KhenthuongHome();
		khenthuongHome.attachDirty(khenthuong);
	}
	
	public void capNhatKyLuat(Kyluat kyluat){
		KyluatHome kyluatHome = new KyluatHome();
		kyluatHome.attachDirty(kyluat);
	}
	
//	public void capNhatBaoHiem()
//	public void capNhatHuuTri()
	
	public void capNhatHSLuong(Hesoluong hesoluong){
		HesoluongHome hesoluongHome = new HesoluongHome();
		hesoluongHome.attachDirty(hesoluong);
	}
	
	public void capNhatSYLL(Soyeulylich soyeulylich){
		SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
		soyeulylichHome.attachDirty(soyeulylich);
	}
	
	public void capNhatLLKH(Soyeulylich soyeulylich){
		SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
		soyeulylichHome.attachDirty(soyeulylich);
	}
	
	public void capNhatLLKH(Lylichkhoahoc lylichkhoahoc){
		LylichkhoahocHome lylichkhoahocHome = new LylichkhoahocHome();
		lylichkhoahocHome.attachDirty(lylichkhoahoc);
	}
	
	public void capNhatPB(Phongban phongban){
		PhongbanHome phongbanHome = new PhongbanHome();
		phongbanHome.attachDirty(phongban);
	}
}
