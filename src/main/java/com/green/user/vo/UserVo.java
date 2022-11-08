package com.green.user.vo;

public class UserVo {
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_cate;
	private int univ_idx;
	private String univ_name;
	
	//Constructor
	public UserVo() {}
	public UserVo(String user_id, String user_pw, String user_name, String user_cate, int univ_idx, String univ_name) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_cate = user_cate;
		this.univ_idx = univ_idx;
		this.univ_name = univ_name;
	}
	
	public String getUniv_name() {
		return univ_name;
	}
	public void setUniv_name(String univ_name) {
		this.univ_name = univ_name;
	}
	//Getter & Setter
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_cate() {
		return user_cate;
	}
	public void setUser_cate(String user_cate) {
		this.user_cate = user_cate;
	}
	public int getUniv_idx() {
		return univ_idx;
	}
	public void setUniv_idx(int univ_idx) {
		this.univ_idx = univ_idx;
	}
	
	//toString
	@Override
	public String toString() {
		return "UserVo [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_cate="
				+ user_cate + ", univ_idx=" + univ_idx + ", univ_name=" + univ_name + "]";
	}
	
	

}
