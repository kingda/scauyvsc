package com.controller;

import com.dao.ActivityDao;
import com.model.Activity;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteArt extends ActionSupport {
	private int artid;
	public String execute(){
	ActivityDao a=new ActivityDao();
	Activity art=a.getByArtId(artid);
	if(art!=null){
		a.delete(artid);
		ActionContext actx = ActionContext.getContext();
		actx.put("artDel", "成功删除！");
		}else{
			ActionContext actx = ActionContext.getContext();
			actx.put("artDel", "不存在该文章！");
		}
		return SUCCESS;
}
	public int getArtid() {
		return artid;
	}
	public void setArtid(int artid) {
		this.artid = artid;
	}

	
}
