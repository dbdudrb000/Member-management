package com.test1.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member2dao.member2dao;


@WebServlet("/signout/signLogic.jsp")
public class Signout extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean result = false;
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		member2dao dao = new member2dao();

		String id = request.getParameter("userid");
		String pw = request.getParameter("userpw");			

		result = dao.delete(id, pw);
		session.removeAttribute("createid");			// 28행29행 의도는 회원삭제하면 상단창에sesstion영역이 남아있으므로
		session.removeAttribute("createnickname");		// 그대로 로그인 상태유지하는걸 제거해주는 의도이다.

		request.setAttribute("result", result);
		request.getRequestDispatcher("signResultView.jsp").forward(request, response);

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
