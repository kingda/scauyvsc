package com.controller;

import com.dao.UserDao;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
/*
 * @authot:庄祥鹏
 * 用户注册模块
 */
public class RegisterAction extends ActionSupport {
	private String userNum="111";
	private String userName="111";
	private String password="111";
	private User user;
	public String execute(){
		UserDao userDao=new UserDao();
		user=userDao.getByUserNum(userNum);
		if(user==null){
			user=new User();
			user.setUserNum(userNum);
			user.setUserName(userName);
			user.setUserPassword(password);
			userDao.save(user);
			ActionContext aa = ActionContext.getContext();
			aa.put("errorReg", "注册成功！");
			return SUCCESS;
		}else{
			ActionContext aa = ActionContext.getContext();
			aa.put("errorReg", "该用户已存在！");
			return INPUT;
		}
	}
	
	public String getUserNum() {
		return userNum;
	}
	public void setUserNum(String userNum) {
		this.userNum = userNum;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
		System.out.println(new RegisterAction().execute());
	}
}
