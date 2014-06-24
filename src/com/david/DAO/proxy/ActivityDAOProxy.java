package com.david.DAO.proxy;

import org.hibernate.Transaction;

import com.david.DAO.ActivityDAO;
import com.model.Activity;
import com.util.HibernateUtil;

//��������ʵ����
public class ActivityDAOProxy implements ActivityDAO{

	@Override
	public void saveActivity(Activity activity) {
		// TODO Auto-generated method stub
		org.hibernate.Session session = HibernateUtil.currentSession();
		Transaction tx = session.beginTransaction();
		try{
			session.save(activity);
			tx.commit();
			System.out.println("ActionDAOProxy--commit successfully!!!");
			System.out.println("activity's headline: " + activity.getActivityHeadLine());
		}catch(Exception ex){
			if(null != tx){
				tx.rollback();
				System.out.println("transaction's rollback!!!");
			}
			System.out.println(ex);
		}finally{
			HibernateUtil.closeSession();
			
		}
	}
 
}
