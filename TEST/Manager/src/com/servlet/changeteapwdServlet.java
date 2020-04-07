package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.TeacherUserDAO;
import com.vo.TeacherUser;

public class changeteapwdServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("name");
	    String newpwd=req.getParameter("newpwd");
	    
	    TeacherUser teacherUser=new TeacherUser();
	    teacherUser.setName(name);
	    teacherUser.setPassword(newpwd);
	    
	    TeacherUserDAO teacherUserDAO=new TeacherUserDAO();
	    teacherUserDAO.changepwd(teacherUser);
	    System.out.println("修改成功!");      
        req.getRequestDispatcher("/teacher/changeteapwd.jsp").forward(req, resp);
	}

}
