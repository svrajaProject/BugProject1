/**
 * 
 */
package com.eaglepressgroup.studenadmissions.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.eaglepressgroup.studenadmissions.DAO.StudentDAO;
import com.eaglepressgroup.studenadmissions.entity.Student;

/**
 * @author svraja
 *
 */
@Service
public class StudentServiceImpl implements StudentService{

	private StudentDAO studentDAO;
	
	public void setStudentDAO(StudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}
	
	@Override
	@Transactional
	public List<Student> getAll() {
		return studentDAO.fetchAll();
	}

	@Override
	public Student getById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public void save(Student student) {
		 this.studentDAO.add(student);
		 return;
	}

	@Override
	public void deleteById(long id) {
		// TODO Auto-generated method stub
		
	}

	
}