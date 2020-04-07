package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminUserDAO;
import com.vo.AdminUser;

public class changeadmpwdServlet extends HttpServlet {

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
		String username = req.getParameter("username");
	    String newpwd=req.getParameter("newpwd");
	    
	    AdminUser adminUser=new AdminUser();
	    adminUser.setUsername(username);
	    adminUser.setPassword(newpwd);
	    
	    AdminUserDAO adminUserDAO=new AdminUserDAO();
	    adminUserDAO.changepwd(adminUser);
	    System.out.println("修改成功!");      
        req.getRequestDispatcher("/admin/changeadmpwd.jsp").forward(req, resp);
	    
	}

}
