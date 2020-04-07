package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ScoreDAO;
import com.vo.Score;

public class dedpointServlet extends HttpServlet {

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
		String s_name=req.getParameter("s_name");
		String type=req.getParameter("type");
		String remark=req.getParameter("remark");
		
		Score score=new Score();
		score.setName(s_name);
		score.setType(type);
		score.setRemark(remark);
		
		ScoreDAO scoreDAO=new ScoreDAO();
		scoreDAO.dedpoint(score);
		System.out.println("注册成功!");
        req.getRequestDispatcher("/teacher/dedpoint.jsp").forward(req, resp);
	}
	
	

}
