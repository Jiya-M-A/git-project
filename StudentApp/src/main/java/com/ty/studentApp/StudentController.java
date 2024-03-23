package com.ty.studentApp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.ty.studentApp.dao.StudentAppDao;
import com.ty.studentApp.entity.Student;
@Controller
public class StudentController {

	StudentAppDao dao= new StudentAppDao();
	
	@RequestMapping("/")
	public String home(Model model) {
		List<Student> students = dao.getAllStudent();
		model.addAttribute("students", students);
		return "main";
	}
	
	@RequestMapping("/savestudent")
	public String addStudent(Model model) {
		model.addAttribute("title", "Add Student");
		return "saveStudent";
	}
	
	@RequestMapping(value = "/handle", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Student student, HttpServletRequest request) {
		System.out.println(student);
		dao.saveStudent(student);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	@RequestMapping("/delete/{studentId}")
	public RedirectView handleProduct(@PathVariable("studentId") int pid, HttpServletRequest request) {
		this.dao.deleteStudent(pid);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	@RequestMapping("update/{studentId}")
	public String updateStudent(@PathVariable("studentId") int id, Model model) {
		Student student = this.dao.getStudentById(id);
		model.addAttribute("students", student);  // key , value
		return "updateStudent";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public RedirectView updateStudent(@ModelAttribute Student student, HttpServletRequest request) {
		System.out.println(student);
		this.dao.updateStudent(student);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	
}
