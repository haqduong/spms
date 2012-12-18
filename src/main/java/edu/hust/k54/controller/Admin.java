package edu.hust.k54.controller;

import java.util.List;

import edu.hust.k54.persistence.Chucvu;
import edu.hust.k54.persistence.ChucvuHome;
import edu.hust.k54.persistence.Hocham;
import edu.hust.k54.persistence.HochamHome;
import edu.hust.k54.persistence.Hocvi;
import edu.hust.k54.persistence.HocviHome;
import edu.hust.k54.persistence.Ngachluong;
import edu.hust.k54.persistence.NgachluongHome;
import edu.hust.k54.persistence.Nhatkyhethong;
import edu.hust.k54.persistence.NhatkyhethongHome;
import edu.hust.k54.persistence.Taikhoandangnhap;
import edu.hust.k54.persistence.TaikhoandangnhapHome;

public class Admin {

	public void phanQuyen(Taikhoandangnhap taikhoandangnhap){
		TaikhoandangnhapHome taikhoandangnhapHome = new TaikhoandangnhapHome();
		taikhoandangnhapHome.attachDirty(taikhoandangnhap);
		taikhoandangnhapHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public void taoTKCB(Taikhoandangnhap taikhoandangnhap){
		TaikhoandangnhapHome taikhoandangnhapHome = new TaikhoandangnhapHome();
		taikhoandangnhapHome.attachDirty(taikhoandangnhap);
		taikhoandangnhapHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public void xoaTKCB(Taikhoandangnhap taikhoandangnhap){
		TaikhoandangnhapHome taikhoandangnhapHome = new TaikhoandangnhapHome();
		taikhoandangnhapHome.delete(taikhoandangnhap);
		taikhoandangnhapHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public List xemNkHt(){
		NhatkyhethongHome nhatkyhethongHome = new NhatkyhethongHome();
		Nhatkyhethong nhatkyhethong = new Nhatkyhethong();
		List result = nhatkyhethongHome.findByExample(nhatkyhethong);
		return result;
	}
	
	public List xemNgachLuong(){
		NgachluongHome ngachluongHome = new NgachluongHome();
		Ngachluong ngachluong = new Ngachluong();
		List reList = ngachluongHome.findByExample(ngachluong);
		return reList;
	}
	
	public List xemChucvu(){
		ChucvuHome chucvuHome = new ChucvuHome();
		Chucvu chucvu = new Chucvu();
		List reList = chucvuHome.findByExample(chucvu);
		return reList;
	}
	
	public List xemHocham(){
		HochamHome hochamHome = new HochamHome();
		Hocham hocham = new Hocham();
		List reList = hochamHome.findByExample(hocham);
		return reList;
	}
	
	public List xemHocvi(){
		HocviHome hocviHome = new HocviHome();
		Hocvi hocvi = new Hocvi();
		List reList = hocviHome.findByExample(hocvi);
		return reList;
	}
	
	public List xemPhanquyen(){
		Taikhoandangnhap taikhoandangnhap = new Taikhoandangnhap();
		TaikhoandangnhapHome taikhoandangnhapHome = new TaikhoandangnhapHome();
		List reList = taikhoandangnhapHome.findByExample(taikhoandangnhap);
		return reList;
	}
	
	public void capnhatNgachluong(Ngachluong ngachluong){
		NgachluongHome ngachluongHome = new NgachluongHome();
		ngachluongHome.attachDirty(ngachluong);
		ngachluongHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public void capnhatChucvu(Chucvu chucvu){
		ChucvuHome chucvuHome = new ChucvuHome();
		chucvuHome.attachDirty(chucvu);
		chucvuHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public void capnhatHocham(Hocham hocham){
		HochamHome hochamHome = new HochamHome();
		hochamHome.attachDirty(hocham);
		hochamHome.getSessionFactory().getCurrentSession().flush();
	}
	public void capnhatHocham(Hocvi hocvi){
		HocviHome hocviHome = new HocviHome();
		hocviHome.attachDirty(hocvi);
		hocviHome.getSessionFactory().getCurrentSession().flush();
	}
	public void capnhatPhanQuyen(Integer idtaikhoan, Integer quyen){
		TaikhoandangnhapHome taikhoandangnhapHome = new TaikhoandangnhapHome();
		Taikhoandangnhap taikhoandangnhap = taikhoandangnhapHome.findById(idtaikhoan);
		taikhoandangnhap.setPermission(quyen);
		taikhoandangnhapHome.attachDirty(taikhoandangnhap);
		taikhoandangnhapHome.getSessionFactory().getCurrentSession().flush();
		
	}

}
