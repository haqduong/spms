package edu.hust.k54.persistence;


import java.util.Date;

public class Quatrinhdinuocngoai implements java.io.Serializable {

	private Integer idquatrinhdinuocngoai;
	private Soyeulylich soyeulylich;
	private Quocgia quocgia;
	private Date tungay;
	private Date denngay;
	private String mucdich;

	public Quatrinhdinuocngoai() {
	}

	public Quatrinhdinuocngoai(Soyeulylich soyeulylich, Quocgia quocgia) {
		this.soyeulylich = soyeulylich;
		this.quocgia = quocgia;
	}

	public Quatrinhdinuocngoai(Soyeulylich soyeulylich, Quocgia quocgia,
			Date tungay, Date denngay, String mucdich) {
		this.soyeulylich = soyeulylich;
		this.quocgia = quocgia;
		this.tungay = tungay;
		this.denngay = denngay;
		this.mucdich = mucdich;
	}

	public Integer getIdquatrinhdinuocngoai() {
		return this.idquatrinhdinuocngoai;
	}

	public void setIdquatrinhdinuocngoai(Integer idquatrinhdinuocngoai) {
		this.idquatrinhdinuocngoai = idquatrinhdinuocngoai;
	}

	public Soyeulylich getSoyeulylich() {
		return this.soyeulylich;
	}

	public void setSoyeulylich(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}

	public Quocgia getQuocgia() {
		return this.quocgia;
	}

	public void setQuocgia(Quocgia quocgia) {
		this.quocgia = quocgia;
	}

	public Date getTungay() {
		return this.tungay;
	}

	public void setTungay(Date tungay) {
		this.tungay = tungay;
	}

	public Date getDenngay() {
		return this.denngay;
	}

	public void setDenngay(Date denngay) {
		this.denngay = denngay;
	}

	public String getMucdich() {
		return this.mucdich;
	}

	public void setMucdich(String mucdich) {
		this.mucdich = mucdich;
	}

}
