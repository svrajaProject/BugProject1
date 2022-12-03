/**
 * 
 */
package com.eaglepressgroup.studenadmissions.DAO;

import java.util.List;

import com.eaglepressgroup.studenadmissions.entity.Student;

/**
 * @author svraja
 *
 */
public interface StudentDAO {

	public List<Student> fetchAll();

	public Student fetchById(long id);

	public void add(Student student);

	public void delete(long id);
}
