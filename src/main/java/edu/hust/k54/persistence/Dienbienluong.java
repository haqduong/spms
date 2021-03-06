package edu.hust.k54.persistence;


import java.util.Date;

public class Dienbienluong implements java.io.Serializable {

	private Integer iddienbienluong;
	private Soyeulylich soyeulylich;
	private Hesoluong hesoluong;
	private Date tungay;
	private Date denngay;

	public Dienbienluong() {
	}

	public Dienbienluong(Soyeulylich soyeulylich, Hesoluong hesoluong) {
		this.soyeulylich = soyeulylich;
		this.hesoluong = hesoluong;
	}

	public Dienbienluong(Soyeulylich soyeulylich, Hesoluong hesoluong,
			Date tungay, Date denngay) {
		this.soyeulylich = soyeulylich;
		this.hesoluong = hesoluong;
		this.tungay = tungay;
		this.denngay = denngay;
	}

	public Integer getIddienbienluong() {
		return this.iddienbienluong;
	}

	public void setIddienbienluong(Integer iddienbienluong) {
		this.iddienbienluong = iddienbienluong;
	}

	public Soyeulylich getSoyeulylich() {
		return this.soyeulylich;
	}

	public void setSoyeulylich(Soyeulylich soyeulylich) {
		this.soyeulylich = soyeulylich;
	}

	public Hesoluong getHesoluong() {
		return this.hesoluong;
	}

	public void setHesoluong(Hesoluong hesoluong) {
		this.hesoluong = hesoluong;
	}

	public Date getTungay() {
		return this.tungay;
	}

	public void setTungay(Date tungay) {
		this.tungay = tungay;
	}

	public Date getDenngay() {
		return this.denngay;
	}

	public void setDenngay(Date denngay) {
		this.denngay = denngay;
	}

}
