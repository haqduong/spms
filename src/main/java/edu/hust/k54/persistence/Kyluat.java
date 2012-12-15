package edu.hust.k54.persistence;


import java.util.Date;

public class Kyluat implements java.io.Serializable {

	private Integer idkyluat;
	private Soyeulylich soyeulylich;
	private Muckyluat muckyluat;
	private Date thoigian;
	private String hinhthuc;

	public Kyluat() {
	}

	public Kyluat(Soyeulylich soyeulylich, Muckyluat muckyluat, Date thoigian,
			String hinhthuc) {
		this.soyeulylich = soyeulylich;
		this.muckyluat = muckyluat;
		this.thoigian = thoigian;
		this.hinhthuc = hinhthuc;
	}

	public Integer getIdkyluat() {
		return this.idkyluat;
	}

	public void setIdkyluat(Integer idkyluat) {
		this.idkyluat = idkyluat;
	}

	public Soyeulylich getSoyeulylich() {
		return this.soyeulylich;
	}

	public void setSoyeulylich(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}

	public Muckyluat getMuckyluat() {
		return this.muckyluat;
	}

	public void setMuckyluat(Muckyluat muckyluat) {
		this.muckyluat = muckyluat;
	}

	public Date getThoigian() {
		return this.thoigian;
	}

	public void setThoigian(Date thoigian) {
		this.thoigian = thoigian;
	}

	public String getHinhthuc() {
		return this.hinhthuc;
	}

	public void setHinhthuc(String hinhthuc) {
		this.hinhthuc = hinhthuc;
	}

}
