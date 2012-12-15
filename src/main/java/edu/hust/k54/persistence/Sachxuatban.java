package edu.hust.k54.persistence;


public class Sachxuatban implements java.io.Serializable {

	private Integer idsachxuatban;
	private Soyeulylich soyeulylich;
	private String ten;
	private Integer namxuatban;
	private Integer sotrang;
	private String theloai;
	private String coquanxuatban;

	public Sachxuatban() {
	}

	public Sachxuatban(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}

	public Sachxuatban(Soyeulylich soyeulylich, String ten, Integer namxuatban,
			Integer sotrang, String theloai, String coquanxuatban) {
		this.soyeulylich = soyeulylich;
		this.ten = ten;
		this.namxuatban = namxuatban;
		this.sotrang = sotrang;
		this.theloai = theloai;
		this.coquanxuatban = coquanxuatban;
	}

	public Integer getIdsachxuatban() {
		return this.idsachxuatban;
	}

	public void setIdsachxuatban(Integer idsachxuatban) {
		this.idsachxuatban = idsachxuatban;
	}

	public Soyeulylich getSoyeulylich() {
		return this.soyeulylich;
	}

	public void setSoyeulylich(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public Integer getNamxuatban() {
		return this.namxuatban;
	}

	public void setNamxuatban(Integer namxuatban) {
		this.namxuatban = namxuatban;
	}

	public Integer getSotrang() {
		return this.sotrang;
	}

	public void setSotrang(Integer sotrang) {
		this.sotrang = sotrang;
	}

	public String getTheloai() {
		return this.theloai;
	}

	public void setTheloai(String theloai) {
		this.theloai = theloai;
	}

	public String getCoquanxuatban() {
		return this.coquanxuatban;
	}

	public void setCoquanxuatban(String coquanxuatban) {
		this.coquanxuatban = coquanxuatban;
	}

}
