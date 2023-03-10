package com.kaytros;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/StudentLogIn")
public class StudentLogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StudentLogIn() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[]logInData= {request.getParameter("email"),request.getParameter("password")};
		request.getSession().setAttribute("logInData", logInData);
		request.getRequestDispatcher("StudentProfile").include(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
