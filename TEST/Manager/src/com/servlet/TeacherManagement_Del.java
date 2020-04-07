package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.TeacherUserDAO;
import com.vo.TeacherUser;

public class TeacherManagement_Del extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
        String id=req.getParameter("t_num");       
        System.out.println(id);
        TeacherUser teacherUser=new TeacherUser();
        teacherUser.setT_num(id);
        TeacherUserDAO teacherUserDAO=new TeacherUserDAO();
        teacherUserDAO.delteacher(teacherUser);
      
        
        req.getRequestDispatcher("/admin/teachermanager.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	}

}
