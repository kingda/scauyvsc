package com.controller;

import com.dao.UploadDao;
import com.opensymphony.xwork2.ActionSupport;

public class UploadDelete extends ActionSupport {
	private int id;
	public String execute(){
		UploadDao upd=new UploadDao();
		upd.deleteById(id);
		return SUCCESS;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
