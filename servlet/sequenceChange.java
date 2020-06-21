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


@WebServlet("/power/sequenceChange.jsp")
public class sequenceChange extends HttpServlet {
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean result = false;
		ArrayList<member2dto> dtoList = new ArrayList<member2dto>();
		member2dao dao = new member2dao();
		
		String array = request.getParameter("array");
		String array2 = request.getParameter("array2");
		
		String[] strSplit = array.split(",");	// powerNo 를 대입
		String[] strSplit2 = array2.split(",");	// powerOder 를 대입
		int num = strSplit.length; // for 문을 몇번 반복할 것인지 
		
		for(int i =0; i < num; i++) {		
			
			result = dao.Changeseq(strSplit[i], strSplit2[i]);
		} 
		
		dtoList = dao.powerSeq();
		request.setAttribute("dtoList", dtoList);
		request.getRequestDispatcher("powerSequenceView.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
