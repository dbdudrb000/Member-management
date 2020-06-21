package com.test1.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member2dao.member2dao;
import member2dto.member2dto;


@WebServlet("/position/positionUse.jsp")
public class positionUse extends HttpServlet {
	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList dtoList = new ArrayList<member2dto>();
		member2dao dao = new member2dao();
		HttpSession session = request.getSession();
		
		dtoList = dao.positionUse();
		// session.setAttribute("use", dto.getUse());
		 request.setAttribute("dtoList", dtoList);
		
		request.getRequestDispatcher("/power/powerView.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
