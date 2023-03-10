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

@WebServlet("/StudentRegistrationHandler")
public class StudentRegistrationHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StudentRegistrationHandler() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter printWriter=response.getWriter();
		response.setContentType("text/html");
		
		String email=request.getParameter("email");
		
		//Create Object Of Student Class
		Student student=new Student();
		
		//Setting Form Data To Student
		student.setFristName(request.getParameter("fname"));
		student.setLastName(request.getParameter("lname"));
		student.setSex(request.getParameter("sex"));
		student.setNationality(request.getParameter("nationality"));
		
		//Create Object Of SensetiveData Class
		SensetiveData sensetiveData=new SensetiveData();
		
		//Setting Form Data To Student
		sensetiveData.setEmail(request.getParameter("email"));
		sensetiveData.setPassword(request.getParameter("password"));
		
		
		//Configuration for hibernate file 
		Configuration cnfg=new Configuration();
		cnfg.configure("hibernate.cfg.xml");
		Session session=cnfg.buildSessionFactory().openSession();
		
		Transaction transaction=session.beginTransaction();
		
		boolean isAccountCreated=false;
		List<SensetiveData>listSensetiveData=(List<SensetiveData>)session.createQuery("FROM SensetiveData").list();
		for(SensetiveData sd:listSensetiveData) {
			System.out.println(sd.getEmail());
			System.out.println(sd.getPassword());
			if(sd.getEmail().equals(request.getParameter("email"))) {
				isAccountCreated=true;
				break;
			}
		}
		if(!isAccountCreated) {
			session.save(student);
			session.save(sensetiveData);
			transaction.commit();
			session.close();
			response.sendRedirect("studentRegistrationSuccessPage.jsp");
		}else {
			request.getSession().setAttribute("email",email);
			request.getRequestDispatcher("accountExisted.jsp").include(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
