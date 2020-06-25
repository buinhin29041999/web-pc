package com.laptrinhjavaweb.model;

public class UserModel extends AbstractModel<UserModel> {

	private String userName;
	private String fullName;
	private String passWord;
	private Integer status;
	private Long roleId;
	private String avatar;
	private String email;
	private String address;
	private Integer numberPhone;
	private VaiTroModel vaiTroModel =new VaiTroModel();
	public VaiTroModel getVaiTroModel() {
		return vaiTroModel;
	}

	public void setVaiTroModel(VaiTroModel vaiTroModel) {
		this.vaiTroModel = vaiTroModel;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getNumberPhone() {
		return numberPhone;
	}

	public void setNumberPhone(Integer numberPhone) {
		this.numberPhone = numberPhone;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

}
