package com.kms.user.action;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.kms.pojo.User;
import com.kms.user.dao.User_Check_dao;
import com.kms.user.dao.User_dao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import net.sf.json.JSONArray;

public class User_action extends ActionSupport implements ModelDriven<User>,SessionAware{
	public String reg() throws Exception {
		User_dao user_dao = new User_dao();
		System.out.println("user.getUser_imgFileFileName():"+user.getUser_imgFileFileName());
		int i=user_dao.reg(this.user);
		if(i!=1){
			System.out.println("该手机已被注册");
		}else{
			System.out.println("regok"+user.getUser_phone());
		}
		HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE); 
		response.setCharacterEncoding("UTF-8"); 
		PrintWriter out = response.getWriter();
		JSONArray jsonArray = JSONArray.fromObject(i);
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;
	}
	
	public String login() throws Exception {
		User_dao user_dao = new User_dao();
		System.out.println("Login_user.getUser_phone(action):"+user.getUser_phone());
		System.out.println("Login_user.getUser_password(action):"+user.getUser_password());
		int i=user_dao.login(this.user);
		if(i==-1){
			System.out.println("用户不存在");
		}else if(i==0){
			System.out.println("密码错误");
		}else{
			user.setUser_id(i);
			System.out.println("SessionuserID:"+user.getUser_id());
			this.session.put("SessionuserID", user.getUser_id());
			System.out.println("loginok"+user.getUser_name());
		}
		HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE); 
		response.setCharacterEncoding("UTF-8"); 
		PrintWriter out = response.getWriter();
		JSONArray jsonArray = JSONArray.fromObject(i);
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;
	}
	public String QueryUser() throws Exception {
		User_dao user_dao = new User_dao();
		//System.out.println("(int)this.session.get('SessionuserID'):"+(int)this.session.get("SessionuserID"));
		user.setUser_id((int)this.session.get("SessionuserID"));
		//System.out.println("user.getUser_password(action):"+user.getUser_password());
		user = user_dao.QueryUser(this.user);
		this.session.put("Sessionuser", user);
		//System.out.println("user.getUser_realname(action):"+user.getUser_realname());
		HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE); 
		response.setCharacterEncoding("UTF-8"); 
		PrintWriter out = response.getWriter();
		JSONArray jsonArray = JSONArray.fromObject(user);
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;
	}
	public String update() throws Exception {
		User_dao user_dao = new User_dao();
		user.setUser_id((int)this.session.get("SessionuserID"));
		//System.out.println("user.getUser_id(action):"+user.getUser_id());
		//System.out.println("user.getUser_address(action):"+user.getUser_address());
		int i = user_dao.update(this.user);
		//System.out.println("user.getUser_id(action):"+user.getUser_id());
		user = user_dao.QueryUser(user);
		//System.out.println("user.getUser_idcard(action):"+user.getUser_idcard());
		HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE); 
		response.setCharacterEncoding("UTF-8"); 
		PrintWriter out = response.getWriter();
		JSONArray jsonArray = JSONArray.fromObject(user);
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;
	}

	public String Check_User() throws Exception{
		int i=0;
		User_Check_dao user_Check_dao = new User_Check_dao();
		if (user.getUser_name()!=null){
			i = user_Check_dao.Check_User_name(user);
		}
		if (user.getUser_phone()!=null){
			i = user_Check_dao.Check_User_phone(user);
		}
		if (user.getUser_idcard()!=null){
			i = user_Check_dao.Check_User_idcard(user);
		}
		HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE); 
		response.setCharacterEncoding("UTF-8"); 
		PrintWriter out = response.getWriter();
		JSONArray jsonArray = JSONArray.fromObject(i);
		out.println(jsonArray);
		out.flush();
		out.close();
		return null;
	}
	
	/*public String QueryOrder() {
		
	}
	*/
	
	
	private Map session;
	private User user = new User();
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public User getModel() {
		if(this.user==null){
			this.user=new User();
		}
		return this.user;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session=session;
	}
}
