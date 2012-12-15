package edu.hust.k54.persistence;


import java.util.HashSet;
import java.util.Set;

public class Dantoc implements java.io.Serializable {

	private Integer iddantoc;
	private String ten;
	private Set soyeulyliches = new HashSet(0);

	public Dantoc() {
	}

	public Dantoc(String ten, Set soyeulyliches) {
		this.ten = ten;
		this.soyeulyliches = soyeulyliches;
	}

	public Integer getIddantoc() {
		return this.iddantoc;
	}

	public void setIddantoc(Integer iddantoc) {
		this.iddantoc = iddantoc;
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
