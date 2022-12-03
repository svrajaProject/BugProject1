/**
 * 
 */
package com.eaglepressgroup.studenadmissions.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.eaglepressgroup.studenadmissions.entity.Student;
import com.mysql.cj.xdevapi.SessionFactory;

/**
 * @author svraja
 *
 */
@Repository
public class StudentDAOImpl implements StudentDAO{

	private Session session;
	private SessionFactory sessionFactory;
	
	public void SessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	@Override
	public List<Student> fetchAll() {
		Transaction tx = session.beginTransaction();
		List<Student> students = session.createQuery("from Student").list();
		tx.commit();
		return students;
	}

	@Override
	public Student fetchById(long id) {
		Transaction tx = session.beginTransaction();
		Student student = session.get(Student.class, id);
		tx.commit();
		return student;
	}

	@Override
	public void add(Student student) {
		Transaction tx = session.beginTransaction();
		session.save(student);
		tx.commit();
	}

	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		
	}

}
