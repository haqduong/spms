package edu.hust.k54.persistence;

public class Lylichkhoahoc implements java.io.Serializable {

	private Integer idlylickhoahoc;
	private Soyeulylich soyeulylich;
	private String daotaohocvien;
	private String dinhhuongnc;


	public Lylichkhoahoc(Soyeulylich soyeulylich, 
			String daotaohocvien, String dinhhuongnc) {
		this.soyeulylich = soyeulylich;
		this.daotaohocvien = daotaohocvien;
		this.dinhhuongnc = dinhhuongnc;
	}


	public Integer getIdlylichkhoahoc() {
		return this.idlylickhoahoc;
	}

	public void setIdlylichkhoahoc(Integer idsoyeulylich) {
		this.idlylickhoahoc = idsoyeulylich;
	}

	public Soyeulylich getSoyeulylich() {
		return this.soyeulylich;
	}

	public void setSoyeulylich(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}


	public String getDaotaohocvien() {
		return this.daotaohocvien;
	}

	public void setDaotaohocvien(String daotaohocvien) {
		this.daotaohocvien = daotaohocvien;
	}

	public String getDinhhuongnc() {
		return this.dinhhuongnc;
	}

	public void setDinhhuongnc(String dinhhuongnc) {
		this.dinhhuongnc = dinhhuongnc;
	}


}
