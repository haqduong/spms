package edu.hust.k54.persistence;

// Generated Nov 6, 2012 9:41:46 PM by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;

/**
 * Danhhieu generated by hbm2java
 */
public class Danhhieu implements java.io.Serializable {

	private Integer iddanhhieu;
	private String ten;
	private Set soyeulyliches = new HashSet(0);

	public Danhhieu() {
	}

	public Danhhieu(String ten, Set soyeulyliches) {
		this.ten = ten;
		this.soyeulyliches = soyeulyliches;
	}

	public Integer getIddanhhieu() {
		return this.iddanhhieu;
	}

	public void setIddanhhieu(Integer iddanhhieu) {
		this.iddanhhieu = iddanhhieu;
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
