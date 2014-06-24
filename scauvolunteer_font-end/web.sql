/*======================= 删除数据库 =======================*/

DROP DATABASE IF EXISTS volunteerDB ;

/*======================= 创建数据库 =======================*/

CREATE DATABASE volunteerDB CHARACTER SET utf8 ;

/*======================= 使用数据库 =======================*/

USE volunteerDB ;

/*======================= 删除数据表 =======================*/

DROP TABLE IF EXISTS volunteerRegist ;

/*======================= 创建数据表 =======================*/

CREATE TABLE volunteerRegist(
  
 volunteerNo		 INT(12)			PRIMARY KEY auto_increment,/* 主键自增长，主键应该对用户没有意义*/
   
volunterrId 		 INT(12) unique,/*学号 */
   
volunteerName	 VARCHAR(20) unique,/*登录名 */
   
volunteerPass	 VARCHAR(20),/*密码 */
   
volunteerMail	 VARCHAR(20) unique, /*密码找回邮箱 */
   
volunteerQuestion VARCHAR(50)/*密码重置问题 */

) ;



/* 个人信息表*/

DROP TABLE IF EXISTS volunteerInfo;

CREATE TABLE volunteerInfo(

	InfoId			 INT(12) primary key auto_increment,/* 主键自增长，主键应该对用户没有意义*/

	InfoName         varchar(20),/*姓名 */
	InfoSex			 varchar(2),/*性别 */
	InfoHeight		 INT(3),/*身高*/
	InfoGrade		 INT(4),/* 年级*/
	InfoMajor		 varchar(30),/* 专业*/
	InfoPoliticsSta  varchar(10),/* 政治面貌*/
	InfoPhoneNumber  INT(11),/*11位的长号 */
	InfoShortNumber  INT(6),/*短号 */
	InfoDormitoryArea varchar(20),/*宿舍区 */
	InfoDeclaration  varchar(500)/*个人简介 */
);


/*  活动管理子系统 */
DROP TABLE IF EXISTS activities;
CREATE TABLE article(
	id			INT(12) primary key auto_increment,/* 主键自增长，主键应该对用户没有意义*/
	title    varchar(40),/* 活动的标题*/
	content			text,/*内容 */
	image	varchar(500),/*主页海报 */
	maxPersons	INT(12),/* 报名人数的上限*/
	beginDate   date/*活动开始日*/
);

/*录取模块*/
DROP TABLE IF EXISTS ActEnroll;
CREATE TABLE ActEnroll(
	enrollId 			INT(12) primary key auto_increment,/* 主键自增长，主键应该对用户没有意义*/
	activityId			INT(12) references activities(activityId),/* 活动ID*/
	InfoId 	 		    INT(12) references volunteerInfo(InfoId)/* 志愿者ID*/
);

/*　新闻管理子系统 */
DROP TABLE IF EXISTS News;
CREATE TABLE News(
	newsId 			 	INT(12) primary key auto_increment,/* 主键自增长，主键应该对用户没有意义*/
	passageHeadLine     varchar(200) not null,/* 文章标题*/
	newsAddedTime 		datetime default now(),/* 文章的添加时间*/
	newsWritter			varchar(20), /*作者 */
	newsComeFrom		varchar(50),/*文章来源 */
	newsImgAdd			varchar(50),/*图片地址 */
	newsReadCounts		INT(20),/* 阅读数*/
	passage				varchar(20000)/* 文章内容*/
);

DROP TABLE IF EXISTS NewsComment;
CREATE TABLE NewsComment(
	NewsCommentId  		INT(12) primary key auto_increment,
	newsId  			INT(12) references News(newsId),
	commentDec			varchar(1000) not null/* 评论内容*/
);