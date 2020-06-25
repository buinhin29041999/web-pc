package com.laptrinhjavaweb.model;

public class MenuModel extends AbstractModel<MenuModel> {
	private String name;
	private String viTriMenu;
	private String lienKet;
	private String thuocMenu;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getViTriMenu() {
		return viTriMenu;
	}

	public void setViTriMenu(String viTriMenu) {
		this.viTriMenu = viTriMenu;
	}

	public String getLienKet() {
		return lienKet;
	}

	public void setLienKet(String lienKet) {
		this.lienKet = lienKet;
	}

	public String getThuocMenu() {
		return thuocMenu;
	}

	public void setThuocMenu(String thuocMenu) {
		this.thuocMenu = thuocMenu;
	}
}
