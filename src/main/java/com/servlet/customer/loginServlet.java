package com.servlet.customer;

import java.io.IOException;


import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.customer.User;
import com.service.customer.customerDBUtil;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		try {
			
			boolean status  = customerDBUtil.validate(username, password);
			if(status == true) {
				
				List<User> user = com.service.customer.customerDBUtil.getCustomer(username);
				request.getSession().setAttribute("loginUserId", user.get(0).getId());
				
				RequestDispatcher dis = request.getRequestDispatcher("userProfile.jsp");   /// after successful login, redirect to home page
				dis.forward(request, response);
			}else {
				RequestDispatcher dis = request.getRequestDispatcher("login.jsp"); /// is unsuccessful , redirect to login again
				dis.forward(request, response);
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
			
	}
	

}