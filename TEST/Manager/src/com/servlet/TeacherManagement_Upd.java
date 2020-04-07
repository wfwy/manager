package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.TeacherUserDAO;
import com.vo.TeacherUser;

public class TeacherManagement_Upd extends HttpServlet {

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
		String t_num=req.getParameter("t_num");
		String name=req.getParameter("name");
        String sex=req.getParameter("sex");
        String age=req.getParameter("age");   
        String title=req.getParameter("title");
        String college = req.getParameter("college");
        String password = req.getParameter("password");
        
        TeacherUser teacherUser=new TeacherUser();
        teacherUser.setT_num(t_num);
        teacherUser.setName(name);
        teacherUser.setSex(sex);
        teacherUser.setAge(age);
        teacherUser.setTitle(title);
        teacherUser.setCollege(college);
        teacherUser.setPassword(password);
        
        TeacherUserDAO teacherUserDAO=new TeacherUserDAO();
        teacherUserDAO.updateteacher(teacherUser);
        System.out.println("修改成功!");      
        req.getRequestDispatcher("/admin/teachermanager.jsp").forward(req, resp);
	}
	

}
