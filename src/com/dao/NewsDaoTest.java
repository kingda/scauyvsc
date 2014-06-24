package com.dao;

import java.util.List;

import com.model.News;
import com.model.User;
import com.util.QueryResult;

public class NewsDaoTest {
	NewsDao newsDao=new NewsDao();
	//测试增加
	public void testSave_1() {
		for(int i=0;i<30;i++){
		News news = new News();
		news.setNewsWritter("祥鹏");
		newsDao.save(news);
		}
	}
	//测试查询
	public void testSearch(){
		QueryResult qr = newsDao.findAll(10, 10); // 第3页，每页10条
		System.out.println("总记录数：" + qr.getCount());
		for (News news : (List<News>) qr.getList()) {
			System.out.print(news.getNewsId());
			System.out.print(news.getNewsWritter());
		}
	}
	public static void main(String[] args) {
		NewsDaoTest n=new NewsDaoTest();
		n.testSearch();
	}

}
