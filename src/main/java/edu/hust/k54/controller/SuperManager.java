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
import edu.hust.k54.persistence.Lylichkhoahoc;
import edu.hust.k54.persistence.LylichkhoahocHome;
import edu.hust.k54.persistence.Phongban;
import edu.hust.k54.persistence.PhongbanHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.SoyeulylichHome;

public class SuperManager {
	
	public void capNhatDV(Donviquanly donviquanly) {
		DonviquanlyHome donviquanlyHome = new DonviquanlyHome();
		donviquanlyHome.attachDirty(donviquanly);
		donviquanlyHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public void capNhatPB(Phongban phongban){
		PhongbanHome phongbanHome = new PhongbanHome();
		phongbanHome.attachDirty(phongban);
		phongbanHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public void xoaPhongBan(Phongban phongban){
		PhongbanHome phongbanHome = new PhongbanHome();
		phongbanHome.delete(phongban);
		phongbanHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public List xemBaoCaoPB(Phongban phongban){
		PhongbanHome phongbanHome = new PhongbanHome();
		List<Baocao> output = new ArrayList<Baocao>();
		Set<Soyeulylich> result = phongban.getSoyeulyliches();
		for (Soyeulylich res : result){
			output.addAll(res.getBaocaos());
		}
		return output;
	}
	
	public List xemBaoCaoCN(Soyeulylich soyeulylich){
		return (List) soyeulylich.getBaocaos();
	}
	
	
}
