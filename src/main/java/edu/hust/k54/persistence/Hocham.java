package edu.hust.k54.persistence;


import java.util.HashSet;
import java.util.Set;

public class Hocham implements java.io.Serializable {

	private Integer idhocham;
	private String ten;
	private String mota;
	private Set soyeulyliches = new HashSet(0);
	private Set dienbienhochams = new HashSet(0);

	public Hocham() {
	}

	public Hocham(String ten) {
		this.ten = ten;
	}

	public Hocham(String ten, String mota, Set soyeulyliches,
			Set dienbienhochams) {
		this.ten = ten;
		this.mota = mota;
		this.soyeulyliches = soyeulyliches;
		this.dienbienhochams = dienbienhochams;
	}

	public Integer getIdhocham() {
		return this.idhocham;
	}

	public void setIdhocham(Integer idhocham) {
		this.idhocham = idhocham;
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

	public Set getSoyeulyliches() {
		return this.soyeulyliches;
	}

	public void setSoyeulyliches(Set soyeulyliches) {
		this.soyeulyliches = soyeulyliches;
	}

	public Set getDienbienhochams() {
		return this.dienbienhochams;
	}

	public void setDienbienhochams(Set dienbienhochams) {
		this.dienbienhochams = dienbienhochams;
	}

}
