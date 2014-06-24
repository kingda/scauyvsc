package com.david.DAO.proxy;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.model.Activity;
import com.util.HibernateUtil;

public class ActivityGet {
	List<Activity> list = null;
	Session session = HibernateUtil.currentSession();
	String hql = null;
	Query query = null;
	@SuppressWarnings("unchecked")
	public List<Activity> getActivity(String ActivitySortId)
	{
	    hql  = "from activities where activities.activitySortId=:ActivitySortId";
		try{			 
		    query = session.createQuery(hql);
			list = query.list();
		}catch(Exception e){
			System.out.println("ActivityGet error!!");
			System.out.println(e);
		}finally{
			session.close();
		}
		return list;
	}
	@SuppressWarnings("unchecked")
	public List<Activity> getActivity()
	{
		session = HibernateUtil.currentSession();
		hql = "from activities order by activities.activityId desc";
		try{
			query = session.createQuery(hql);
			list = query.list();
		}catch(Exception e){
			System.out.println("getActivity error!!");
			System.out.println(e);
		}finally{
			session.close();
			if(list == null)
				System.out.println("getActivity : list is null !!");
		}
		return list;
	}
}
