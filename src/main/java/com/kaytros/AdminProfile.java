package com.kaytros;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AdminProfile")
public class AdminProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AdminProfile() {
        super();
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		HttpSession session=request.getSession(false);
		if(session!=null) {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<meta charset=\"UTF-8\">");
			out.println("<link rel=\"shortcut icon\" type=\"image/png\" href=\"images/Ethiopia.jpg\">");
			out.println("<title>Admin In </title>");
			out.println("<link rel=\"stylesheet\" href=\"css/bootstrap.css\">");
			out.println("<script src=\"js/bootstrap.min.js\"></script>");
			out.println("</head>");
			out.println("<body>");
			request.getRequestDispatcher("allAdmin.jsp").include(request, response);
			out.println("<div style='margin:10% 10%;' class='p-5 shadow-lg'><h1 class='text-primary fs-4 text-center'>Admin Is In His Home</h1></div>");
			out.println("</body>");
			out.println("</html>");
			out.close();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
