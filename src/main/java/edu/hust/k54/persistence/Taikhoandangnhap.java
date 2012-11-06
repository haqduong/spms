package edu.hust.k54.persistence;

// Generated Nov 6, 2012 9:41:46 PM by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;

/**
 * Taikhoandangnhap generated by hbm2java
 */
public class Taikhoandangnhap implements java.io.Serializable {

	private int iduser;
	private Soyeulylich soyeulylich;
	private String username;
	private String pass;
	private String email;
	private boolean permission;
	private Set nhatkyhethongs = new HashSet(0);

	public Taikhoandangnhap() {
	}

	public Taikhoandangnhap(int iduser, String username, String pass,
			String email, boolean permission) {
		this.iduser = iduser;
		this.username = username;
		this.pass = pass;
		this.email = email;
		this.permission = permission;
	}

	public Taikhoandangnhap(int iduser, Soyeulylich soyeulylich,
			String username, String pass, String email, boolean permission,
			Set nhatkyhethongs) {
		this.iduser = iduser;
		this.soyeulylich = soyeulylich;
		this.username = username;
		this.pass = pass;
		this.email = email;
		this.permission = permission;
		this.nhatkyhethongs = nhatkyhethongs;
	}

	public int getIduser() {
		return this.iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}

	public Soyeulylich getSoyeulylich() {
		return this.soyeulylich;
	}

	public void setSoyeulylich(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isPermission() {
		return this.permission;
	}

	public void setPermission(boolean permission) {
		this.permission = permission;
	}

	public Set getNhatkyhethongs() {
		return this.nhatkyhethongs;
	}

	public void setNhatkyhethongs(Set nhatkyhethongs) {
		this.nhatkyhethongs = nhatkyhethongs;
	}

}
