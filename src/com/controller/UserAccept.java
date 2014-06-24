package com.controller;

import com.dao.ApplicationDao;
import com.model.Application;
import com.opensymphony.xwork2.ActionSupport;

public class UserAccept extends ActionSupport {
	private int applyId;
	public String execute(){
		ApplicationDao ap=new ApplicationDao();
		ap.Accept(applyId);
		return SUCCESS;
	}
	public int getApplyId() {
		return applyId;
	}
	public void setApplyId(int applyId) {
		this.applyId = applyId;
	}
	
}
