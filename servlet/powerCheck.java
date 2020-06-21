package com.test1.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.spi.orb.StringPair;

import member2dao.member2dao;
import member2dto.member2dto;

@WebServlet("/power/powerCheckLogic.jsp")
public class powerCheck extends HttpServlet {
	

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		member2dto dto = null;
		String id  = request.getParameter("id");
		String nick = request.getParameter("nick");
		System.out.println(id);
		System.out.println(nick);
		
		member2dao dao = new member2dao();
		dto = dao.powerCheck(id, nick);   // ���� Ÿ���� dto �ϱ� dto Ÿ������ �޾���� �Ѵ�.
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("powerCheck.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
