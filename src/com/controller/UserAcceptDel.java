package com.controller;

import com.dao.ApplicationDao;
import com.model.Application;
import com.opensymphony.xwork2.ActionSupport;

	public class UserAcceptDel extends ActionSupport {
		private int applyId='1';
		public String execute(){
			ApplicationDao ap=new ApplicationDao();
			ap.deleteByAppId(applyId);
			return SUCCESS;
		}
		public int getApplyId() {
			return applyId;
		}
		public void setApplyId(int applyId) {
			this.applyId = applyId;
		}
		
}
