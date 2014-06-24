package com.dao;

import java.util.List;

import com.model.Activity;
import com.model.User;
import com.util.QueryResult;

public class ActivityDaoTest {
	public static void main(String[] args) {
		ActivityDao aDao=new ActivityDao();
		
		QueryResult qr=aDao.findAll(0, 100);
		for (Activity act : (List<Activity>) qr.getList()) {
			System.out.print(act.getActivityHeadLine());
			System.out.println(act.getActivityDec());
		}
		}
}
