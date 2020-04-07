 package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ScoreDAO;
import com.vo.Score;

public class addpointmanagement_Del extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
        int id=Integer.valueOf(req.getParameter("id"));       
        System.out.println(id);
        Score score=new Score();
        score.setId(id);
        ScoreDAO scoreDAO=new ScoreDAO();
        scoreDAO.deladdpoint(score);        
        req.getRequestDispatcher("/admin/record.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	

}
