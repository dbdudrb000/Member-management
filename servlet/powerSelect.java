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

// @WebServlet("/mypage/powerSelect.jsp")
@WebServlet("/mypage/powerSelect.jsp")
public class powerSelect extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String power = "";
		power = request.getParameter("power");
		
		member2dao dao = new member2dao();
		ArrayList<member2dto> dtoList = new ArrayList<member2dto>();
		dtoList = dao.powerSelect();
		
		// 직급변경버튼을 눌럿을때는 power 변수에는 "power" 가 있을것이고	
		//                  powerView.jsp 페이지로 이동
		
		// 직급유무 버튼을 눌럿을때는 power 변수에는 "position 이 있을 것 이고 
		//                   positionView.jsp 페이지로 이동
		
		// power 안에 무슨 문자열이 있느냐를 판단하여 각 각 페이지이동을 해준다.
		
		 if(power.equals("power")) {	
			 request.setAttribute("dtoList", dtoList);
			 request.getRequestDispatcher("/power/powerView.jsp").forward(request, response);
		 }else if(power.equals("position")){	
			 request.setAttribute("dtoList", dtoList);
			 request.getRequestDispatcher("/position/positionView.jsp").forward(request, response);
		 }
		
		
		//request.getRequestDispatcher("myPageLogic.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
