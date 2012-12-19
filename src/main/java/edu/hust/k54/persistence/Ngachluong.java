package edu.hust.k54.persistence;


import java.util.HashSet;
import java.util.Set;

public class Ngachluong implements java.io.Serializable {

	private Integer idngachluong;
	private String mangach;
	private String ten;
	private Set hesoluongs = new HashSet(0);

	public Ngachluong() {
	}

	public Ngachluong(String mangach) {
		this.mangach = mangach;
	}

	public Ngachluong(String mangach, String ten, Set hesoluongs) {
		this.mangach = mangach;
		this.ten = ten;
		this.hesoluongs = hesoluongs;
	}

	public Integer getIdngachluong() {
		return this.idngachluong;
	}

	public void setIdngachluong(Integer idngachluong) {
		this.idngachluong = idngachluong;
	}

	public String getMangach() {
		return this.mangach;
	}

	public void setMangach(String mangach) {
		this.mangach = mangach;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public Set getHesoluongs() {
		return this.hesoluongs;
	}

	public void setHesoluongs(Set hesoluongs) {
		this.hesoluongs = hesoluongs;
	}

}
