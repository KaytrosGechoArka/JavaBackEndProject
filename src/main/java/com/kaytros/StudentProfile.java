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

@WebServlet("/StudentProfile")
public class StudentProfile extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    
    public StudentProfile() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter printWriter=response.getWriter();
		response.setContentType("text/html");
		
		String[]logInData=(String[])request.getSession().getAttribute("logInData");
		
		Configuration cnfg=new Configuration();
		cnfg.configure("hibernate.cfg.xml");
		
		Session session=cnfg.buildSessionFactory().openSession();
		Transaction transaction=session.beginTransaction();
		
		List<SensetiveData> sensetive=(List<SensetiveData>)session.createQuery("FROM SensetiveData").list();
		
		ListIterator<SensetiveData>li=sensetive.listIterator();
		while(li.hasNext()) {
			SensetiveData sda=(SensetiveData)li.next();
			if(sda.getEmail().equals(logInData[0])&& sda.getPassword().equals(logInData[1])) {
				request.getRequestDispatcher("loginSuccessful.jsp").include(request, response);
				break;
			}
		}
		transaction.commit();
		session.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
