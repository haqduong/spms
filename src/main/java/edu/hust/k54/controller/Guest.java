package edu.hust.k54.controller;

import java.util.List;
import java.util.Set;

import edu.hust.k54.persistence.Donviquanly;
import edu.hust.k54.persistence.DonviquanlyHome;
import edu.hust.k54.persistence.Phongban;
import edu.hust.k54.persistence.PhongbanHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.SoyeulylichHome;
import edu.hust.k54.persistence.Taikhoandangnhap;
import edu.hust.k54.persistence.TaikhoandangnhapHome;

public class Guest {

	TaikhoandangnhapHome taikhoandangnhaphome = null;
	
	public Guest(){
		taikhoandangnhaphome = new TaikhoandangnhapHome();
	}
	
	public boolean DangKy(String username, String pass, String email){
		Taikhoandangnhap taikhoandangnhap = new Taikhoandangnhap();
		taikhoandangnhap.setEmail(email);
		List result = taikhoandangnhaphome.findByExample(taikhoandangnhap);
		if (result.size() == 0){
			taikhoandangnhap.setUsername(username);
			taikhoandangnhap.setPass(pass);
			taikhoandangnhap.setPermission(0);
			taikhoandangnhaphome.attachDirty(taikhoandangnhap);
			return true;
		}
		return false;
	}
	
	public boolean doiMatKhau(String username, String pass, String newPass){
		Taikhoandangnhap taikhoandangnhap = new Taikhoandangnhap();
		taikhoandangnhap.setUsername(username);
		taikhoandangnhap.setPass(pass);
		List<Taikhoandangnhap> result = taikhoandangnhaphome.findByExample(taikhoandangnhap);
		if (result.size() == 0){
			return false;
		}
		else {
			Taikhoandangnhap taikhoandangnhapTemp = result.get(0);
			taikhoandangnhapTemp.setPass(newPass);
			taikhoandangnhaphome.attachDirty(taikhoandangnhapTemp);
			taikhoandangnhaphome.getSessionFactory().getCurrentSession().flush();
			return true;
		}
	}
	
	public Taikhoandangnhap XemTTTK(String username){
		Taikhoandangnhap taikhoandangnhap = new Taikhoandangnhap();
		taikhoandangnhap.setUsername(username);
		List result = taikhoandangnhaphome.findByExample(taikhoandangnhap);
		return (Taikhoandangnhap) result.get(0);
	}
	
	public List TimDVQL(Integer idDV, Integer idPB, String tenCB){
		DonviquanlyHome donviquanlyHome = new DonviquanlyHome();
		Donviquanly donviquanly = new Donviquanly();
		donviquanly.setIddonviquanly(idDV);
		List<Donviquanly> result = donviquanlyHome.findByExample(donviquanly);
		int limit = result.size();
		if (limit == 0) {
			return null;
		}
		else {
			for (int i = 0; i < limit; i++){
				boolean test = false;
				Donviquanly donviquanlyTemp = result.get(i);
				if (idPB != 0){
					test = true;
					Set phongbans = donviquanlyTemp.getPhongbans();
					for (Object phongban : phongbans){
						if (((Phongban) phongban).getIdphongban() == (idPB)){
							test = false;
							break;
						}
					}
					if (test == true){
						result.remove(donviquanlyTemp);
						i--;
						limit--;
					}
				}
				if (test == false) {
					if (tenCB != null){
						Set canbos = donviquanlyTemp.getSoyeulyliches();
						for (Object canbo : canbos){
							if (((Soyeulylich) canbo).getHoten().equals(tenCB)){
								test = true;
								break;
							}
						}
						if (test == false) {
							result.remove(donviquanlyTemp);
							i--;
							limit--;
						}
					}
				}
				
			}
			return result;
		}
	}
	
	public Donviquanly timDonVi(Integer idDonVi){
		DonviquanlyHome donviquanlyHome = new DonviquanlyHome();
		return donviquanlyHome.findById(idDonVi);
	}
	
	public Set timPhongBan(Integer idDonVi){
		DonviquanlyHome donviquanlyHome = new DonviquanlyHome();
		Donviquanly donviquanly = new Donviquanly();
		donviquanly.setIddonviquanly(idDonVi);
		return ((Donviquanly)donviquanlyHome.findByExample(donviquanly).get(0)).getPhongbans();
	}
	
	public List TimPB(String tenPB, String tenCB) {
		PhongbanHome phongbanHome = new PhongbanHome();
		Phongban phongban = new Phongban();
		phongban.setTen(tenPB);
		List<Phongban> result = phongbanHome.findByExample(phongban);
		int limit = result.size();
		if (limit == 0){
			return null;
		}
		else {
			for (int i = 0; i < limit; i++){
				boolean test = false;
				Phongban phongbanTemp = result.get(i);
				Set canbos = phongban.getSoyeulyliches();
				if (tenCB != null){
					for (Object canbo : canbos){
						if (((Soyeulylich) canbo).getHoten().equals(tenCB)){
							test = true;
							break;
						}
					}
					if (test == false){
						result.remove(phongban);
						i--;
						limit--;
					}
				}
			}
			return result;
		}
	}
	
	public List TimCB(int maDV, int maPB, String tenCB, int loaiCB) {
		SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
		Soyeulylich soyeulylich = new Soyeulylich();
		soyeulylich.setHoten(tenCB);
		if (loaiCB != 0) {
			soyeulylich.setLoaiCb(loaiCB - 1);
		}
		List<Soyeulylich> result = soyeulylichHome.findByExample(soyeulylich);
		int limit = result.size();
		System.out.println(limit);
		if (limit == 0) {
			return null;
		} else {
			for (int i = 0; i < limit; i++) {
				boolean test = false;
				Soyeulylich soyeulylichTemp = result.get(i);
				if (maPB != 0) {
					test = true;
					if (soyeulylichTemp.getPhongban().getIdphongban() == maPB) {
						test = false;
					}
					if (test == true) {
						result.remove(soyeulylichTemp);
						i--;
						limit--;
					}
				}
				if (test == false) {
					if (maDV != 0) {
						if (soyeulylichTemp.getDonviquanly().getIddonviquanly() == maDV) {
							test = true;
						}
						if (test == false) {
							result.remove(soyeulylichTemp);
							i--;
							limit--;
						}
					}
				}

			}
			System.out.println(limit);
			return result;
		}
	}
	public Soyeulylich TimCB(Integer idcanbo){
		SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
		return soyeulylichHome.findById(idcanbo);
	}
	
	public List timPhanLoaiCB(int loaiCB){
		SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
		Soyeulylich soyeulylich = new Soyeulylich();
		soyeulylich.setLoaiCb(loaiCB);
		List result = soyeulylichHome.findByExample(soyeulylich);
		return result;
	}
	
	
	public List xemThongTinDonVi(String tenDV){
		DonviquanlyHome donviquanlyHome = new DonviquanlyHome();
		Donviquanly donviquanly = new Donviquanly();
		donviquanly.setTen(tenDV);
		return donviquanlyHome.findByExample(donviquanly);
	}
	
	public List xemDanhSachPhongBan(){
		PhongbanHome phongbanHome = new PhongbanHome();
		Phongban phongban = new Phongban();
		return phongbanHome.findByExample(phongban);
	}
}
