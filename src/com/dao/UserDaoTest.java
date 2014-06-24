package com.dao;

import java.util.List;

import com.model.User;
import com.util.QueryResult;

public class UserDaoTest {
	private UserDao userDao = new UserDao();
	public void testSave_1() {
		User user = new User();
		user.setUserNum("2012a");
		user.setUserName("张三");
		// 保存
		userDao.save(user);
	}
	public void testGetByUserNum() {
		User user = userDao.getByUserNum("201230560231");
	}
	public void testUpdate() {
		// 从数据库获取一条存在的数据
		User user = userDao.getByUserNum("201230560231");
		user.setUserName("李四");
		// 更新
		userDao.update(user);
		System.out.println("更新："+user.getUserNum());
	}

	public void testeleteByUserNum() {
		userDao.deleteByUserNum("201230560231");
	}
	public void testSave_25() {
		for (int i = 1; i <= 25; i++) {
			User user = new User();
			user.setUserNum("test_" +i);
			user.setUserName("test_" +i);
			userDao.save(user); // 保存
		}
	}
	public void testFindAll() {
		List<User> list = userDao.findAll();
		for (User user : list) {
			System.out.print(user.getUserNum());
			System.out.println(user.getUserName());
		}
	}
	// 查询
	public void testFindAllIntInt() {
		// QueryResult qr = userDao.findAll(0, 10); // 第1页，每页10条
		// QueryResult qr = userDao.findAll(10, 10); // 第2页，每页10条
		QueryResult qr = userDao.findAll(20, 10); // 第3页，每页10条
		// 显示结果
		System.out.println("总记录数：" + qr.getCount());
		for (User user : (List<User>) qr.getList()) {
			System.out.print(user.getUserNum());
			System.out.println(user.getUserName());
		}
	}
	public static void main(String[] args) {
		UserDaoTest a=new UserDaoTest();
		a.testFindAllIntInt();
	}
}
