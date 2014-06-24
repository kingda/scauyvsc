package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.model.Activity;
import com.model.Application;
import com.util.HibernateUtil;
public class ApplicationDao {
	
	//查询
	public Application getByAppId(int appid) {
		Session session = HibernateUtil.currentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Application appli = (Application) session.get(Application.class, appid); // 操作
			tx.commit();
			return appli;
		} catch (RuntimeException e) {
			tx.rollback();
			throw e;
		} finally {
			HibernateUtil.closeSession();
		}
	}
	//查询其它东西
	//更新
		public void update(Application appli) {
			Session session = HibernateUtil.currentSession();
			Transaction tx = null;
			try {
				tx = session.beginTransaction();
				session.update(appli); // 操作
				tx.commit();
			} catch (RuntimeException e) {
				tx.rollback();
				throw e;
			} finally {
				HibernateUtil.closeSession();
			}
		}
		//删除
		public void deleteByAppId(int appid){
			Session session = HibernateUtil.currentSession();
			Transaction tx = null;
			try {
				tx = session.beginTransaction();
				Object appli = session.get(Application.class, appid); // 要先获取到这个对象
				session.delete(appli); // 删除的是实体对象
				tx.commit();
			} catch (RuntimeException e) {
				tx.rollback();
				throw e;
			} finally {
				HibernateUtil.closeSession();
			}
		}
		//报名
		public void Accept(int appid){
			Application appli=this.getByAppId(appid);
			appli.setIsOK("已录取");
			this.update(appli);
		}
		//通过activity名称得到activityId
				public int getActivtiyId(String activityHeadLine)
				{
					Session session = HibernateUtil.currentSession();
					List<Activity> list = null;
					Transaction tx = null;
					System.out.println("com.dao.ActivityDao getActivityId's headline: " +  activityHeadLine);
					try {
						tx = session.beginTransaction();
						Criteria crit = session.createCriteria(Activity.class);
						crit.add(Restrictions.eq("activityHeadLine", activityHeadLine));
						list = crit.list();
						tx.commit();
					} catch (RuntimeException e) {
						tx.rollback();
						throw e;
					} finally {
						HibernateUtil.closeSession();
					}
					 
					return list.get(0).getActivityId();
				}

		
		public void saveApp(Application app) {
			// TODO Auto-generated method stub
			Session session = HibernateUtil.currentSession();
			Transaction tx = null;
			try {
				tx = session.beginTransaction();
				 session.save(app);
				tx.commit();
			} catch (RuntimeException e) {
				tx.rollback();
				throw e;
			} finally {
				HibernateUtil.closeSession();
			}
		}
}
