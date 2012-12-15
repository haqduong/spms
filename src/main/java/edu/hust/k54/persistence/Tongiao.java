package edu.hust.k54.persistence;


import java.util.HashSet;
import java.util.Set;

public class Tongiao implements java.io.Serializable {

	private Integer idtongiao;
	private String ten;
	private Set soyeulyliches = new HashSet(0);

	public Tongiao() {
	}

	public Tongiao(String ten, Set soyeulyliches) {
		this.ten = ten;
		this.soyeulyliches = soyeulyliches;
	}

	public Integer getIdtongiao() {
		return this.idtongiao;
	}

	public void setIdtongiao(Integer idtongiao) {
		this.idtongiao = idtongiao;
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
