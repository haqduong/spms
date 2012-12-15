package edu.hust.k54.persistence;


import java.util.HashSet;
import java.util.Set;

public class Capuy implements java.io.Serializable {

	private Integer idcapuy;
	private String ten;
	private Set soyeulyliches = new HashSet(0);

	public Capuy() {
	}

	public Capuy(String ten, Set soyeulyliches) {
		this.ten = ten;
		this.soyeulyliches = soyeulyliches;
	}

	public Integer getIdcapuy() {
		return this.idcapuy;
	}

	public void setIdcapuy(Integer idcapuy) {
		this.idcapuy = idcapuy;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public Set getSoyeulyliches() {
		return this.soyeulyliches;
	}

	public void setSoyeulyliches(Set soyeulyliches) {
		this.soyeulyliches = soyeulyliches;
	}

}
