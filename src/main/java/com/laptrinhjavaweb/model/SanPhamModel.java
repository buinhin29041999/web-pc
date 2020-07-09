package com.laptrinhjavaweb.model;

public class SanPhamModel extends AbstractModel<SanPhamModel> {
	private String name;
	private String thumbnail;
	private String shortDescription;
	private String context;
	private Integer donGia;
	private Integer soLuong;
	private Long categoryId;
	private Long nhaCungCapId;
	private String categoryCode;


	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public Integer getDonGia() {
		return donGia;
	}

	public void setDonGia(Integer donGia) {
		this.donGia = donGia;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	public Long getNhaCungCapId() {
		return nhaCungCapId;
	}

	public void setNhaCungCapId(Long nhaCungCapId) {
		this.nhaCungCapId = nhaCungCapId;
	}

	

}
