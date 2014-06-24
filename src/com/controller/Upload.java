package com.controller;

import java.sql.Date;

import com.dao.UploadDao;
import com.opensymphony.xwork2.ActionSupport;

public class Upload extends ActionSupport {
	private String path;
	private String name;
	private Date time=new Date(System.currentTimeMillis());
	private String discript;
	com.model.Upload upload=new com.model.Upload();
	public String execute(){
		UploadDao ud=new UploadDao();
		upload.setPath(path);
		upload.setName(name);
		upload.setTime(time);
		upload.setDiscript(discript);
		ud.save(upload);
		return SUCCESS;
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
	public com.model.Upload getUpload() {
		return upload;
	}
	public void setUpload(com.model.Upload upload) {
		this.upload = upload;
	}
	
}
