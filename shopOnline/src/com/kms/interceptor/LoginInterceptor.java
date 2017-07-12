package com.kms.interceptor;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.kms.pojo.Admin;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor{
	@Override
	protected String doIntercept(ActionInvocation invoker) throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();  
        String admin_name = (String) session.getAttribute("admin_name");  
        if (admin_name != null) {  
            System.out.println("test");  
            return invoker.invoke();
        }  
        return "error";  

	}
}
