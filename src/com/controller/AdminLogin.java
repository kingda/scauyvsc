package com.controller;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.Admin;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.util.HibernateUtil;

public class AdminLogin extends ActionSupport {
	 private String username;//接收表单的用户名
	  private String password;//接收表单的密码
	  private Admin admin;
	public String execute(){
		Session sess=HibernateUtil.currentSession();
		Transaction tx=sess.beginTransaction();
		admin=(Admin) sess.get(Admin.class,username);
		if(admin!=null){	
		if(admin.getAdminPassword().equals(password)){
				HibernateUtil.closeSession();
				ActionContext actx = ActionContext.getContext();
				actx.getSession().put("admin",username);
				return SUCCESS;
			}else{
				ActionContext actx = ActionContext.getContext();
				actx.put("errorAdm", "密码错误！");
				HibernateUtil.closeSession();
				return INPUT;
			}
		}else{
			ActionContext actx = ActionContext.getContext();
			actx.put("errorAdm", "该账号不存在！");
			HibernateUtil.closeSession();
			return INPUT;
		}
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public static void main(String[] args) throws Exception{
		AdminLogin a=new AdminLogin();
	}
}
