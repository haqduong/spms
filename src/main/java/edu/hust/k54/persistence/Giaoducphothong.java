package edu.hust.k54.persistence;

// Generated Nov 6, 2012 9:41:46 PM by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;

/**
 * Giaoducphothong generated by hbm2java
 */
public class Giaoducphothong implements java.io.Serializable {

	private Integer idgiaoducphothong;
	private String ten;
	private Set soyeulyliches = new HashSet(0);

	public Giaoducphothong() {
	}

	public Giaoducphothong(String ten, Set soyeulyliches) {
		this.ten = ten;
		this.soyeulyliches = soyeulyliches;
	}

	public Integer getIdgiaoducphothong() {
		return this.idgiaoducphothong;
	}

	public void setIdgiaoducphothong(Integer idgiaoducphothong) {
		this.idgiaoducphothong = idgiaoducphothong;
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
