package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ScoreDAO;
import com.vo.Score;

/**
 * Servlet implementation class score_1servlet
 */
@WebServlet("/score_1servlet")
public class score_1servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public score_1servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		request.setCharacterEncoding("utf-8");
		int t=Integer.valueOf(request.getParameter("t"));
		String s_num=request.getParameter("s_num");
		String name=request.getParameter("name");
		String item=request.getParameter("item");
		String score=request.getParameter("score");
		String remark=request.getParameter("remark");
		String user=request.getParameter("user");
		
		Score score2=new Score();
		score2.setS_num(s_num);
		score2.setName(name);
		score2.setItem(item);
		score2.setScore(score);
		score2.setRemark(remark);
		score2.setUser(user);
		
		ScoreDAO scoreDAO=new ScoreDAO();
		scoreDAO.addaapoint(score2);
		if(t==1) {
			request.getRequestDispatcher("/teacher/activity.jsp").forward(request, response);
		}else if(t==2){
			request.getRequestDispatcher("/teacher/huojiang.jsp").forward(request, response);
		}else if(t==3) {
			request.getRequestDispatcher("/teacher/kaoqin.jsp").forward(request, response);
		}
		
		
	}

}
