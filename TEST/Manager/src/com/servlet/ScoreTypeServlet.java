package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ScoreTypeDAO;
import com.vo.ScoreType;

public class ScoreTypeServlet extends HttpServlet {

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
		String item=req.getParameter("item");
		String score=req.getParameter("score");
		String type=req.getParameter("type");
		
		ScoreType scoreType=new ScoreType();
		scoreType.setType(type);
		scoreType.setItem(item);
		scoreType.setScore(score);
		
		ScoreTypeDAO scoreTypeDAO=new ScoreTypeDAO();
		scoreTypeDAO.ScoreType(scoreType);

		System.out.println("注册成功!");
        req.getRequestDispatcher("/admin/scoring_type.jsp").forward(req, resp);
		
	}

}
