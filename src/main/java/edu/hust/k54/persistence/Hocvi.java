package edu.hust.k54.persistence;


import java.util.HashSet;
import java.util.Set;

public class Hocvi implements java.io.Serializable {

	private Integer idhocvi;
	private String ten;
	private String mota;
	private Set dienbienhocvis = new HashSet(0);
	private Set soyeulyliches = new HashSet(0);

	public Hocvi() {
	}

	public Hocvi(String ten) {
		this.ten = ten;
	}

	public Hocvi(String ten, String mota, Set dienbienhocvis, Set soyeulyliches) {
		this.ten = ten;
		this.mota = mota;
		this.dienbienhocvis = dienbienhocvis;
		this.soyeulyliches = soyeulyliches;
	}

	public Integer getIdhocvi() {
		return this.idhocvi;
	}

	public void setIdhocvi(Integer idhocvi) {
		this.idhocvi = idhocvi;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getMota() {
		return this.mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public Set getDienbienhocvis() {
		return this.dienbienhocvis;
	}

	public void setDienbienhocvis(Set dienbienhocvis) {
		this.dienbienhocvis = dienbienhocvis;
	}

	public Set getSoyeulyliches() {
		return this.soyeulyliches;
	}

	public void setSoyeulyliches(Set soyeulyliches) {
		this.soyeulyliches = soyeulyliches;
	}

}
