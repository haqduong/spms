package edu.hust.k54.persistence;

import java.util.HashSet;
import java.util.Set;

public class Hesoluong implements java.io.Serializable {

	private Integer idhesoluong;
	private Ngachluong ngachluong;
	private Float bacluong;
	private Float heso;
	private Set dienbienluongs = new HashSet(0);
	private Set soyeulyliches = new HashSet(0);

	public Hesoluong() {
	}

	public Hesoluong(Ngachluong ngachluong, Float bacluong, Float heso,
			Set dienbienluongs, Set soyeulyliches) {
		this.ngachluong = ngachluong;
		this.bacluong = bacluong;
		this.heso = heso;
		this.dienbienluongs = dienbienluongs;
		this.soyeulyliches = soyeulyliches;
	}

	public Integer getIdhesoluong() {
		return this.idhesoluong;
	}

	public void setIdhesoluong(Integer idhesoluong) {
		this.idhesoluong = idhesoluong;
	}

	public Ngachluong getNgachluong() {
		return this.ngachluong;
	}

	public void setNgachluong(Ngachluong ngachluong) {
		this.ngachluong = ngachluong;
	}

	public Float getBacluong() {
		return this.bacluong;
	}

	public void setBacluong(Float bacluong) {
		this.bacluong = bacluong;
	}

	public Float getHeso() {
		return this.heso;
	}

	public void setHeso(Float heso) {
		this.heso = heso;
	}

	public Set getDienbienluongs() {
		return this.dienbienluongs;
	}

	public void setDienbienluongs(Set dienbienluongs) {
		this.dienbienluongs = dienbienluongs;
	}

	public Set getSoyeulyliches() {
		return this.soyeulyliches;
	}

	public void setSoyeulyliches(Set soyeulyliches) {
		this.soyeulyliches = soyeulyliches;
	}

}
