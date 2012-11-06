package edu.hust.k54.controller;

public class Representative {

	private int idUser;
	private int idSoYeuLyLich;
	private String userName;
	private String passWord;
	private String email;
	private int laCB;
	private int soHieuCongChuc;
	
	public Representative() {
		// empty constructor
	}
	
	public Representative(int iduser, int idSYLL, String userName, String pass, String email, int laCB, int sohieuCC) {
		this.idUser = iduser;
		this.idSoYeuLyLich = idSYLL;
		this.userName = userName;
		this.passWord = pass;
		this.laCB = laCB;
		this.soHieuCongChuc = sohieuCC;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public int getIdSoYeuLyLich() {
		return idSoYeuLyLich;
	}

	public void setIdSoYeuLyLich(int idSoYeuLyLich) {
		this.idSoYeuLyLich = idSoYeuLyLich;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getLaCB() {
		return laCB;
	}

	public void setLaCB(int laCB) {
		this.laCB = laCB;
	}

	public int getSoHieuCongChuc() {
		return soHieuCongChuc;
	}

	public void setSoHieuCongChuc(int soHieuCongChuc) {
		this.soHieuCongChuc = soHieuCongChuc;
	}
	
}
