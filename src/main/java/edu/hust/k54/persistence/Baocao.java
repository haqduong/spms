package edu.hust.k54.persistence;

import java.util.Date;

public class Baocao implements java.io.Serializable {

	private char idbaocao;
	private Soyeulylich soyeulylich;
	private String tenbaocao;
	private Date ngaylap;
	private String noidung;

	public Baocao() {
	}

	public Baocao(char idbaocao, Soyeulylich soyeulylich, String tenbaocao,
			Date ngaylap) {
		this.idbaocao = idbaocao;
		this.soyeulylich = soyeulylich;
		this.tenbaocao = tenbaocao;
		this.ngaylap = ngaylap;
	}

	public Baocao(char idbaocao, Soyeulylich soyeulylich, String tenbaocao,
			Date ngaylap, String noidung) {
		this.idbaocao = idbaocao;
		this.soyeulylich = soyeulylich;
		this.tenbaocao = tenbaocao;
		this.ngaylap = ngaylap;
		this.noidung = noidung;
	}

	public char getIdbaocao() {
		return this.idbaocao;
	}

	public void setIdbaocao(char idbaocao) {
		this.idbaocao = idbaocao;
	}

	public Soyeulylich getSoyeulylich() {
		return this.soyeulylich;
	}

	public void setSoyeulylich(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}

	public String getTenbaocao() {
		return this.tenbaocao;
	}

	public void setTenbaocao(String tenbaocao) {
		this.tenbaocao = tenbaocao;
	}

	public Date getNgaylap() {
		return this.ngaylap;
	}

	public void setNgaylap(Date ngaylap) {
		this.ngaylap = ngaylap;
	}

	public String getNoidung() {
		return this.noidung;
	}

	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}

}
