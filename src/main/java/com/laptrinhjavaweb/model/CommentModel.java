package com.laptrinhjavaweb.model;

public class CommentModel extends AbstractModel<CommentModel>  {
private Long userId;
private Long sanPhamId;
private String content;
public Long getUserId() {
	return userId;
}
public void setUserId(Long userId) {
	this.userId = userId;
}
public Long getSanPhamId() {
	return sanPhamId;
}
public void setSanPhamId(Long sanPhamId) {
	this.sanPhamId = sanPhamId;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
}
