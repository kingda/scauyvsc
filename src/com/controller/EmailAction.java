package com.controller;

import com.dao.SendMail;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EmailAction extends ActionSupport {
	private String name;
	private String mail;
	private String words;
	public String execute(){
		System.setProperty("mail.mime.charset","UTF-8");
        SendMail sendMail = new SendMail();
        sendMail.setSmtpServer("smtp.163.com");
        //此处设置登录的用户名
        sendMail.setUsername("volunteeermail@163.com");
        //此处设置登录的密码
        sendMail.setPassword("volunteer");
        //设置收件人的地址
        sendMail.setTo("371790550@qq.com");
        //设置发送人地址
        sendMail.setFrom("volunteeermail@163.com");
        //设置标题
        sendMail.setSubject(name);
        //设置内容
        sendMail.setContent(words+"FROM:"+mail); 
        //粘贴附件
        //sendMail.attachfile("C:/Login6 (1).jpg");
        if (sendMail.send())
        {
        	ActionContext actx = ActionContext.getContext();
			actx.put("mailmail", "发送成功！");
            return SUCCESS;
        }
        ActionContext actx = ActionContext.getContext();
		actx.put("mailmail", "发送失败！");
        return INPUT;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getWords() {
		return words;
	}
	public void setWords(String words) {
		this.words = words;
	}
	
}
