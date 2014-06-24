package com.model;

import java.sql.Date;

public class Application {
	int ApplyId;		//申请主码
	String userId;			//id号
	int activityId;		//
	Date ApplyDate;		//申请日期
	String isOK;
	public int getApplyId() {
		return ApplyId;
	}
	public void setApplyId(int applyId) {
		ApplyId = applyId;
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getActivityId() {
		return activityId;
	}
	public void setActivityId(int actId) {
		this.activityId = actId;
	}
	public Date getApplyDate() {
		return ApplyDate;
	}
	public void setApplyDate(Date applyDate) {
		ApplyDate = applyDate;
	}
	public String getIsOK() {
		return isOK;
	}
	public void setIsOK(String isOK) {
		this.isOK = isOK;
	}

	
}
