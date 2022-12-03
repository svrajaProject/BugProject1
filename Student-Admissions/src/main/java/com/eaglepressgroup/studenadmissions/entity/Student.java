/**
 * 
 */
package com.eaglepressgroup.studenadmissions.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author svraja
 *
 */
@Entity
@Table(name = "student")
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "student_id")
	private long student_id;
	@Column(name = "student_name")
	private String student_name;
	@Column(name = "student_roll_number")
	private String student_roll_number;
	@Column(name = "date_of_joining")
	private String date_of_joining;
	@Column(name = "fees_pain_status")
	private String fees_pain_status;
	/**
	 * 
	 */
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param student_name
	 * @param student_roll_number
	 * @param date_of_joining
	 * @param fees_pain_status
	 */
	public Student(String student_name, String student_roll_number, String date_of_joining, String fees_pain_status) {
		super();
		this.student_name = student_name;
		this.student_roll_number = student_roll_number;
		this.date_of_joining = date_of_joining;
		this.fees_pain_status = fees_pain_status;
	}
	/**
	 * @return the student_id
	 */
	public long getStudent_id() {
		return student_id;
	}
	/**
	 * @param student_id the student_id to set
	 */
	public void setStudent_id(long student_id) {
		this.student_id = student_id;
	}
	/**
	 * @return the student_name
	 */
	public String getStudent_name() {
		return student_name;
	}
	/**
	 * @param student_name the student_name to set
	 */
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	/**
	 * @return the student_roll_number
	 */
	public String getStudent_roll_number() {
		return student_roll_number;
	}
	/**
	 * @param student_roll_number the student_roll_number to set
	 */
	public void setStudent_roll_number(String student_roll_number) {
		this.student_roll_number = student_roll_number;
	}
	/**
	 * @return the date_of_joining
	 */
	public String getDate_of_joining() {
		return date_of_joining;
	}
	/**
	 * @param date_of_joining the date_of_joining to set
	 */
	public void setDate_of_joining(String date_of_joining) {
		this.date_of_joining = date_of_joining;
	}
	/**
	 * @return the fees_pain_status
	 */
	public String getFees_pain_status() {
		return fees_pain_status;
	}
	/**
	 * @param fees_pain_status the fees_pain_status to set
	 */
	public void setFees_pain_status(String fees_pain_status) {
		this.fees_pain_status = fees_pain_status;
	}
	@Override
	public String toString() {
		return "Student [student_id=" + student_id + ", student_name=" + student_name + ", student_roll_number="
				+ student_roll_number + ", date_of_joining=" + date_of_joining + ", fees_pain_status="
				+ fees_pain_status + "]";
	}
	
	
}
