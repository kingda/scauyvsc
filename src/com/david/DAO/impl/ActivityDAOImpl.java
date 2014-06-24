package com.david.DAO.impl;

import com.model.Activity;

import com.david.DAO.ActivityDAO;
import com.david.DAO.proxy.ActivityDAOProxy;
//��ʵ����ʵ����
public class ActivityDAOImpl implements ActivityDAO{
	@Override
	public void saveActivity(Activity activity) {
		// TODO Auto-generated method stub
		ActivityDAO activityDAOProxy = new ActivityDAOProxy();
		activityDAOProxy.saveActivity(activity);
	}
	
}
