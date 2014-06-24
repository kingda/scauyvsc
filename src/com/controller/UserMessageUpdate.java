package com.controller;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dao.UserDao;
import com.model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.util.HibernateUtil;
public class UserMessageUpdate extends ActionSupport {
	private String usernum;
	private String userName;/*名字 */
	private String userPassword;/*密码 */
	private String userMail;/*密码找回邮箱 */
	private String userQuestion;/*密码重置问题 */
	private String userSex; /*性别 */
	private String userHeight;/*身高*/
	private String userGrade;/* 年级*/
	private String userMajor;/* 专业*/
	private String userPoliticsSta;/* 政治面貌*/
	private String userPhoneNumber;/*11位的长号 */
	private String userShortNumber;/*短号 */
	private String userDormitoryArea;/*宿舍区 */
	private String userDeclaration;/*个人简介 */
	private User user;
	public String execute(){
		UserDao userDao=new UserDao();
		user=userDao.getByUserNum(usernum);
		if(user!=null){
			user.setUserName(userName);
			user.setUserPassword(userPassword);
			user.setUserMail(userMail);
			user.setUserQuestion(userQuestion);
			user.setUserSex(userSex);
			user.setUserHeight(userHeight);
			user.setUserGrade(userGrade);
			user.setUserMajor(userMajor);
			user.setUserPoliticsSta(userPoliticsSta);
			user.setUserPhoneNumber(userPhoneNumber);
			user.setUserShortNumber(userShortNumber);
			user.setUserDormitoryArea(userDormitoryArea);
			user.setUserDeclaration(userDeclaration);
			userDao.update(user);
			ActionContext actx = ActionContext.getContext();
			actx.put("errorChaUse", "修改成功！");
			return SUCCESS;
		}else{
			ActionContext actx = ActionContext.getContext();
			actx.put("errorChaUse", "修改失败！");
			return INPUT;
		}
	}
	public String getUsernum() {
		return usernum;
	}
	public void setUsernum(String usernum) {
		this.usernum = usernum;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public String getUserQuestion() {
		return userQuestion;
	}
	public void setUserQuestion(String userQuestion) {
		this.userQuestion = userQuestion;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserHeight() {
		return userHeight;
	}
	public void setUserHeight(String userHeight) {
		this.userHeight = userHeight;
	}
	public String getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}
	public String getUserMajor() {
		return userMajor;
	}
	public void setUserMajor(String userMajor) {
		this.userMajor = userMajor;
	}
	public String getUserPoliticsSta() {
		return userPoliticsSta;
	}
	public void setUserPoliticsSta(String userPoliticsSta) {
		this.userPoliticsSta = userPoliticsSta;
	}
	public String getUserPhoneNumber() {
		return userPhoneNumber;
	}
	public void setUserPhoneNumber(String userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
	}
	public String getUserShortNumber() {
		return userShortNumber;
	}
	public void setUserShortNumber(String userShortNumber) {
		this.userShortNumber = userShortNumber;
	}
	public String getUserDormitoryArea() {
		return userDormitoryArea;
	}
	public void setUserDormitoryArea(String userDormitoryArea) {
		this.userDormitoryArea = userDormitoryArea;
	}
	public String getUserDeclaration() {
		return userDeclaration;
	}
	public void setUserDeclaration(String userDeclaration) {
		this.userDeclaration = userDeclaration;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
