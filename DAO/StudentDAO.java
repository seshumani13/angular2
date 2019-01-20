package com.DAO;


	import java.util.List;
	import javax.sql.DataSource;

import student.Student;

	public interface StudentDAO {
	  
	   public void setDataSource(DataSource ds);
	   public int create(Student student);
	   public List<Student> listStudents();
	   public void delete(Integer Id);
	   public void update1(Student student);
	   
	}



