package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.StudentUserDAO;

import com.vo.StudentUser;


public class student_del extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
        String s_num=req.getParameter("s_num");      
        System.out.println(s_num);
        StudentUser studentUser=new StudentUser();
        studentUser.setS_num(s_num);
        StudentUserDAO studentUserDAO=new StudentUserDAO();
        studentUserDAO.delStudent(studentUser);       
        req.getRequestDispatcher("/teacher/studentmessage1.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
