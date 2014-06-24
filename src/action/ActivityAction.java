package action;

import java.util.Date;

import com.david.DAO.ActivityDAO;
import com.david.DAO.impl.ActivityDAOImpl;
import com.model.Activity;
import com.opensymphony.xwork2.ActionSupport;

public class ActivityAction extends ActionSupport {
	/**
	 * 
	 */
	private Integer activityId;
	private String activityHeadLine;
	private String activityDec; 
	private String activityImg;
	private Integer activityMaxPersons;
	private Date activityBeginDate;
	private Date activityEndDate;
	private String activityPSFile;	
	
	
	public Integer getActivityId() {
		return activityId;
	}
	public void setActivityId(Integer activityId) {
		this.activityId = activityId;
	}
	public String getActivityImg() {
		return activityImg;
	}
	public void setActivityImg(String activityImg) {
		this.activityImg = activityImg;
	}
	public Integer getActivityMaxPersons() {
		return activityMaxPersons;
	}
	public void setActivityMaxPersons(Integer activityMaxPersons) {
		this.activityMaxPersons = activityMaxPersons;
	}
	public Date getActivityBeginDate() {
		return activityBeginDate;
	}
	public void setActivityBeginDate(Date activityBeginDate) {
		this.activityBeginDate = activityBeginDate;
	}
	public Date getActivityEndDate() {
		return activityEndDate;
	}
	public void setActivityEndDate(Date activityEndDate) {
		this.activityEndDate = activityEndDate;
	}
	public String getActivityPSFile() {
		return activityPSFile;
	}
	public void setActivityPSFile(String activityPSFile) {
		this.activityPSFile = activityPSFile;
	}

	public String getActivityHeadLine() {
		return activityHeadLine;
	}
	public void setActivityHeadLine(String activityHeadLine) {
		this.activityHeadLine = activityHeadLine;
		//System.out.println("activityHeadLine: " + this.activityHeadLine);
	}
	public String getActivityDec() {
		return activityDec;
	}
	public void setActivityDec(String activityDec) {
		this.activityDec = activityDec;
		//System.out.println("activityDec: " + this.activityDec);
	}
	public String saveActivity()
	{
		Activity activity = new Activity();
		activity.setActivityHeadLine(activityHeadLine);
		activity.setActivityDec(activityDec);
		activity.setActivityImg(null);	
		activity.setActivityMaxPersons(20);
		activity.setActivityBeginDate(new Date(System.currentTimeMillis()));
		activity.setActivityEndDate(null);
		activity.setActivityPSFile(null);
		
		ActivityDAO activityDaoImpl = new ActivityDAOImpl();
		activityDaoImpl.saveActivity(activity);
		return SUCCESS;
	}
}
