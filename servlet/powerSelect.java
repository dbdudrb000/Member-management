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
		
		// ���޺����ư�� ���������� power �������� "power" �� �������̰�	
		//                  powerView.jsp �������� �̵�
		
		// �������� ��ư�� ���������� power �������� "position �� ���� �� �̰� 
		//                   positionView.jsp �������� �̵�
		
		// power �ȿ� ���� ���ڿ��� �ִ��ĸ� �Ǵ��Ͽ� �� �� �������̵��� ���ش�.
		
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
