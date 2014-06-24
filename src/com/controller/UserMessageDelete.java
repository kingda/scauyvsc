package com.controller;

import com.dao.UserDao;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserMessageDelete extends ActionSupport {
	private String usernum;
	private User user;
	public String execute(){
		UserDao userDao=new UserDao();
		user=userDao.getByUserNum(usernum);
		if(user!=null){
		userDao.deleteByUserNum(usernum);
		System.out.println("================成功删除删除");
		ActionContext actx = ActionContext.getContext();
		actx.put("userDel", "成功删除！");
		}else{
			ActionContext actx = ActionContext.getContext();
			actx.put("userDel", "不存在该用户！");
		}
		return SUCCESS;
	}
	public String getUsernum() {
		return usernum;
	}
	public void setUsernum(String usernum) {
		this.usernum = usernum;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
