package com.kms.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kms.dao.PersonDao;
import com.kms.opoj.Person;

public class RegServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		//int id = Integer.parseInt(req.getParameter("id"));
		String id = req.getParameter("id");
		String passwd = req.getParameter("passwd");
		String sex = req.getParameter("sex");
		String[] hobby = req.getParameterValues("hobby");
		String description = req.getParameter("description");
		Person person = new Person(id, passwd, sex, hobby, description);
		PersonDao personDao = new PersonDao();
		PrintWriter out = resp.getWriter();
		int i = personDao.addUser(person);
		if(i!=0){	
			out.print("×¢²á³É¹¦");
		}else{
			out.print("×¢²áÊ§°Ü");
		}
	}
}
