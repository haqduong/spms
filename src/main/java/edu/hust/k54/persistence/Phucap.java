package edu.hust.k54.persistence;

// Generated Nov 6, 2012 9:41:46 PM by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;

/**
 * Phucap generated by hbm2java
 */
public class Phucap implements java.io.Serializable {

	private Integer idphucap;
	private String ten;
	private String mota;
	private Set dienbienphucaps = new HashSet(0);

	public Phucap() {
	}

	public Phucap(String ten, String mota, Set dienbienphucaps) {
		this.ten = ten;
		this.mota = mota;
		this.dienbienphucaps = dienbienphucaps;
	}

	public Integer getIdphucap() {
		return this.idphucap;
	}

	public void setIdphucap(Integer idphucap) {
		this.idphucap = idphucap;
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

	public Set getDienbienphucaps() {
		return this.dienbienphucaps;
	}

	public void setDienbienphucaps(Set dienbienphucaps) {
		this.dienbienphucaps = dienbienphucaps;
	}

}
