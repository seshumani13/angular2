package com.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import student.Student;
import student.StudentMapper;

public class StudentDAOImpl implements StudentDAO {
	private DataSource ds;
	JdbcTemplate temp;
	
	public void setTemplate(JdbcTemplate temp)
	{
		this.temp=temp;
	}
	 
	
	public void setDataSource(DataSource ds)
	 {
		 this.ds=ds;
		 this.temp=new JdbcTemplate(ds);
	 }
		 
	   
	  
	   public int create(Student student)
	   {
		   String SQL = "insert into student (id,name, age) values ("+student.getId()+",'"+student.getName()+"',"+student.getAge()+")";;
		     
		      System.out.println("Created Record Name = " + student.getName() + " Age = " + student.getAge()+"Id="+student.getId());
		      return temp.update(SQL);
		   
	   }


	public List<Student> listStudents() {
		
		String SQL="select * from student";
		List<Student> students=temp.query(SQL,new StudentMapper());
		return students;
	}


	
	public void delete(Integer Id) {
		String SQL="delete from student where id = ?";
		temp.update(SQL,Id);
		      System.out.println("Deleted Record with ID = " + Id );
		      return;
		
	}
	 public void update1(Student student){
	      String SQL = "update student set age = ? and name= ? where Id = ?";
	      System.out.println("updated record");
	      System.out.println("Updated Record with ID = " + student.getId());
	     // return temp.update(SQL);
	   }
	   
	   /*
	   
	   public Student getStudent(Integer id);
	  	   
	   public List<Student> listStudents()
	   {
		return list;
		   
	   }
	   
	}
*/
}
