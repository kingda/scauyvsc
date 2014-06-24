package com.controller;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.Admin;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.util.HibernateUtil;

public class AdminChangePassword extends  ActionSupport {
	private String username;
	private String oldpassword;
	private String newpassword1;
	private String newpassword2;
	private Admin admin;
	public String execute(){
		if((!newpassword1.equals(newpassword2))||(newpassword2.equals(null))||(newpassword1.equals(null))){
			ActionContext actx = ActionContext.getContext();
			actx.put("errorAdmCha", "两次密码输入不正确！");
			return INPUT;
		}else{
		Session sess=HibernateUtil.currentSession();
		Transaction tx=sess.beginTransaction();
		admin=(Admin) sess.get(Admin.class,username);
		if(admin!=null){	
			if(admin.getAdminPassword().equals(oldpassword)){
					admin.setAdminPassword(newpassword1);
					tx.commit();
					ActionContext actx = ActionContext.getContext();
					actx.put("errorAdmCha", "更改密码成功！");
					HibernateUtil.closeSession();
					return SUCCESS;
				}else{
					ActionContext actx = ActionContext.getContext();
					actx.put("errorAdmCha", "密码错误！");
					HibernateUtil.closeSession();
					return INPUT;
				}
			}else{
				ActionContext actx = ActionContext.getContext();
				actx.put("errorAdmCha", "该账号不存在！");
				HibernateUtil.closeSession();
				return INPUT;
			}
		
		}
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getOldpassword() {
		return oldpassword;
	}
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	public String getNewpassword1() {
		return newpassword1;
	}
	public void setNewpassword1(String newpassword1) {
		this.newpassword1 = newpassword1;
	}
	public String getNewpassword2() {
		return newpassword2;
	}
	public void setNewpassword2(String newpassword2) {
		this.newpassword2 = newpassword2;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
}
