package com.test1.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member2dao.member2dao;
import member2dto.member2dto;


@WebServlet("/mypage/allMemberLogic.jsp")
public class allMember extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<member2dto> list = new ArrayList<member2dto>(); // dao �� ���ϵȰ� ���� �׸�
		
		member2dao dao = new member2dao();
		
		list = dao.allmember();		// ���� Ÿ������ ���ϰ��� �޾ƾ��Ѵ�.
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("allmemberView.jsp").forward(request, response);
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
