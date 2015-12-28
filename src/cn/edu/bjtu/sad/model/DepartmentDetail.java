package cn.edu.bjtu.sad.model;

import java.util.ArrayList;


/**
 * DepartmentDetail class description
 * This Class is the class Entity mapping Doctor and Department Table.
 * Include all attributes and all get/set function.
 * @author sunshine
 */
public class DepartmentDetail {
	private Department department;
	private ArrayList<Doctor> doctorList;
	
	public DepartmentDetail(){
		department = new Department();
		doctorList = new ArrayList<Doctor>();
	}
	
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public ArrayList<Doctor> getDoctorList() {
		return doctorList;
	}
	public void setDoctorList(ArrayList<Doctor> doctorList) {
		this.doctorList = doctorList;
	}
	
}
