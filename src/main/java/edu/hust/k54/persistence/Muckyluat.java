package edu.hust.k54.persistence;


import java.util.HashSet;
import java.util.Set;

public class Muckyluat implements java.io.Serializable {

	private Integer idmuckyluat;
	private String noidung;
	private Set kyluats = new HashSet(0);

	public Muckyluat() {
	}

	public Muckyluat(String noidung) {
		this.noidung = noidung;
	}

	public Muckyluat(String noidung, Set kyluats) {
		this.noidung = noidung;
		this.kyluats = kyluats;
	}

	public Integer getIdmuckyluat() {
		return this.idmuckyluat;
	}

	public void setIdmuckyluat(Integer idmuckyluat) {
		this.idmuckyluat = idmuckyluat;
	}

	public String getNoidung() {
		return this.noidung;
	}

	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}

	public Set getKyluats() {
		return this.kyluats;
	}

	public void setKyluats(Set kyluats) {
		this.kyluats = kyluats;
	}

}
