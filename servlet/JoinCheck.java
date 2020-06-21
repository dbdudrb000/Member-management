package com.test1.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member2dao.member2dao;


@WebServlet("/join/joinCheckLogic1.jsp")
public class JoinCheck extends HttpServlet {
	
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id2 = request.getParameter("id");
		System.out.println(id2);
		
		member2dao dao = new member2dao();
		boolean result = dao.check(id2);
	
		response.sendRedirect("joinCheckView.jsp?id="+ id2+ "&result="+result);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
