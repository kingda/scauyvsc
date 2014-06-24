package com.controller;

import com.dao.ActivityDao;
import com.dao.NewsDao;
import com.model.Activity;
import com.model.News;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeletePassage extends ActionSupport {
	private int artid;
	public String execute(){
	NewsDao a=new NewsDao();
	News art=a.getByNewsNum(artid);
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
