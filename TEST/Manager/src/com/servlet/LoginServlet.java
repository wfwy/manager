package com.servlet;

import com.dao.AdminUserDAO;
import com.dao.StudentUserDAO;
import com.dao.TeacherUserDAO;
import com.vo.AdminUser;
import com.vo.StudentUser;
import com.vo.TeacherUser;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;


public class LoginServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String type = request.getParameter("type");
        session.setAttribute("type", type);
        session.setAttribute("username", username);
        session.setAttribute("password", password);
        System.out.println(type);
        
        if("1".equals(type)){
        	StudentUser studentUser=new StudentUser();
        	studentUser.setName(username);
        	studentUser.setPassword(password);
        	StudentUserDAO studentUserDAO=new StudentUserDAO();
        	String name=studentUserDAO.login(studentUser);
        	if (name != null) {
           	 request.getRequestDispatcher("/main.jsp").forward(request, response);
            } else {
           	 request.getRequestDispatcher("/2.jsp").forward(request, response);
            }
        	
        	
        	
        }else if("2".equals(type)) {
        	TeacherUser teacherUser=new TeacherUser();
        	teacherUser.setName(username);
        	teacherUser.setPassword(password);
        	TeacherUserDAO teacherUserDAO=new TeacherUserDAO();
        	String name=teacherUserDAO.login(teacherUser);
        	 if (name != null) {
            	 request.getRequestDispatcher("/main.jsp").forward(request, response);
             } else {
            	 request.getRequestDispatcher("/2.jsp").forward(request, response);
             }
        }else {
	        	 AdminUser adminuser=new AdminUser();
	             adminuser.setUsername(username);
	             adminuser.setPassword(password);
	             AdminUserDAO adminuserDAO=new AdminUserDAO();
	             String name=adminuserDAO.login(adminuser);
	             
	             if (name != null) {
	            	 request.getRequestDispatcher("/main.jsp").forward(request, response);
	             } else {
	            	 request.getRequestDispatcher("/2.jsp").forward(request, response);
	             }

        }
       
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
