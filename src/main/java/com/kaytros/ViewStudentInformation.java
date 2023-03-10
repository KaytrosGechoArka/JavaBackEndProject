package com.kaytros;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.ListIterator;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/ViewStudentInformation")
public class ViewStudentInformation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ViewStudentInformation() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter printWriter=response.getWriter();
		response.setContentType("text/html");
		
		//Object Here
		
		printWriter.println("<!DOCTYPE html>");
		printWriter.println("<html>");
		printWriter.println("<head>");
		printWriter.println("<meta charset=\"UTF-8\">");
		printWriter.println("<title>LogIn Successfully</title>");
		printWriter.println("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css\">");
		printWriter.println("<script src=\"https://kit.fontawesome.com/981f9b3d7a.js\" crossorigin=\"anonymous\"></script>");
		printWriter.println("<link rel=\"stylesheet\" href=\"css/bootstrap.css\">");
		printWriter.println("<script src=\"js/bootstrap.min.js\"></script>");
		printWriter.println("<link rel=\"stylesheet\" href=\"profileimagestyle.css\">");
		printWriter.println("</head>");
		printWriter.println("<body>");
		request.getRequestDispatcher("allAdmin.jsp").include(request, response);
		printWriter.println("<div>");
		printWriter.println("<div class='' style='width:auto; margin:20px 50px;'>");
		printWriter.println("<table class='table table-hover table-striped'>");
		printWriter.println("<tr>");
		printWriter.println("<td>First Name</td>");
		printWriter.println("<td>Last Name</td>");
		printWriter.println("<td>Sex</td>");
		printWriter.println("<td>Nationality</td>");
		
		printWriter.println("<td>Edit</td>");
		printWriter.println("<td>Delete</td>");
		printWriter.println("</tr>");
		
		//Here
		Configuration cnfg=new Configuration();
		cnfg.configure("hibernate.cfg.xml");
		
		Session session=cnfg.buildSessionFactory().openSession();
		Transaction transaction=session.beginTransaction();
		
		List<Student> student=(List<Student>)session.createQuery("FROM Student").list();
		
		ListIterator<Student>li=student.listIterator();
		while(li.hasNext()) {
			Student stdnt=(Student)li.next();
			printWriter.println("<tr>");
			printWriter.println("<td>"+stdnt.getFristName()+"</td>");
			printWriter.println("<td>"+stdnt.getLastName()+"</td>");
			printWriter.println("<td>"+stdnt.getSex()+"</td>");
			printWriter.println("<td>"+stdnt.getNationality()+"</td>");

			printWriter.println("<td><a href='EditReturn?id="+stdnt.getId()+"'style='text-decoration:none;'>Edit</a></td>");
			printWriter.println("<td><a href='Delete?id="+stdnt.getId()+"' style='text-decoration:none;'>Delete</a></td>");
			printWriter.println("</tr>");
		}
		transaction.commit();
		session.close();
		printWriter.println("</table>");
		printWriter.println("</div>");
		printWriter.println("</body>");
		printWriter.println("</html>");
		printWriter.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
