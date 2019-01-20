package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.StudentDAOImpl;

import student.Student;

@Controller
public class StudentController {
	@Autowired
	StudentDAOImpl dao;

	@RequestMapping(value = "/student", method = RequestMethod.GET)
	
	public ModelAndView student() {
		return new ModelAndView("student", "command", new Student());
	}

	@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute("student") Student student,

			ModelMap model) {
		model.addAttribute("name", student.getName());
		model.addAttribute("age", student.getAge());
		model.addAttribute("id", student.getId());
		return "result";
	}

	@RequestMapping(value = "/create")
	public ModelAndView create(@ModelAttribute("student") Student student) {
		System.out.println("inside create method");
		dao.create(student);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/viewstudent")
	public ModelAndView viewstudent(@ModelAttribute("student") Student student) {
		System.out.println("inside view method");
		List<Student> list = dao.listStudents();
		System.out.println("list" + list);
		return new ModelAndView("viewuser", "list", list);

	}

	@RequestMapping(value = "/delete")
	public ModelAndView delete(@ModelAttribute("student") Student student) {
		System.out.println("deleted a record");
		dao.delete(student.getId());
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/edit")
	public ModelAndView edit(@ModelAttribute("student") Student student) {
		System.out.println("inside edit method");
		dao.update1(student);
		return new ModelAndView("redirect:/");
		// return new ModelAndView("viewuser","list",list);
	}

}
