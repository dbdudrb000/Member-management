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


// @WebServlet("/mypage/myPageLogic.jsp") 수정전 
@WebServlet("/mypage/myPageLogic.jsp")
public class Mypage extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		member2dao dao = new member2dao();
		member2dto dto = null;
		ArrayList<member2dto> dtoList;
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("createid");
		String pw = request.getParameter("user_password");
		
		dto = dao.select(id, pw);
		
		// dtoList 는 ArrayList 타입이므로 ArrayList 변수에 담을 수있다.
		dtoList = (ArrayList<member2dto>) request.getAttribute("dtoList");
	
		request.setAttribute("dtoList", dtoList);
		request.setAttribute("dto",dto);
		request.getRequestDispatcher("myPageResultView.jsp").forward(request, response);
		//request.getRequestDispatcher("/mypage/myPageResultView.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
