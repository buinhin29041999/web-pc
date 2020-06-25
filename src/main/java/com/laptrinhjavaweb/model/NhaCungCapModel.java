package com.laptrinhjavaweb.model;

public class NhaCungCapModel extends AbstractModel<NhaCungCapModel>{
	private String thumbnail;
	private String name;
	private Integer numberPhone;
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getNumberPhone() {
		return numberPhone;
	}
	public void setNumberPhone(Integer numberPhone) {
		this.numberPhone = numberPhone;
	}
}
