package com.model;

import java.sql.Date;

public class News {
	int newsId;/* 主键自增长，主键应该对用户没有意义*/
	String passageHeadLine;/* 文章标题*/
	Date newsAddedTime;/* 文章的添加时间*/
	String newsWritter;/*作者 */
	String newsComeFrom;/*文章来源 */
	String newsImgAdd;/*图片地址 */
	int newsReadCounts;/* 阅读数*/
	String passage;/* 文章内容*/
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getPassageHeadLine() {
		return passageHeadLine;
	}
	public void setPassageHeadLine(String passageHeadLine) {
		this.passageHeadLine = passageHeadLine;
	}
	public Date getNewsAddedTime() {
		return newsAddedTime;
	}
	public void setNewsAddedTime(Date newsAddedTime) {
		this.newsAddedTime = newsAddedTime;
	}
	public String getNewsWritter() {
		return newsWritter;
	}
	public void setNewsWritter(String newsWritter) {
		this.newsWritter = newsWritter;
	}
	public String getNewsComeFrom() {
		return newsComeFrom;
	}
	public void setNewsComeFrom(String newsComeFrom) {
		this.newsComeFrom = newsComeFrom;
	}
	public String getNewsImgAdd() {
		return newsImgAdd;
	}
	public void setNewsImgAdd(String newsImgAdd) {
		this.newsImgAdd = newsImgAdd;
	}
	public int getNewsReadCounts() {
		return newsReadCounts;
	}
	public void setNewsReadCounts(int newsReadCounts) {
		this.newsReadCounts = newsReadCounts;
	}
	public String getPassage() {
		return passage;
	}
	public void setPassage(String passage) {
		this.passage = passage;
	}
	
}
