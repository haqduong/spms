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
import edu.hust.k54.persistence.Taikhoandangnhap;
import edu.hust.k54.persistence.TaikhoandangnhapHome;


public class Manager {
	
	public void capNhatTTDV(Donviquanly donviquanly){
		DonviquanlyHome donviquanlyHome = new DonviquanlyHome();
		donviquanlyHome.attachDirty(donviquanly);
	}
	
	
}
