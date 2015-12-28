package cn.edu.bjtu.sad.facade;

import java.util.ArrayList;

import cn.edu.bjtu.sad.dao.imp.DepartmentDaoImp;
import cn.edu.bjtu.sad.dao.imp.DoctorDaoImp;
import cn.edu.bjtu.sad.model.Department;
import cn.edu.bjtu.sad.model.DepartmentDetail;
import cn.edu.bjtu.sad.model.Doctor;

public class RegisterInfoShow {
	private ArrayList<DepartmentDetail> info;

	public ArrayList<DepartmentDetail> getInfo() {
		info = new ArrayList<DepartmentDetail>();
		ArrayList<Department> departmentList = new DepartmentDaoImp().getDepartment();
		for(int i=0;i<departmentList.size();i++){
			DepartmentDetail detail = new DepartmentDetail();
			detail.setDepartment(departmentList.get(i));
			ArrayList<Doctor> doctorList = new DoctorDaoImp().
					getDoctorListByDepartment(departmentList.get(i).getDepartment_id());
			detail.setDoctorList(doctorList);
			info.add(detail);
		}
		return info;
	}
	
}
