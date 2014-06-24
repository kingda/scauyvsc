package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.News;
import com.model.User;
import com.util.HibernateUtil;
import com.util.QueryResult;

public class NewsDao {
	//保存新闻
	public void save(News news) {
		Session session = HibernateUtil.currentSession();
		try {
			Transaction tx = session.beginTransaction(); // 开始事务
			session.save(news);
			tx.commit(); // 提交事务
		} catch (RuntimeException e) {
			session.getTransaction().rollback(); // 回滚事务
			throw e;
		} finally {
			HibernateUtil.closeSession(); // 关闭Session
		}
	}
	//删除新闻
	public void delete(int newId) {
		Session session = HibernateUtil.currentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Object news = session.get(News.class, newId); // 要先获取到这个对象
			session.delete(news); // 删除的是实体对象
			tx.commit();
		} catch (RuntimeException e) {
			tx.rollback();
			throw e;
		} finally {
			HibernateUtil.closeSession();
		}
	}
	//查询
		public News getByNewsNum(int Num) {
			Session session = HibernateUtil.currentSession();
			Transaction tx = null;
			try {
				tx = session.beginTransaction();
				News user = (News) session.get(News.class, Num); // 操作
				tx.commit();
				return user;
			} catch (RuntimeException e) {
				tx.rollback();
				throw e;
			} finally {
				HibernateUtil.closeSession();
			}
		}
	//查询新闻
	@SuppressWarnings("unchecked")
	public QueryResult findAll(int firstResult, int maxResults) {
		Session session = HibernateUtil.currentSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			// 方式二：方法链
			List<News> list = session.createQuery("FROM News")
					.setFirstResult(firstResult).setMaxResults(maxResults).list();
			// 查询总记录数
			Long count = (Long) session.createQuery(
					"SELECT COUNT(*) FROM News").uniqueResult();
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
}
