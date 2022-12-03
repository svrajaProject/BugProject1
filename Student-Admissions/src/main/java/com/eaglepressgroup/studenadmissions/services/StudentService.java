/**
 * 
 */
package com.eaglepressgroup.studenadmissions.services;

import java.util.List;

import com.eaglepressgroup.studenadmissions.entity.Student;

/**
 * @author svraja
 *
 */
public interface StudentService {

	public List<Student> getAll();

	public Student getById(long id);

	public void save(Student student);

	public void deleteById(long id);
}
