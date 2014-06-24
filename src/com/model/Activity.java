package com.model;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class Activity extends ActionSupport {
	/**
	 * 
	 */
	private Integer activityId;
	private String activityImg;
	private Integer activityMaxPersons;
	private Date activityBeginDate;
	private Date activityEndDate;
	private String activityPSFile;
	
	private String activityHeadLine;
	private String activityDec; 
	
	public Integer getActivityId() {
		return activityId;
	}
	public void setActivityId(Integer activityId) {
		this.activityId = activityId;
	}
	public String getActivityImg() {
		return activityImg;
	}
	public void setActivityImg(String activityImg) {
		this.activityImg = activityImg;
	}
	public Integer getActivityMaxPersons() {
		return activityMaxPersons;
	}
	public void setActivityMaxPersons(Integer activityMaxPersons) {
		this.activityMaxPersons = activityMaxPersons;
	}
	public Date getActivityBeginDate() {
		return activityBeginDate;
	}
	public void setActivityBeginDate(Date activityBeginDate) {
		this.activityBeginDate = activityBeginDate;
	}
	public Date getActivityEndDate() {
		return activityEndDate;
	}
	public void setActivityEndDate(Date activityEndDate) {
		this.activityEndDate = activityEndDate;
	}
	public String getActivityPSFile() {
		return activityPSFile;
	}
	public void setActivityPSFile(String activityPSFile) {
		this.activityPSFile = activityPSFile;
	}
	
	
	public String getActivityHeadLine() {
		return activityHeadLine;
	}
	public void setActivityHeadLine(String activityHeadLine) {
		this.activityHeadLine = activityHeadLine;
	}
	public String getActivityDec() {
		return activityDec;
	}
	public void setActivityDec(String activityDec) {
		this.activityDec = activityDec;
	}
}
