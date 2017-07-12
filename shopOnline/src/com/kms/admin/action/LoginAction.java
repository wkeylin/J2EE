package com.kms.admin.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.enterprise.inject.New;
import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.kms.admin.dao.AdminDao;
import com.kms.pojo.Admin;
import com.kms.pojo.Status;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import org.apache.struts2.json.annotations.JSON;//包
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class LoginAction extends ActionSupport implements ModelDriven<Admin>{
	Admin admin = new Admin();
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	/*
	 * (non-Javadoc)
	 * @see com.opensymphony.xwork2.ModelDriven#getModel()
	 * getModel 方法必须重写
	 */
	@Override
		public Admin getModel() {
			if(this.admin==null){
				this.admin=new Admin();
			}
			return admin;
		}
	/*
	 * 登录界面响应的action，返回null
	 */
	public String login() throws IOException {
		HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE); 
		response.setCharacterEncoding("UTF-8"); 
		PrintWriter out = response.getWriter();
		//输出到控制台，检查
		System.out.println("loginUser"+admin.getAdmin_name());
		System.out.println("loginPasswd"+admin.getAdmin_password());
		AdminDao adminDao=new AdminDao();//连接数据库，调用AdminDao的checkAdmin方法，校验密码和用户名
		
		int i=adminDao.checkAdmin(admin);//返回0,1 0-不符合 1-正确并保存在session中
		if(i==1){
//			 ActionContext actionContext = ActionContext.getContext();
//			 Map session = actionContext.getSession();
//			 session.put("admin_name",admin.getAdmin_name());
//			 session.put("admin_password", admin.getAdmin_password());
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session = request.getSession();
			session.setAttribute("admin_name",admin.getAdmin_name());
			session.setAttribute("admin_password", admin.getAdmin_password());
		}
		List<Status> lrs=new ArrayList<Status>();
		Status loginStatus=new Status();
		loginStatus.setLoginStatus(i);
		lrs.add(loginStatus);
		
		System.out.println(lrs.get(0).getLoginStatus());
		JSONArray jsonArray = JSONArray.fromObject(lrs); 
		out.println(jsonArray);
		out.flush();
		out.close();

		return null;		
	}
	
	
}
