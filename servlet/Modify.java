package com.test1.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member2dao.member2dao;

@WebServlet("/mypage/modifyLogic.jsp")
public class Modify extends HttpServlet {
	
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		boolean result = false;
		Integer no = Integer.parseInt(request.getParameter("no"));
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");
		
		member2dao dao = new member2dao();
		
		result = dao.modify(no, id, pw, email, nickname);
		session.setAttribute("createnickname", nickname);
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("/modify/modifyResultView.jsp").forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
