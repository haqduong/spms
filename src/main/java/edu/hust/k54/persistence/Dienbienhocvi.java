package edu.hust.k54.persistence;

public class Dienbienhocvi implements java.io.Serializable {

	private Integer iddienbienhocvi;
	private Hocvi hocvi;
	private Soyeulylich soyeulylich;
	private Integer namphong;

	public Dienbienhocvi() {
	}

	public Dienbienhocvi(Hocvi hocvi, Soyeulylich soyeulylich) {
		this.hocvi = hocvi;
		this.soyeulylich = soyeulylich;
	}

	public Dienbienhocvi(Hocvi hocvi, Soyeulylich soyeulylich, Integer namphong) {
		this.hocvi = hocvi;
		this.soyeulylich = soyeulylich;
		this.namphong = namphong;
	}

	public Integer getIddienbienhocvi() {
		return this.iddienbienhocvi;
	}

	public void setIddienbienhocvi(Integer iddienbienhocvi) {
		this.iddienbienhocvi = iddienbienhocvi;
	}

	public Hocvi getHocvi() {
		return this.hocvi;
	}

	public void setHocvi(Hocvi hocvi) {
		this.hocvi = hocvi;
	}

	public Soyeulylich getSoyeulylich() {
		return this.soyeulylich;
	}

	public void setSoyeulylich(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}

	public Integer getNamphong() {
		return this.namphong;
	}

	public void setNamphong(Integer namphong) {
		this.namphong = namphong;
	}

}
