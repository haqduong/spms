package edu.hust.k54.persistence;

import java.util.HashSet;
import java.util.Set;

public class Chucvu implements java.io.Serializable {

	private Integer idchucvu;
	private String ten;
	private Set soyeulyliches = new HashSet(0);

	public Chucvu() {
	}

	public Chucvu(String ten, Set soyeulyliches) {
		this.ten = ten;
		this.soyeulyliches = soyeulyliches;
	}

	public Integer getIdchucvu() {
		return this.idchucvu;
	}

	public void setIdchucvu(Integer idchucvu) {
		this.idchucvu = idchucvu;
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
