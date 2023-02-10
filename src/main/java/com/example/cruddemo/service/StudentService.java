package com.example.cruddemo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.cruddemo.pojo.Student;
import com.example.cruddemo.repository.StudentRepo;

@Service
public class StudentService {

	@Autowired
	public StudentRepo studentRepo;
	
	public Student addstudent(Student gp) {
        return studentRepo.save(gp);
    }
	
	public List<Student> findAll() {
        return studentRepo.findAll();
    }
	
	public Optional<Student> findById(int id) {
        return studentRepo.findById(id);
    }
	
	public Student updateStud(int id, Student s1) {
        Student updatedstud = studentRepo.findById(id).orElse(null);
        updatedstud.setName(s1.getName());
        updatedstud.setGender(s1.getGender());
        updatedstud.setCity(s1.getCity());
        return studentRepo.save(updatedstud);
    }
	
	public String delete(int id) {
        studentRepo.deleteById(id);
        return "record deleted";
    }
}
