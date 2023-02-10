package com.example.cruddemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.cruddemo.pojo.Student;
import com.example.cruddemo.service.StudentService;



@Controller
public class StudentController {

	@Autowired
	public StudentService studentService;
	
	@RequestMapping("/see")
	public String display(Model model)
	{
		model.addAttribute("command", new Student());
		return "done";
	}
	
	@PostMapping(value= "/insert")
	 public String insert(@ModelAttribute("addstud") Student add) {
		
		studentService.addstudent(add);
       
        return "redirect:/show";
    }
	
	@RequestMapping("/show")
    public String showstudent(Model model) {
        model.addAttribute("vi", studentService.findAll());
        
        return "show_stud";
	}
	
	@RequestMapping(value = "/update_stud/{id}")
    public String showstudpage(@PathVariable int id, Model model) {
        model.addAttribute("id", id);
        model.addAttribute("command", studentService.findById(id).orElse(null));
        return "updatestud";
    }
	
	@RequestMapping(value = "/update_data/{id}", method = RequestMethod.POST)
    public String updatestud(@PathVariable int id, @ModelAttribute("contact") Student sim) {
        studentService.updateStud(id, sim);
        return "redirect:/show";
    }
	
	@RequestMapping(value = "/delete_stud/{id}")
    public String deleteContact(@PathVariable int id) {
        studentService.delete(id);
        return "redirect:/show";
    }
}
