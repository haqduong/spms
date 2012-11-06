package edu.hust.k54.persistence;

// Generated Nov 6, 2012 9:41:46 PM by Hibernate Tools 4.0.0

/**
 * Dienbienhocham generated by hbm2java
 */
public class Dienbienhocham implements java.io.Serializable {

	private Integer iddienbienhocham;
	private Soyeulylich soyeulylich;
	private Hocham hocham;
	private String chuyennganh;
	private Integer namphong;

	public Dienbienhocham() {
	}

	public Dienbienhocham(Soyeulylich soyeulylich, Hocham hocham) {
		this.soyeulylich = soyeulylich;
		this.hocham = hocham;
	}

	public Dienbienhocham(Soyeulylich soyeulylich, Hocham hocham,
			String chuyennganh, Integer namphong) {
		this.soyeulylich = soyeulylich;
		this.hocham = hocham;
		this.chuyennganh = chuyennganh;
		this.namphong = namphong;
	}

	public Integer getIddienbienhocham() {
		return this.iddienbienhocham;
	}

	public void setIddienbienhocham(Integer iddienbienhocham) {
		this.iddienbienhocham = iddienbienhocham;
	}

	public Soyeulylich getSoyeulylich() {
		return this.soyeulylich;
	}

	public void setSoyeulylich(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}

	public Hocham getHocham() {
		return this.hocham;
	}

	public void setHocham(Hocham hocham) {
		this.hocham = hocham;
	}

	public String getChuyennganh() {
		return this.chuyennganh;
	}

	public void setChuyennganh(String chuyennganh) {
		this.chuyennganh = chuyennganh;
	}

	public Integer getNamphong() {
		return this.namphong;
	}

	public void setNamphong(Integer namphong) {
		this.namphong = namphong;
	}

}
