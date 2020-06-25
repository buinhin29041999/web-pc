package com.laptrinhjavaweb.model;

public class LienHeModel extends AbstractModel<LienHeModel> {
	private String name;
	private String moTa;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
}
