package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class employee {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int sid;
	private String sname;
	private String semail;
	private String sdepartment;
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public String getSdepartment() {
		return sdepartment;
	}
	public void setSdepartment(String sdepartment) {
		this.sdepartment = sdepartment;
	}
	@Override
	public String toString() {
		return "employee [sid=" + sid + ", sname=" + sname + ", semail=" + semail + ", sdepartment=" + sdepartment
				+ "]";
	}
	

}
