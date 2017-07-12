package com.kms.admin.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.kms.admin.dao.AdminDao;
import com.opensymphony.xwork2.ActionSupport;

public class LoadAction extends ActionSupport{
	
	public String load() throws Exception {
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpServletResponse response=ServletActionContext.getResponse();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8"); 
		AdminDao adminDao=new AdminDao();
		int user_count=adminDao.countUser();
		int shop_count=adminDao.countShop();
		double saleprice_count=adminDao.countSalePrice();
		String jsonString="{\"user_count\":"+user_count+",\"shop_count\":"+shop_count+",\"saleprice_count\":"+saleprice_count+" }";
		PrintWriter out=response.getWriter();
		out.write(jsonString);
		response.getWriter();
		return null;
	}
}
