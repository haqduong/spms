package edu.hust.k54.persistence;


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Soyeulylich implements java.io.Serializable {

	private Integer idsoyeulylich;
	private Capuy capuy;
	private Phongban phongban;
	private Danhhieu danhhieu;
	private Xuatthan xuatthan;
	private Hocham hocham;
	private Hocvi hocvi;
	private Chucvu chucvu;
	private Quocgia quocgia;
	private Tongiao tongiao;
	private Hesoluong hesoluong;
	private Dantoc dantoc;
	private Donviquanly donviquanly;
	private Giaoducphothong giaoducphothong;
	private Integer loaiCb;
	private Integer sohieucongchuc;
	private String chungminhnhandan;
	private String hoten;
	private String gioitinh;
	private String duongdananh;
	private String tenthuongdung;
	private Date ngaysinh;
	private String noisinh;
	private String quequan;
	private String noiohiennay;
	private String sodienthoai;
	private String ngayvaodangchinhthuc;
	private String tencntn1;
	private String namtn1;
	private String tencntn2;
	private String namtn2;
	private String tencntn3;
	private String namtn3;
	private Date ngaycapnhat;
	private String suckhoe;
	private String ngonngubiet;
	private Taikhoandangnhap taikhoandangnhaps;
	private Set quatrinhnghiencuus = new HashSet(0);
	private Set dienbienphucaps = new HashSet(0);
	private Set kyluats = new HashSet(0);
	private Set dienbienhocvis = new HashSet(0);
	private Set quatrinhdinuocngoais = new HashSet(0);
	private Set dienbienluongs = new HashSet(0);
	private Set baocaos = new HashSet(0);
	private Set khenthuongs = new HashSet(0);
	private Set dienbienhochams = new HashSet(0);
	private Lylichkhoahoc lylichkhoahoc;
	private Set sachxuatbans = new HashSet(0);

	public Soyeulylich() {
	}

	public Soyeulylich(Integer loaiCb) {
		this.loaiCb = loaiCb;
	}

	public Soyeulylich(Capuy capuy, Phongban phongban, Danhhieu danhhieu,
			Xuatthan xuatthan, Hocham hocham, Hocvi hocvi, Chucvu chucvu,
			Quocgia quocgia, Tongiao tongiao, Hesoluong hesoluong,
			Dantoc dantoc, Donviquanly donviquanly,
			Giaoducphothong giaoducphothong, Integer loaiCb,
			Integer sohieucongchuc, String chungminhnhandan, String hoten,
			String gioitinh, String duongdananh, String tenthuongdung,
			Date ngaysinh, String noisinh, String quequan, String noiohiennay,
			String sodienthoai, String ngayvaodangchinhthuc, String tencntn1,
			String namtn1, String tencntn2, String namtn2, String tencntn3,
			String namtn3, Date ngaycapnhat, String suckhoe,
			String ngonngubiet, Set quatrinhnghiencuus, Set dienbienphucaps,
			Set kyluats, Set dienbienhocvis, Set quatrinhdinuocngoais,
			Set dienbienluongs, Set baocaos, Set khenthuongs,
			Set dienbienhochams, Taikhoandangnhap taikhoandangnhaps,
			Lylichkhoahoc lylichkhoahoc, Set sachxuatbans) {
		this.capuy = capuy;
		this.phongban = phongban;
		this.danhhieu = danhhieu;
		this.xuatthan = xuatthan;
		this.hocham = hocham;
		this.hocvi = hocvi;
		this.chucvu = chucvu;
		this.quocgia = quocgia;
		this.tongiao = tongiao;
		this.hesoluong = hesoluong;
		this.dantoc = dantoc;
		this.donviquanly = donviquanly;
		this.giaoducphothong = giaoducphothong;
		this.loaiCb = loaiCb;
		this.sohieucongchuc = sohieucongchuc;
		this.chungminhnhandan = chungminhnhandan;
		this.hoten = hoten;
		this.gioitinh = gioitinh;
		this.duongdananh = duongdananh;
		this.tenthuongdung = tenthuongdung;
		this.ngaysinh = ngaysinh;
		this.noisinh = noisinh;
		this.quequan = quequan;
		this.noiohiennay = noiohiennay;
		this.sodienthoai = sodienthoai;
		this.ngayvaodangchinhthuc = ngayvaodangchinhthuc;
		this.tencntn1 = tencntn1;
		this.namtn1 = namtn1;
		this.tencntn2 = tencntn2;
		this.namtn2 = namtn2;
		this.tencntn3 = tencntn3;
		this.namtn3 = namtn3;
		this.ngaycapnhat = ngaycapnhat;
		this.suckhoe = suckhoe;
		this.ngonngubiet = ngonngubiet;
		this.quatrinhnghiencuus = quatrinhnghiencuus;
		this.dienbienphucaps = dienbienphucaps;
		this.kyluats = kyluats;
		this.dienbienhocvis = dienbienhocvis;
		this.quatrinhdinuocngoais = quatrinhdinuocngoais;
		this.dienbienluongs = dienbienluongs;
		this.baocaos = baocaos;
		this.khenthuongs = khenthuongs;
		this.dienbienhochams = dienbienhochams;
		this.taikhoandangnhaps = taikhoandangnhaps;
		this.lylichkhoahoc = lylichkhoahoc;
		this.sachxuatbans = sachxuatbans;
	}

	public Integer getIdsoyeulylich() {
		return this.idsoyeulylich;
	}

	public void setIdsoyeulylich(Integer idsoyeulylich) {
		this.idsoyeulylich = idsoyeulylich;
	}

	public Capuy getCapuy() {
		return this.capuy;
	}

	public void setCapuy(Capuy capuy) {
		this.capuy = capuy;
	}

	public Phongban getPhongban() {
		return this.phongban;
	}

	public void setPhongban(Phongban phongban) {
		this.phongban = phongban;
	}

	public Danhhieu getDanhhieu() {
		return this.danhhieu;
	}

	public void setDanhhieu(Danhhieu danhhieu) {
		this.danhhieu = danhhieu;
	}

	public Xuatthan getXuatthan() {
		return this.xuatthan;
	}

	public void setXuatthan(Xuatthan xuatthan) {
		this.xuatthan = xuatthan;
	}

	public Hocham getHocham() {
		return this.hocham;
	}

	public void setHocham(Hocham hocham) {
		this.hocham = hocham;
	}

	public Hocvi getHocvi() {
		return this.hocvi;
	}

	public void setHocvi(Hocvi hocvi) {
		this.hocvi = hocvi;
	}

	public Chucvu getChucvu() {
		return this.chucvu;
	}

	public void setChucvu(Chucvu chucvu) {
		this.chucvu = chucvu;
	}

	public Quocgia getQuocgia() {
		return this.quocgia;
	}

	public void setQuocgia(Quocgia quocgia) {
		this.quocgia = quocgia;
	}

	public Tongiao getTongiao() {
		return this.tongiao;
	}

	public void setTongiao(Tongiao tongiao) {
		this.tongiao = tongiao;
	}

	public Hesoluong getHesoluong() {
		return this.hesoluong;
	}

	public void setHesoluong(Hesoluong hesoluong) {
		this.hesoluong = hesoluong;
	}

	public Dantoc getDantoc() {
		return this.dantoc;
	}

	public void setDantoc(Dantoc dantoc) {
		this.dantoc = dantoc;
	}

	public Donviquanly getDonviquanly() {
		return this.donviquanly;
	}

	public void setDonviquanly(Donviquanly donviquanly) {
		this.donviquanly = donviquanly;
	}

	public Giaoducphothong getGiaoducphothong() {
		return this.giaoducphothong;
	}

	public void setGiaoducphothong(Giaoducphothong giaoducphothong) {
		this.giaoducphothong = giaoducphothong;
	}

	public Integer getLoaiCb() {
		return this.loaiCb;
	}

	public void setLoaiCb(Integer loaiCb) {
		this.loaiCb = loaiCb;
	}

	public Integer getSohieucongchuc() {
		return this.sohieucongchuc;
	}

	public void setSohieucongchuc(Integer sohieucongchuc) {
		this.sohieucongchuc = sohieucongchuc;
	}

	public String getChungminhnhandan() {
		return this.chungminhnhandan;
	}

	public void setChungminhnhandan(String chungminhnhandan) {
		this.chungminhnhandan = chungminhnhandan;
	}

	public String getHoten() {
		return this.hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

	public String getGioitinh() {
		return this.gioitinh;
	}

	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}

	public String getDuongdananh() {
		return this.duongdananh;
	}

	public void setDuongdananh(String duongdananh) {
		this.duongdananh = duongdananh;
	}

	public String getTenthuongdung() {
		return this.tenthuongdung;
	}

	public void setTenthuongdung(String tenthuongdung) {
		this.tenthuongdung = tenthuongdung;
	}

	public Date getNgaysinh() {
		return this.ngaysinh;
	}

	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public String getNoisinh() {
		return this.noisinh;
	}

	public void setNoisinh(String noisinh) {
		this.noisinh = noisinh;
	}

	public String getQuequan() {
		return this.quequan;
	}

	public void setQuequan(String quequan) {
		this.quequan = quequan;
	}

	public String getNoiohiennay() {
		return this.noiohiennay;
	}

	public void setNoiohiennay(String noiohiennay) {
		this.noiohiennay = noiohiennay;
	}

	public String getSodienthoai() {
		return this.sodienthoai;
	}

	public void setSodienthoai(String sodienthoai) {
		this.sodienthoai = sodienthoai;
	}

	public String getNgayvaodangchinhthuc() {
		return this.ngayvaodangchinhthuc;
	}

	public void setNgayvaodangchinhthuc(String ngayvaodangchinhthuc) {
		this.ngayvaodangchinhthuc = ngayvaodangchinhthuc;
	}

	public String getTencntn1() {
		return this.tencntn1;
	}

	public void setTencntn1(String tencntn1) {
		this.tencntn1 = tencntn1;
	}

	public String getNamtn1() {
		return this.namtn1;
	}

	public void setNamtn1(String namtn1) {
		this.namtn1 = namtn1;
	}

	public String getTencntn2() {
		return this.tencntn2;
	}

	public void setTencntn2(String tencntn2) {
		this.tencntn2 = tencntn2;
	}

	public String getNamtn2() {
		return this.namtn2;
	}

	public void setNamtn2(String namtn2) {
		this.namtn2 = namtn2;
	}

	public String getTencntn3() {
		return this.tencntn3;
	}

	public void setTencntn3(String tencntn3) {
		this.tencntn3 = tencntn3;
	}

	public String getNamtn3() {
		return this.namtn3;
	}

	public void setNamtn3(String namtn3) {
		this.namtn3 = namtn3;
	}

	public Date getNgaycapnhat() {
		return this.ngaycapnhat;
	}

	public void setNgaycapnhat(Date ngaycapnhat) {
		this.ngaycapnhat = ngaycapnhat;
	}

	public String getSuckhoe() {
		return this.suckhoe;
	}

	public void setSuckhoe(String suckhoe) {
		this.suckhoe = suckhoe;
	}

	public String getNgonngubiet() {
		return this.ngonngubiet;
	}

	public void setNgonngubiet(String ngonngubiet) {
		this.ngonngubiet = ngonngubiet;
	}

	public Set getQuatrinhnghiencuus() {
		return this.quatrinhnghiencuus;
	}

	public void setQuatrinhnghiencuus(Set quatrinhnghiencuus) {
		this.quatrinhnghiencuus = quatrinhnghiencuus;
	}

	public Set getDienbienphucaps() {
		return this.dienbienphucaps;
	}

	public void setDienbienphucaps(Set dienbienphucaps) {
		this.dienbienphucaps = dienbienphucaps;
	}

	public Set getKyluats() {
		return this.kyluats;
	}

	public void setKyluats(Set kyluats) {
		this.kyluats = kyluats;
	}

	public Set getDienbienhocvis() {
		return this.dienbienhocvis;
	}

	public void setDienbienhocvis(Set dienbienhocvis) {
		this.dienbienhocvis = dienbienhocvis;
	}

	public Set getQuatrinhdinuocngoais() {
		return this.quatrinhdinuocngoais;
	}

	public void setQuatrinhdinuocngoais(Set quatrinhdinuocngoais) {
		this.quatrinhdinuocngoais = quatrinhdinuocngoais;
	}

	public Set getDienbienluongs() {
		return this.dienbienluongs;
	}

	public void setDienbienluongs(Set dienbienluongs) {
		this.dienbienluongs = dienbienluongs;
	}

	public Set getBaocaos() {
		return this.baocaos;
	}

	public void setBaocaos(Set baocaos) {
		this.baocaos = baocaos;
	}

	public Set getKhenthuongs() {
		return this.khenthuongs;
	}

	public void setKhenthuongs(Set khenthuongs) {
		this.khenthuongs = khenthuongs;
	}

	public Set getDienbienhochams() {
		return this.dienbienhochams;
	}

	public void setDienbienhochams(Set dienbienhochams) {
		this.dienbienhochams = dienbienhochams;
	}

	public Taikhoandangnhap getTaikhoandangnhaps() {
		return this.taikhoandangnhaps;
	}

	public void setTaikhoandangnhaps(Taikhoandangnhap taikhoandangnhaps) {
		this.taikhoandangnhaps = taikhoandangnhaps;
	}

	public Lylichkhoahoc getLylichkhoahoc() {
		return this.lylichkhoahoc;
	}

	public void setLylichkhoahoc(Lylichkhoahoc lylichkhoahoc) {
		this.lylichkhoahoc = lylichkhoahoc;
	}

	public Set getSachxuatbans() {
		return this.sachxuatbans;
	}

	public void setSachxuatbans(Set sachxuatbans) {
		this.sachxuatbans = sachxuatbans;
	}

}
