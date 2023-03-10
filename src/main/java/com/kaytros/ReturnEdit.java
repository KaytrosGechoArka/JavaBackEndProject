package com.kaytros;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditReturn")
public class ReturnEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReturnEdit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter printWriter=response.getWriter();
		response.setContentType("text/html");
		String id=request.getParameter("id");
		
		printWriter.println("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css\">");
		printWriter.println("<script src=\"https://kit.fontawesome.com/981f9b3d7a.js\" crossorigin=\"anonymous\"></script>");
		printWriter.println("<link rel=\"stylesheet\" href=\"css/bootstrap.css\"/>");
		printWriter.println("<script src=\"js/bootstrap.min.js\"></script>");
		request.getRequestDispatcher("allAdmin.jsp").include(request, response);
		
		Configuration cnfg=new Configuration();
		cnfg.configure("hibernate.cfg.xml");
		
		Session session=cnfg.buildSessionFactory().openSession();
		Transaction transaction=session.beginTransaction();
		
		Student std=(Student)session.createQuery("FROM Student WHERE id="+id).getSingleResult();
		
		
		printWriter.println("<h1 class='fs-3 mt-5 mb-0' style='margin-left:40%;'>Update Recode Form</h1>");
		printWriter.println("<div style=' margin:auto;width:800px;margin-top:100px;'>");
		printWriter.println("<form action='Edit?id="+id+"' method='POST'>");
		printWriter.println("<table class='table table-hover table-striped'>");
		printWriter.println("<tr>");
		printWriter.println("<td>Frist Name</td>");
		printWriter.println("<td><input class='form-control' type='text' name='fname' value='"+std.getFristName()+"'></td>");
		printWriter.println("</tr>");
		
		printWriter.println("<tr>");
		printWriter.println("<td>Last Name</td>");
		printWriter.println("<td><input class='form-control' type='text' name='lname' value='"+std.getLastName()+"'></td>");
		printWriter.println("</tr>");
		
		printWriter.println("<tr>");
		printWriter.println("<td>Sex</td>");
		printWriter.println("<td><input class='form-control' type='text' name='sex' value='"+std.getSex()+"'></td>");
		printWriter.println("</tr>");
		printWriter.println("<tr>");
		
		printWriter.println("<tr>");
		printWriter.println("<td>Nationality</td>");
		printWriter.println("<td><input class='form-control' type='text' name='nationality' value='"+std.getNationality()+"'></td>");
		printWriter.println("</tr>");
		
		printWriter.println("<tr class='row p-0'><td colspan='2'><input style='width:100%; height:40px; printWriterline:none; border:none;' type='submit' class='bg-primary text-white'  valu='Edit'/></td></tr>");
		printWriter.println("</table>");
		printWriter.println("</form>");
		
		transaction.commit();
		session.close();
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
