package com.kaytros;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class DAO {
	
	static Session getSession(){
		Configuration cnfg=new Configuration();
		cnfg.configure("hibernate.cfg.xml");
		Session session=cnfg.buildSessionFactory().openSession();
		return session;
	}
	
	public static void update(int id,Student student) {
		// TODO Auto-generated method stub
		Session session= getSession();
		Transaction transaction=session.beginTransaction();

		Student studentFound=(Student)session.createQuery("FROM Student WHERE id="+id).getSingleResult();
		
		studentFound.setFristName(student.getFristName());
		studentFound.setLastName(student.getLastName());
		studentFound.setSex(student.getSex());
		studentFound.setNationality(student.getNationality());
		
		transaction.commit();
		session.close();
		
	}
	
	public static void oneToOneDelete(int id) {
		Session session= getSession();
		Transaction transaction=session.beginTransaction();
		
		Student student=session.get(Student.class,id);
		SensetiveData sensetiveData=session.get(SensetiveData.class,id);
		session.delete(student);
		session.delete(sensetiveData);
		
		transaction.commit();
		session.close();
	}
}
