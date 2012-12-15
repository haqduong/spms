package edu.hust.k54.persistence;


import java.util.HashSet;
import java.util.Set;

public class Phongban implements java.io.Serializable {

	private Integer idphongban;
	private Donviquanly donviquanly;
	private String dienthoai;
	private String fax;
	private String thongtinchung;
	private String ten;
	private String hinhanh;
	private Set soyeulyliches = new HashSet(0);

	public Phongban() {
	}

	public Phongban(Donviquanly donviquanly) {
		this.donviquanly = donviquanly;
	}

	public Phongban(Donviquanly donviquanly, String dienthoai, String fax,
			String thongtinchung, String ten, String hinhanh, Set soyeulyliches) {
		this.donviquanly = donviquanly;
		this.dienthoai = dienthoai;
		this.fax = fax;
		this.thongtinchung = thongtinchung;
		this.ten = ten;
		this.hinhanh = hinhanh;
		this.soyeulyliches = soyeulyliches;
	}

	public Integer getIdphongban() {
		return this.idphongban;
	}

	public void setIdphongban(Integer idphongban) {
		this.idphongban = idphongban;
	}

	public Donviquanly getDonviquanly() {
		return this.donviquanly;
	}

	public void setDonviquanly(Donviquanly donviquanly) {
		this.donviquanly = donviquanly;
	}

	public String getDienthoai() {
		return this.dienthoai;
	}

	public void setDienthoai(String dienthoai) {
		this.dienthoai = dienthoai;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getThongtinchung() {
		return this.thongtinchung;
	}

	public void setThongtinchung(String thongtinchung) {
		this.thongtinchung = thongtinchung;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getHinhanh() {
		return this.hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

	public Set getSoyeulyliches() {
		return this.soyeulyliches;
	}

	public void setSoyeulyliches(Set soyeulyliches) {
		this.soyeulyliches = soyeulyliches;
	}

}
