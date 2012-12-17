package edu.hust.k54.controller;

import java.util.List;
import java.util.Set;

import javax.persistence.criteria.CriteriaBuilder.In;

import edu.hust.k54.persistence.Lylichkhoahoc;
import edu.hust.k54.persistence.LylichkhoahocHome;
import edu.hust.k54.persistence.Soyeulylich;
import edu.hust.k54.persistence.SoyeulylichHome;
import edu.hust.k54.persistence.Taikhoandangnhap;

public class Staff extends Guest {

	SoyeulylichHome soyeulylichHome = null;

	public Staff() {
		soyeulylichHome = new SoyeulylichHome();
	}

	public boolean doiMatKhau(Taikhoandangnhap user, String pass, String newPass) {
		user.setPass(pass);
		List<Taikhoandangnhap> result = taikhoandangnhaphome.findByExample(user);
		if (result.size() == 0) {
			return false;
		} else {
			Taikhoandangnhap taikhoandangnhapTemp = result.get(0);
			taikhoandangnhapTemp.setPass(newPass);
			taikhoandangnhaphome.attachDirty(taikhoandangnhapTemp);
			taikhoandangnhaphome.getSessionFactory().getCurrentSession()
					.flush();
			return true;
		}
	}

	public Taikhoandangnhap doiEmail(Integer iduser, String newEmail) {
		Taikhoandangnhap result = taikhoandangnhaphome.findById(iduser);
		if (result == null) {
			return null;
		} else {
			result.setEmail(newEmail);
			taikhoandangnhaphome.attachDirty(result);
			taikhoandangnhaphome.getSessionFactory().getCurrentSession()
					.flush();
			return taikhoandangnhaphome.findById(iduser);
		}
	}

	public void suaSoYeuLiLich(Soyeulylich soyeulilich) {
		soyeulylichHome.attachDirty(soyeulilich);
		soyeulylichHome.getSessionFactory().getCurrentSession().flush();
	}

	public void suaLiLichKH(Lylichkhoahoc lylichkhoahoc) {
		LylichkhoahocHome lylichkhoahocHome = new LylichkhoahocHome();
		lylichkhoahocHome.attachDirty(lylichkhoahoc);
		lylichkhoahocHome.getSessionFactory().getCurrentSession().flush();
	}

	public Soyeulylich xemTTCN(Taikhoandangnhap taikhoandangnhap) {
		return taikhoandangnhap.getSoyeulylich();
	}

	public Set getKyLuat(Integer idcanbo) {
		SoyeulylichHome soyeulylichHome = new SoyeulylichHome();
		Soyeulylich canbo = soyeulylichHome.findById(idcanbo);
		return canbo.getKyluats();
	}
}
