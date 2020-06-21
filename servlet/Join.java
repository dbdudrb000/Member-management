package com.test1.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member2dao.member2dao;
import member2dto.member2dto;


@WebServlet("/join/joinLogic1.jsp")
public class Join extends HttpServlet {
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("user_id");
		String password = request.getParameter("user_password");
		String email = request.getParameter("user_email1") + "@" + request.getParameter("user_email2");
		String nickname = request.getParameter("user_nickname");
		
		member2dto dto = new member2dto();
		
		dto.setId(id);
		dto.setPassword(password);
		dto.setEmail(email);
		dto.setNickname(nickname);
		
		member2dao dao = new member2dao();

		boolean result = dao.insert(dto);
		request.setAttribute("result", result);
		request.getRequestDispatcher("joinResultView.jsp").forward(request, response);
	//	response.sendRedirect("joinResultView.jsp?result="+result);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
