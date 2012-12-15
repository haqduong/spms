package edu.hust.k54.controller;

import java.util.List;

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
}
