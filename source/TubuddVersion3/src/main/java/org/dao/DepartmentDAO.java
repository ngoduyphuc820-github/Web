package org.dao;

import java.util.List;

import org.model.Department;

public interface DepartmentDAO {
	 public List<Department> listDepartment() ;
	  
	  public Integer getMaxDeptId();
	  
	  public void createDepartment(String name,String location);  
}
