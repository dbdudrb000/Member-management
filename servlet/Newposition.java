package com.test1.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member2dao.member2dao;


@WebServlet("/position/NewPositionLogic.jsp")
public class Newposition extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String position = "";
		boolean poresult = false;
		position = request.getParameter("newposition");
		
		member2dao dao = new member2dao();
		poresult = dao.newposition(position);
		 System.out.println(poresult + "new");
		request.setAttribute("newposition", poresult);
		request.getRequestDispatcher("NewPositionResult.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
