package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.model.Activity;
import com.util.HibernateUtil;
import com.util.QueryResult;
@SuppressWarnings("unchecked")
public class ActivityDao {
	//查询表单
	public QueryResult findAll(int firstResult, int maxResults) {
		Session session = HibernateUtil.currentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			// 方式二：方法链
			List<Activity> list = session.createQuery("FROM Activity")
					.setFirstResult(firstResult).setMaxResults(maxResults).list();
			// 查询总记录数
			Long count = (Long) session.createQuery(
					"SELECT COUNT(*) FROM Activity").uniqueResult();
			tx.commit();
			//  返回结果
			return new QueryResult(count.intValue(), list);
		} catch (RuntimeException e) {
			tx.rollback();
			throw e;
		} finally {
			HibernateUtil.closeSession();
		}
	}
	//===========删除============
	public void delete(int actid) {
		Session session = HibernateUtil.currentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Object art = session.get(Activity.class, actid); // 要先获取到这个对象
			session.delete(art); // 删除的是实体对象
			tx.commit();
		} catch (RuntimeException e) {
			tx.rollback();
			throw e;
		} finally {
			HibernateUtil.closeSession();
		}
	}
	//-=====================查询=============================
		public Activity getByArtId(int artid) {
			Session session = HibernateUtil.currentSession();
			Transaction tx = null;
			try {
				tx = session.beginTransaction();
				Activity art = (Activity) session.get(Activity.class, artid); // 操作
				tx.commit();
				return art;
			} catch (RuntimeException e) {
				tx.rollback();
				throw e;
			} finally {
				HibernateUtil.closeSession();
			}
		}
		//更新
		public void update(Activity act) {
			Session session = HibernateUtil.currentSession();
			Transaction tx = null;
			try {
				tx = session.beginTransaction();
				session.update(act); // 操作
				tx.commit();
			} catch (RuntimeException e) {
				tx.rollback();
				throw e;
			} finally {
				HibernateUtil.closeSession();
			}
		}
		//通过activity名称得到activityId
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

}
