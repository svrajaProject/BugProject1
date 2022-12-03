/**
 * 
 */
package com.eaglepressgroup.studenadmissions.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eaglepressgroup.studenadmissions.entity.Student;
import com.eaglepressgroup.studenadmissions.services.StudentService;

/**
 * @author svraja
 *
 */
@Controller

public class StudentController {

	private StudentService studentService;
	
	@Autowired(required = true)
	@Qualifier(value="studentService")
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	
	@RequestMapping("/reg-form")
	public String regForm(Model model) {
		Student student = new Student();
		model.addAttribute("student", student);
		return "reg-form";
	}

}
