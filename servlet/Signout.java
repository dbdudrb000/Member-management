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
		session.removeAttribute("createid");			// 28��29�� �ǵ��� ȸ�������ϸ� ���â��sesstion������ ���������Ƿ�
		session.removeAttribute("createnickname");		// �״�� �α��� ���������ϴ°� �������ִ� �ǵ��̴�.

		request.setAttribute("result", result);
		request.getRequestDispatcher("signResultView.jsp").forward(request, response);

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
