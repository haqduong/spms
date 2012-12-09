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
		List result = taikhoandangnhaphome.findByExample(taikhoandangnhap);
		if (result.size() == 0){
			return false;
		}
		else {
			taikhoandangnhap.setPass(newPass);
			taikhoandangnhaphome.attachDirty(taikhoandangnhap);
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
		List result = donviquanlyHome.findByExample(donviquanly);
		if (result.size() == 0) {
			return null;
		}
		else {
			for (Object object : result){
				boolean test = false;
				Donviquanly donviquanlyTemp = (Donviquanly) object;
				if (tenPB != null){
					Set phongbans = donviquanlyTemp.getPhongbans();
					for (Object phongban : phongbans){
						if (((Phongban) phongban).getTen().equals(tenPB)){
							test = true;
							break;
						}
					}
				}
				if (test == false){
					result.remove(object);
				}
				else {
					test = false;
					if (tenCB != null){
						Set canbos = donviquanlyTemp.getSoyeulyliches();
						for (Object canbo : canbos){
							if (((Soyeulylich) canbo).getHoten().equals(tenCB)){
								test = true;
								break;
							}
						}
						if (test == false) {
							result.remove(object);
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
		List result = phongbanHome.findByExample(phongban);
		if (result.size() == 0){
			return null;
		}
		else {
			for (Object object : result){
				boolean test = false;
				phongban = (Phongban) object;
				Set canbos = phongban.getSoyeulyliches();
				for (Object canbo : canbos){
					if (((Soyeulylich) canbo).getHoten().equals(tenCB)){
						test = true;
						break;
					}
				}
				if (test == false){
					result.remove(phongban);
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
	
	
	public List xemThongTinDonVi(){
		DonviquanlyHome donviquanlyHome = new DonviquanlyHome();
		Donviquanly donviquanly = new Donviquanly();
		return donviquanlyHome.findByExample(donviquanly);
	}
	
	public List xemDanhSachPhongBan(){
		PhongbanHome phongbanHome = new PhongbanHome();
		Phongban phongban = new Phongban();
		return phongbanHome.findByExample(phongban);
	}
}
