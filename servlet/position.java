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


@WebServlet("/position/positionLogic.jsp")
public class position extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String position = "";
		String positionName = "";
		boolean result = false;
	
		position = request.getParameter("po");			// 선택한 Y or N 을 가지고 온다.
		positionName = request.getParameter("position");// 선택한 직급을 가지고 온다.
		member2dao dao = new member2dao();
		result = dao.position(position, positionName);	// 실행되면 true 리턴 실행안되면 false 리턴
		
		// request.setAttribute("result", result);
		request.getRequestDispatcher("positionUse.jsp").forward(request, response);
		//request.getRequestDispatcher("/mypage/myPageResultView.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
