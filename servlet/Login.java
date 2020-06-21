package com.test1.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member2dao.member2dao;
import member2dto.member2dto;


@WebServlet("/login/loginLogic.jsp")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String use = "";
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("user_id");
		String password = request.getParameter("user_password");
		
		member2dao dao = new member2dao();
		 member2dto dto = dao.select(id, password);		
		
		
			
		if(dto != null) {
			 use = dto.getUse();	// ����ȸ������ �ƴ��� ������ use�� ������ ����.
			if(use.equals("Y")) {
				HttpSession session = request.getSession();
				session.setAttribute("createnickname", dto.getNickname());
				session.setAttribute("createid", dto.getId());
				session.setAttribute("power", dto.getPower());
				request.setAttribute("use", use);			// use �� ���� ( ����ȸ�� , �������� ) �� ������.
				request.getRequestDispatcher("loginResultView.jsp").forward(request, response);
			}else {
				request.setAttribute("createnickname", dto.getNickname());
				request.setAttribute("createid", dto.getId());
				request.setAttribute("power", dto.getPower());
				request.setAttribute("use", use);			// use �� ���� ( ����ȸ�� , �������� ) �� ������.
				request.getRequestDispatcher("loginResultView.jsp").forward(request, response);
			}
		}else {
			request.setAttribute("createnickname", null);
			request.getRequestDispatcher("loginResultView.jsp").forward(request, response);
		}
	}	
		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
