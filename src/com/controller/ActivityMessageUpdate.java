package com.controller;

import java.sql.Date;

import com.dao.ActivityDao;
import com.model.Activity;
import com.opensymphony.xwork2.ActionSupport;

public class ActivityMessageUpdate extends ActionSupport {
	private int id;
	private String name;
	private int limit;
	private Date startDay;
	private Date overDay;
	public String execute(){
		ActivityDao ad=new ActivityDao();
		Activity activity=ad.getByArtId(id);
		activity.setActivityHeadLine(name);
		activity.setActivityMaxPersons(limit);
		activity.setActivityBeginDate(startDay);
		activity.setActivityEndDate(overDay);
		ad.update(activity);
		return SUCCESS;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public Date getStartDay() {
		return startDay;
	}
	public void setStartDay(Date startDay) {
		this.startDay = startDay;
	}
	public Date getOverDay() {
		return overDay;
	}
	public void setOverDay(Date overDay) {
		this.overDay = overDay;
	}

	
}
