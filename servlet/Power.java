package com.test1.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member2dao.member2dao;


@WebServlet("/power/powerLogic.jsp")
public class Power extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id;
		String nick;
		String power;
		boolean result;
		request.setCharacterEncoding("UTF-8");
		
		id = request.getParameter("power_id");
		nick = request.getParameter("power_nickname");
		power = request.getParameter("user_power");
		
		member2dao dao = new member2dao();
		 result = dao.power(id, power, nick);
		 request.setAttribute("result", result);
		 request.getRequestDispatcher("poweResultView.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
