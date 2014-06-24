package com.controller;

import java.util.Iterator;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.mapping.List;

import com.dao.UserDao;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.util.HibernateUtil;

public class LoginAction extends ActionSupport {
	 private String username="12";//接收表单的用户名
	 private String password="12";//接收表单的密码
	 private User user;
	public String execute(){
		UserDao userDao=new UserDao();
		user=userDao.getByUserNum(username);
		if(user!=null){
		if(user.getUserPassword().equals(password)){
			ActionContext actx = ActionContext.getContext();
			actx.getSession().put("userId",username);
			return SUCCESS;
		}else{
			ActionContext actx = ActionContext.getContext();
			actx.put("error", "密码错误！");
			return INPUT;
		}
		}else{
			ActionContext actx = ActionContext.getContext();
			actx.put("error", "该用户不存在！");
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
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public static void main(String[] args) throws Exception{
		System.out.println(new LoginAction().execute());
	}
}
