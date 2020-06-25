package com.laptrinhjavaweb.model;

public class HoaDonModel extends AbstractModel<HoaDonModel> {
	private String name;
	private String hoTen;
	private String diaChi;
	private String email;
	private String noiDung;
	private Integer soDienThoai;
	private Long userId;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNoiDung() {
		return noiDung;
	}

	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}

	public Integer getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(Integer soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

}
