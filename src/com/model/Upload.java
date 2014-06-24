package com.model;

import java.sql.Date;

public class Upload {
	private int id;
	private String path;
	private String name;
	private Date time;
	private String discript;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getDiscript() {
		return discript;
	}
	public void setDiscript(String discript) {
		this.discript = discript;
	}
	
}
