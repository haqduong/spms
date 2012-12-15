package edu.hust.k54.persistence;


import java.util.Date;

public class Nhatkyhethong implements java.io.Serializable {

	private Integer idnhatky;
	private Taikhoandangnhap taikhoandangnhap;
	private Date thoigiantruycapgannhat;
	private Integer diachiip;
	private String mota;

	public Nhatkyhethong() {
	}

	public Nhatkyhethong(Taikhoandangnhap taikhoandangnhap,
			Date thoigiantruycapgannhat, Integer diachiip, String mota) {
		this.taikhoandangnhap = taikhoandangnhap;
		this.thoigiantruycapgannhat = thoigiantruycapgannhat;
		this.diachiip = diachiip;
		this.mota = mota;
	}

	public Integer getIdnhatky() {
		return this.idnhatky;
	}

	public void setIdnhatky(Integer idnhatky) {
		this.idnhatky = idnhatky;
	}

	public Taikhoandangnhap getTaikhoandangnhap() {
		return this.taikhoandangnhap;
	}

	public void setTaikhoandangnhap(Taikhoandangnhap taikhoandangnhap) {
		this.taikhoandangnhap = taikhoandangnhap;
	}

	public Date getThoigiantruycapgannhat() {
		return this.thoigiantruycapgannhat;
	}

	public void setThoigiantruycapgannhat(Date thoigiantruycapgannhat) {
		this.thoigiantruycapgannhat = thoigiantruycapgannhat;
	}

	public Integer getDiachiip() {
		return this.diachiip;
	}

	public void setDiachiip(Integer diachiip) {
		this.diachiip = diachiip;
	}

	public String getMota() {
		return this.mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

}
