package com.kaytros;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/Edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Edit() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter printWriter=response.getWriter();
		
		
		printWriter.println("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css\">");
		printWriter.println("<script src=\"https://kit.fontawesome.com/981f9b3d7a.js\" crossorigin=\"anonymous\"></script>");
		printWriter.println("<link rel=\"stylesheet\" href=\"css/bootstrap.css\"/>");
		printWriter.println("<script src=\"js/bootstrap.min.js\"></script>");
		
		int id=Integer.parseInt(request.getParameter("id"));
		
		Student student=new Student();
		
		student.setFristName(request.getParameter("fname"));
		student.setLastName(request.getParameter("lname"));
		student.setSex(request.getParameter("sex"));
		student.setNationality(request.getParameter("nationality"));
		
		DAO.update(id, student);
		
		printWriter.println("<h1 class='fs-1 text-success' style=' margin:5% 25%;'> Your Record Updated Successfully</h1>");
		printWriter.println("<h1 class='fs-5 text-success' style=' margin:3% 40%;'> You Can Check It<a href='ViewStudentInformation' style='text-decoration:none; margin-left:20px;'>Here</a></h1>");
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
