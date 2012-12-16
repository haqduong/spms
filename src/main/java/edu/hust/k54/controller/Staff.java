package edu.hust.k54.controller;

import java.util.Set;

import javax.persistence.criteria.CriteriaBuilder.In;

import edu.hust.k54.persistence.Lylichkhoahoc;
import edu.hust.k54.persistence.LylichkhoahocHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.SoyeulylichHome;
import edu.hust.k54.persistence.Taikhoandangnhap;

public class Staff extends Guest {

	SoyeulylichHome soyeulylichHome = null;
	
	public Staff(){
		soyeulylichHome = new SoyeulylichHome();
	}
	
	public void suaSoYeuLiLich(Soyeulylich soyeulilich){
		soyeulylichHome.attachDirty(soyeulilich);
		soyeulylichHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public void suaLiLichKH(Lylichkhoahoc lylichkhoahoc){
		LylichkhoahocHome lylichkhoahocHome = new LylichkhoahocHome();
		lylichkhoahocHome.attachDirty(lylichkhoahoc);
		lylichkhoahocHome.getSessionFactory().getCurrentSession().flush();
	}
	
	public Soyeulylich xemTTCN(Taikhoandangnhap taikhoandangnhap){
		return taikhoandangnhap.getSoyeulylich();
	}
	
	public Set getKyLuat(Integer idcanbo){
		SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
		Soyeulylich canbo = soyeulylichHome.findById(idcanbo);
		return canbo.getKyluats();
	}
}
