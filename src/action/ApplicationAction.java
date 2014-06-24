package action;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.ActivityDao;
import com.dao.ApplicationDao;
import com.model.Application;
import com.opensymphony.xwork2.ActionSupport;

public class ApplicationAction extends ActionSupport{
	private String userId;
	private String activity;
	private String grade;
	private String part;
	private String phoneNo;
	private String academy;
	
	public String execute(){
		ActivityDao activityDao = new ActivityDao();
		int activityId = activityDao.getActivtiyId(activity);
		String isOk = null;
		Application app = new Application();
		System.out.println("userId: " + userId);
		app.setUserId(userId);
		app.setActivityId(activityId);
		app.setApplyDate(new Date(System.currentTimeMillis()));
		ApplicationDao appDao = new ApplicationDao();
		appDao.saveApp(app);
		return SUCCESS;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getActivity() {
		return activity;
	}

	public void setActivity(String activity) {
		this.activity = activity;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getPart() {
		return part;
	}

	public void setPart(String part) {
		this.part = part;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getAcademy() {
		return academy;
	}

	public void setAcademy(String academy) {
		this.academy = academy;
	}
	
}
