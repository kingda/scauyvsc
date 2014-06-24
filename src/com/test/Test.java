package com.test;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.Activity;
import com.model.Admin;
import com.model.Application;
import com.model.News;
import com.model.Upload;
import com.model.User;
public class Test {
		public static void main(String[] args) {
		Configuration cfg = new Configuration();
		cfg.configure();
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		
		Transaction tx = s.beginTransaction();
		/*User user = new User();
		Activity activities=new Activity();
		News news=new News();
		Admin admin=new Admin();
		Application application=new Application();*/
		
		Upload up=new Upload();
		
		//admin.setAdminName("admin");
		//admin.setAdminPassword("admin");
		//s.save(admin);
		/*user.setUserNum("201230560231");
		s.save(user);
		activities.setActivityId(2);
		s.save(activities);
		application.setUserId(2);
		application.setActivityId(2);
		s.save(application);
		
		Application ap=(Application) s.load(Application.class, new Integer(2));
		ap.setIsOK(3);
		s.update(ap);*/
		tx.commit();
		s.close();
	}
 
}