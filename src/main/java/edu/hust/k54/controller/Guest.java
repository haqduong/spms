package edu.hust.k54.controller;

import java.awt.dnd.DnDConstants;
import java.util.ArrayList;
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
	
	public boolean DangNhap(String username, String pass){
		Taikhoandangnhap taikhoandangnhap = new Taikhoandangnhap();
		taikhoandangnhap.setUsername(username);
		taikhoandangnhap.setPass(pass);
		List result = taikhoandangnhaphome.findByExample(taikhoandangnhap);
		if (result.size() == 0){
			return false;
		}
		else {
			return true;
		}
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
			return true;
		}
	}
	
	public Taikhoandangnhap XemTTTK(String username){
		Taikhoandangnhap taikhoandangnhap = new Taikhoandangnhap();
		taikhoandangnhap.setUsername(username);
		List result = taikhoandangnhaphome.findByExample(taikhoandangnhap);
		return (Taikhoandangnhap) result.get(0);
	}
	
	public List TimDVQL(String tenDV, String tenPB, String tenCB){
		DonviquanlyHome donviquanlyHome = new DonviquanlyHome();
		Donviquanly donviquanly = new Donviquanly();
		donviquanly.setTen(tenDV);
		List<Donviquanly> result = donviquanlyHome.findByExample(donviquanly);
		int limit = result.size();
		if (limit == 0) {
			return null;
		}
		else {
			for (int i = 0; i < limit; i++){
				boolean test = false;
				Donviquanly donviquanlyTemp = result.get(i);
				if (tenPB != null){
					test = true;
					Set phongbans = donviquanlyTemp.getPhongbans();
					for (Object phongban : phongbans){
						if (((Phongban) phongban).getTen().equals(tenPB)){
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
	
	public List TimCB(String hoten){
		SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
		Soyeulylich soyeulylich = new Soyeulylich();
		soyeulylich.setHoten(hoten);
		List result = soyeulylichHome.findByExample(soyeulylich);
		return result;
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
