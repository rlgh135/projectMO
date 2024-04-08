package com.twojo.model.dto;

public class LPostDTO {
	private long lpostnum;
	private String lpostcategory;
	private String userid;
	private String lposttitle;
	private String lpostcontents;
	private String lpostregdate;
	private int likecnt;
	private String lpostaddr;
	public String getLpostaddr() {
		return lpostaddr;
	}
	public void setLpostaddr(String lpostaddr) {
		this.lpostaddr = lpostaddr;
	}
	public long getLpostnum() {
		return lpostnum;
	}
	public void setLpostnum(long lpostnum) {
		this.lpostnum = lpostnum;
	}
	public String getLpostcategory() {
		return lpostcategory;
	}
	public void setLpostcategory(String lpostcategory) {
		this.lpostcategory = lpostcategory;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getLposttitle() {
		return lposttitle;
	}
	public void setLposttitle(String lposttitle) {
		this.lposttitle = lposttitle;
	}
	public String getLpostcontents() {
		return lpostcontents;
	}
	public void setLpostcontents(String lpostcontents) {
		this.lpostcontents = lpostcontents;
	}
	public String getLpostregdate() {
		return lpostregdate;
	}
	public void setLpostregdate(String lpostregdate) {
		this.lpostregdate = lpostregdate;
	}
	public int getLikecnt() {
		return likecnt;
	}
	public void setLikecnt(int likecnt) {
		this.likecnt = likecnt;
	}
}
