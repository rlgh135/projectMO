package com.twojo.model.dto;

public class UserDTO {
	private String userid;
	private String userpw;
	private String username;
	private String useraddr;
	private String addrdetail;
	private String userhobby;
	private String gender;
	private int userpoint;
	private int warningcnt;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUseraddr() {
		return useraddr;
	}
	public void setUseraddr(String useraddr) {
		this.useraddr = useraddr;
	}
	public String getUserdetail() {
		return addrdetail;
	}
	public void setAddrdetail(String addrdetail) {
		this.addrdetail = addrdetail;
	}
	public String getUserhobby() {
		return userhobby;
	}
	public void setUserhobby(String userhobby) {
		this.userhobby = userhobby;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getUserpoint() {
		return userpoint;
	}
	public void setUserpoint(int userpoint) {
		this.userpoint = userpoint;
	}
	public int getWarningcnt() {
		return warningcnt;
	}
	public void setWarningcnt(int warningcnt) {
		this.warningcnt = warningcnt;
	}
}
