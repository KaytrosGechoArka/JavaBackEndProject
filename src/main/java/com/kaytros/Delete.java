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

@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Delete() {
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
		DAO.oneToOneDelete(id);
		
		printWriter.println("<div class='shadow-lg w-75 p-3' style='margin:5% 13%'>");
		printWriter.println("<h1 class='fs-1 text-success' style=' margin:5% 25%;'>Record Deleted Successfully</h1>");
		printWriter.println("<h1 class='fs-5 text-success' style='margin-left:32%; margin-top:-2%;'>Click <a href='ViewStudentInformation' style='text-decoration:none; margin-left:5px; margin-right:5px;'>Here </a>to Check</h1>");
		printWriter.println("</div>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
