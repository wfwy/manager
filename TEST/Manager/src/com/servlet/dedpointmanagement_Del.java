package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ScoreDAO;
import com.vo.Score;

public class dedpointmanagement_Del extends HttpServlet {

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
        String name=req.getParameter("s_name");       
        System.out.println(name);
        Score score=new Score();
        score.setName(name);
        ScoreDAO scoreDAO=new ScoreDAO();
        scoreDAO.deldedpoint(score);
      
        
        req.getRequestDispatcher("/teacher/dedpointmanagement.jsp").forward(req, resp);
	}
	
}
